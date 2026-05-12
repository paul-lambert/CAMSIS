

**************************************************

*** UKHLS data - using occupation-based data from an individual's most recent jobs and
*                               from an individual's household sharers 

** This file compiled by Paul Lambert, Univ. Stirling, 4/Apr/23 

**************************************************




******************************************************
** DESCRIPTOR

/*
This file can be used for deriving occupation-based measures from the UKHLS making use of current or last job 
     information and household sharer job information (waves 1-12). 

The current example defaults to using the 'nssec3_dv' measure, but that could be changed by changing the 
     variable that's named in line 82. 

The output is a data file that has a unique record per pidp-wave combination (by default, a file 
      called "mrj_nssec3_dv.dta"). To use the data, you then need to link it by pidp-year combination to 
      the dataset that you're working with (example code at end of file). 

My estimate is that 85% of all UKHLS person-year records can be assigned an occupation-based measure that's based 
     on either their own current or previous job, and 94% of all records can be assigned a measure that's based on 
      either their own current or previous job, or that of a current household sharer. 

I think those figures will provide adequate coverage for most purposes, although I think they are still a bit lower 
     than they ought to be with an optimal survey instrument (I think they ought really to get to more like 90% 
      and 98% respectively). I'm not certain but I suspect that that small difference is to do with the way that 
      UKHLS may not follow up the 'last job' question in subsequent years after a person has previously been a 
         proxy responses or other non-responses. 
*/


**************************************************


global path1a "C:\data\ukhls\us11223\" /* location of waves 1-12 standard licence study 6614 */
global path2a "C:\data\ukhls\resources\most_recent_jobs\" /* for derived files */
global path9 "c:\temp\"


***********************************************
*** Preliminary: Understanding the data coverage 
de *nssec* using "$path1a\a_indresp.dta" 
de *jl* *jb* *j1* using "$path1a\a_indresp.dta"
de *nssec* using "$path1a\l_indresp.dta" 
/* occupation-based measures are available in 'indresp' for current job, 2nd job, last job, first job, parents' jobs */
de *hrs* using "$path1a\a_indresp.dta" 
/* hours of work in job available in 'jbhrs' and 'jshrs' */
use  *jl* *jb* *j1* *nssec* using "$path1a\a_indresp.dta", clear
renpfix a_ 
numlabel _all, add
tab jlendy /* year of most recent job in wave A extends backwards */
tab jbnssec3_dv 
tab1 jlendy jlnssec3_dv if jbnssec3_dv ==-8 /* approx 3/4's of non-working in wave A have an mrj, approx 1/4 are missing */
tab1 j1nssec8_dv panssec8_dv manssec8_dv if jbnssec3_dv ==-8 & jlnssec3_dv==-8 
*  A tiny number have first job but not current or last job; many have pa or ma job but not current or last job 
use  *jl* *jb* using "$path1a\b_indresp.dta", clear
renpfix b_ 
numlabel _all, add
tab jlendy /* only modest numbers, but some extend many years backwards */
tab jbnssec3_dv 
tab1 jlendy jlnssec3_dv if jbnssec3_dv ==-8 /* only about 3% of those without a current job have a valid most recent job  */
* (Info: some of this data might in principle be filled in from bhps records)
*****
***********************************************





**********************************************
** Preliminary: declare which job-based variable is to be linked

global jobvar "nssec3_dv"   /* example if wanted to use the 3-category version of nssec  */

***********************************************







***********************************************
*** (i) Calculating a most recent job measure based only on INDRESP data


foreach wav in a b c d e f g h i j k l {
   use pidp `wav'_dvage `wav'_hidp   `wav'_jb${jobvar} `wav'_jl${jobvar}  `wav'_jbhrs `wav'_jshrs ///
           using "$path1a\`wav'_indresp.dta", clear
   renpfix `wav'_ 
   gen wave="`wav'"
   sav "$path9\m_`wav'.dta", replace 
   }

use "$path9\m_a.dta", clear
foreach wav in   b c d e f g h i j k l {
     append using "$path9\m_`wav'.dta"
   }
numlabel _all, add
tab wave
gsort +pidp +wave
list in 1/20 
tab jb${jobvar}, missing /* approx 55% of unweighted indresp records have an occ measure based on current job */

capture drop mrj${jobvar} 

clonevar mrj${jobvar} = jb${jobvar}   if jb${jobvar} >= 1 & ~missing(jb${jobvar}) 

tab mrj${jobvar} , missing /* distribution with no imputation (coverage about 55%) */

replace mrj${jobvar} = jl${jobvar}  if missing(mrj${jobvar})  & jl${jobvar} >= 1 & ~missing(jl${jobvar}) 
                       /* replace with current wave last job, if valid */
tab mrj${jobvar} , missing /* distribution using current wave current or last job if available (coverage about 59%) */

gsort +pidp +wave
forvalues val = 1(1)11  {
         replace mrj${jobvar} = jb${jobvar}[_n-`val'] if missing(mrj${jobvar}) ///
               &  ( jb${jobvar}[_n-`val'] >= 1 & ~missing(jb${jobvar}[_n-`val']) ) & pidp==pidp[_n-`val']
             /* first replace with lag current job if valid and for the same person */ 
         replace mrj${jobvar} = jl${jobvar}[_n-`val'] if missing(mrj${jobvar}) ///
               &  ( jl${jobvar}[_n-`val'] >= 1 & ~missing(jl${jobvar}[_n-`val']) ) & pidp==pidp[_n-`val']
             /* then replace with lag last  job if valid and for the same person */    
   }

label variable mrj${jobvar} "Most recent job measure - $jobvar - using current or last job" 

tab mrj${jobvar}, missing /* distribution using any wave current or last job if available (coverage about 85%) */


***************************************************




***************************************************

*** (ii) Deriving a household measure via 'dominance' principle 
*    (that the dominant job is the one with most hours, or in case of ties, that of the oldest person in the hhld in work) 

* Checking the hours of work data 
sum jbhrs jshrs
capture drop wk_hrs
gen wk_hrs = 0 
replace wk_hrs=wk_hrs + jbhrs if jbhrs > 0 & ~missing(jbhrs) 
replace wk_hrs=wk_hrs + jshrs if jshrs > 0 & ~missing(jshrs) 
sum wk_hrs 
*histogram wk_hrs

* Code to select one job per household, based on most hours of work (or oldest person in case of ties)
gsort +wave +hidp -wk_hrs +pidp 
list wave hidp pidp dvage jb${jobvar} jl${jobvar} mrj${jobvar} wk_hrs in 1/20
capture drop rankval
gen rankval = (~missing(mrj${jobvar}))*(wk_hrs+1) /* (tool to give weighting to occ data) */
list wave hidp pidp dvage jb${jobvar} jl${jobvar} mrj${jobvar} wk_hrs rankval in 1/20
gsort +wave +hidp -rankval +pidp 
list wave hidp pidp dvage jb${jobvar} jl${jobvar} mrj${jobvar} wk_hrs rankval in 1/20
* (at this point, cases are sorted within households by the job with the most hours) 
gsort +wave +hidp -rankval -dvage +pidp 
list wave hidp pidp dvage  mrj${jobvar} wk_hrs rankval in 1/60
* (in cases of ties, e.g. rows 57-58, cases are now sorted by age)
capture drop first
gen first=1
replace first=0 if hidp==hidp[_n-1] & wave==wave[_n-1]
list wave hidp pidp  mrj${jobvar} wk_hrs rankval first in 1/40
sav $path9\m1.dta, replace /* i.e. temp file selecting the hhld job per hhld/wave combination */
keep if first==1
keep wave hidp mrj${jobvar}
rename mrj${jobvar} hh${jobvar} 
summarize
sort wave hidp 
sav $path9\m2.dta, replace
use $path9\m1.dta, clear
sort wave hidp
merge m:1 wave hidp using $path9\m2.dta
tab _merge
keep if _merge==1 | _merge==3 
drop _merge

gsort +wave +hidp -rankval +pidp 
list wave hidp pidp  mrj${jobvar} hh${jobvar} wk_hrs rankval first in 1/40
* (i.e. hh inserts the 'dominant' job to all household members, regardless of own job) 

capture drop mrh${jobvar} 
clonevar mrh${jobvar} = mrj${jobvar}
replace mrh${jobvar} = hh${jobvar} if missing(mrj${jobvar}) 
* i.e. this measure uses own job if available, or hhld job if not 
label variable hh${jobvar} "Household level job measure - $jobvar - using dominance principle and current or last job" 
label variable mrh${jobvar} "Most recent job measure - $jobvar - with hhld measure imputed if missing" 

tab hh${jobvar}, missing /* 94% coverage at household level */
tab mrh${jobvar}, missing /* also 94% coverage at individual level, imputed with household if missing  */

*tab hh${jobvar} mrh${jobvar}, row V /* most cases are diagonal but some are different between the measures */

***************************************************








***************************************************

*** (iii) Storing as a wave-by-pidp long-format file with the relevant job measures 

summarize 
codebook pidp jb${jobvar} jl${jobvar} mrj${jobvar} mrh${jobvar} hh${jobvar}, compact

tab jb${jobvar}
recode jb${jobvar} -9=.m -8=.i -7=.p -2=.r -1=.d /* standard UKHLS missing value labels */
tab jl${jobvar}
recode jl${jobvar} -9=.m -8=.i -7=.p -2=.r -1=.d /* standard UKHLS missing value labels */

codebook pidp jb${jobvar} jl${jobvar} mrj${jobvar} mrh${jobvar} hh${jobvar}, compact

keep pidp wave jb${jobvar} jl${jobvar} mrj${jobvar} mrh${jobvar} hh${jobvar} 
order  pidp wave jb${jobvar} jl${jobvar} mrj${jobvar} mrh${jobvar} hh${jobvar}
sort pidp wave
isid pidp wave 

saveold "$path2a\mrj_${jobvar}.dta", replace


***************************************************
**********************************





/*
** Indicative example of using this file: linking it to individual level data from wave a

use pidp a_hidp a_dvage a_sex_dv a_jb${jobvar} a_jl${jobvar}   using "$path1a\a_indresp.dta", clear
summarize

gen wave="a" 
sort pidp wave 
merge 1:1 pidp wave using "$path2a\mrj_${jobvar}.dta" 

tab _merge
keep if _merge==1 | _merge==3
drop _merge

summarize
list in 1/10
* For example, 
*   in row 4 is a person without current or most recent job data in wave a, but who can have 
*       household-based measures imputed 
*   in row 6 is a person who can have a most recent job imputed, but has a different hhld job 
*/

*********************************************

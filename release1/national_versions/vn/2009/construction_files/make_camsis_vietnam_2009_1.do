

****  PAUL LAMBERT/DAVE GRIFFITHS, UNIV. STIRLING, 12 NOV 2012

*** Stata code for derivation of CAMSIS scale scores using data on pairs of socially connected occupations 
**    using correspondence analysis 
*** 

** ADAPTED TO VIETNAM OCCUPATIONAL DATA, CENSUS OF 2009, FROM IPUMS-I. 

** Notes below  on data input and format requirements; and programme arguments including local and global arguments. 


*************************************************************
*************************************************************
*************************************************************



**************************************************************
**** DATA INPUT AND FORMAT REQUIREMENTS

** [1] Input microdata (PATHC): a rectangular Stata format file featuring data on 
*          two socially connected occupations, variable names to be given as programme arguments 
*          (example: husbands occupation; wive's occupation). The data may be unweighted, or 
*          may have integer frequency weights in a named variable (which need be specified as a programme argument)
*         Up to three variables are saved from this file (the two occupation variables, and the frequency weight 
*          indicator if it exists. Any name can be used for these variables, except for 'cfreq' which is used 
*          in the programme 

** [2] Output file name (PATHD): the programme will create an output file with this name 
*      with occupations listed alongside the recommended scale scores 
*      (User notice: In most instances, don't expect the first run of the programme to generate useful 
*        scale scores, there will probably be a need for some iterative analysis identifying and excluding 
*        'pseudo-diagonal' occupational combinations)

** [3] Pseudo-diagonal indicator file (PATHB)
*      This is a file which lists pairs of occupational combinations to be treated as 'pseudo-diagonals'.
*      This file must be tab-delimited with four columns and column headers named respectively 
*      lower_1 upper_1 lower_2 upper_2 
*      The nature of this file and its preparation (for instance via MS Excel) is explained at 
*      www.camsis.stir.ac.uk/make_camsis 
*      If you have not specified any such pairs, it is still necessary to specify this file. A file with missing 
*      category codes can be used (the net effect being that no pairs are treated as pseudo-diagonals, 
*      an example is available at http://www.camsis.stir.ac.uk/make_camsis/templates/camsis_psds_blank.txt, so 
*      a sensible default is to specify: 
*        ' global pathb "http://www.camsis.stir.ac.uk/make_camsis/templates/camsis_psds_blank.txt" ' 
*

** [4] Occ codes with an expected correlate ('PATHA')
*       This is specific to the version - it comprises a dataset with the 
*        relevant codes plus a variable which has a positive correlation to the scales ('edattan' here)




** [5] OCC template file (PATHE) 
*      This is specific to the VE derivation macros. 
*      This is a database of every individual occ in the schemes used,  
*       linked with alternative occupational categories at lower levels of detail which can be reasonably 
*       used as approximating categories.  
*      For VE 2001 there are four templates corresponding to the four source datasets 


* 

** [6] Output microdata (PATHF): this will be generated by the programme, and will comprise a 
*          version of the input microdata, but now with additional information on the recoded occupational 
*          units on which the scale itself is derived (the natural units of the two occupational 
*          categories, say 'hocc' and 'wocc',  are recoded into new variables 'occ1s' and 'occ2s' which usually 
*          have some differences in coding due to sparse categories from the former being merged in the latter). 



**************************************************************
**** PATH REQUIREMENTS


**************************************************************
**************************************************************
**** PROGRAMME ARGUMENTS


********  1) Programme arguments: 

** (To be specified whilst calling the programme)

***  Five arguments are used, denoted in the programme below as:  occ1 occ2 score weight digit 


** The first argument is the name of the variable for the first occupation in the pair (e.g. 'hocc' for husband's occupation)

** The second is the name of the variable for the second occupation in the pair (e.g. 'wocc' for wife's occupation)

** The third is the 'stump' for the name of the new variable(s) with derived CAMSIS scale scores

** The fourth is the name or value of a frequency weight variable, if one exists
**    (specify as 1 otherwise; default equals 1 only if omitted and if 'digit' is also omitted)

** The fifth is a detail on the number of digits less than the full number of digits to be used to define 
**     diagonals (specify as 0 if unsure; common values are zero or 1; 
**                  can be omitted only if weight is given, in which case defaults to zero) 

** EXAMPLES:
 
** If the estimation program name was ca_mod1, the two occupation variables were socc and focc (son and fathers occ), 
**  we wanted to call the new variable 'usa_cam1', we had a micro-data file with no weighting, and we were using 
**  four digit US SOC 2000 units in which we treat all father-son combinations within the same three-digit subgroups 
**   as diagonals, we would call the programme as: 
******   ca_mod1 socc focc usa_cam1 1 1 

** If the estimation program name was ca_mod1, the two occupation variables were hjob and wjob (hubsbands and wifes occ), 
**  we wanted to call the new variable 'rom_cs', we had a micro-data file with frequency weights in the variable 'freq', 
**  and we were using four digit ISCO88 units in which we treat husband-wife combinations within the same occupation 
**  as diagonals, we would call the programme as: 
******   ca_mod1 hjob wjob rom_cs freq 0 










****** 3) Additional terms employed by the program

** The program also creates numerous specifically named new variables and data files within its estimation process,  
*   most of which need not be preserved. 




**  The additional global argument 'occtype' is used to denote a name for the occupational unit group to which the 
*  occupational scores are being derived, such as hisco, isco88, soc2000, etc. 
* (Cf http://www.geode.stir.ac.uk/ougs.html).
* EXAMPLE: For an analysis on US SOC 2000 OUGS, declare before analysis that 'global occtype "us_soc2000" ' 

** The additional global arguments 'occvar' and 'corvar' are used to name the occ code 
*   and the construct correlation variable named in 'patha' 

**************************************************************
**************************************************************









**************************************************************




**************************************************************

 

** COMMENTS ON PROGRAMME : 

* Opens data
* Recodes categories in response to sparse unit groups
* Includes first CA
* Excludes extreme residuals
* Re-runs CA, then evaluation of dim1 and dim2,  
* Standardises row and column scores in response to CA results 




** The following variables are generated within the analysis below; 
*   if variables with these names already exist on your data, they could be overwritten: 
* hiscv01 dimused half cfreq freq2 m1fit n_comb caresid psd2 rawsc1 rawsc2 corelv sign


**************************************************************
**************************************************************














**************************************************************
**************************************************************


**************************************************************
**** PROGRAMME SPECIFICATION


capture program drop cam1_ca

program define cam1_ca 

args occ1 occ2 score weight digit 


*******************************

** Prelim: use the occ baseline file 
use $patha, clear
rename $occvar tempnname
rename tempnname `occ1' /* two-stage rename is used in case the names are already shared */
sort `occ1' 
sav $path9\baseline_r.dta, replace

use $patha, clear
rename $occvar tempnname
rename tempnname `occ2' 
sort `occ2' 
sav $path9\baseline_c.dta, replace

**


*******************************

** Data construction (0): Generate fallback occupations for men and for women
* (the fall-backs are the most populous occupation in the group)
* (if education is included, meaning some occs have values 10000+occ, then recodes are done within educ categories)

* Men
use $pathc, clear
capture drop cfreq
gen cfreq=1
capture replace cfreq=`weight'
keep `occ1' cfreq 
gen occup1=floor(`occ1' /10000)
gen occup2=floor(`occ1' /1000)
gen occup3=floor(`occ1' /100)
gen occup4=floor(`occ1' /10)
gen semp=2 
replace semp=1 if (`occ1' >= 10000 )
tab semp /* 'semp', if used, is a higher level divisor, such as employment status; educational category; ethnicity; region */


* Find the most common occs within the 1,2,3,4 digit units, 
*   plus correcting for semp differences (which may not be relevant, unless we have samples split on semp)
* 0
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup1)
egen rprop=sum(cfreq), by(`occ1') 
replace rprop=rprop / rcount 
gsort +occup1 -rprop
capture drop tocc
gen tocc=`occ1'
replace tocc=0 if (occup1[_n-1]==occup1 )
egen mod1_m0=max(tocc), by(occup1)
* 1 
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup1 semp)
egen rprop=sum(cfreq), by(`occ1') 
replace rprop=rprop / rcount 
gsort +occup1 +semp -rprop
capture drop tocc
gen tocc=`occ1'
replace tocc=0 if (occup1[_n-1]==occup1 & semp[_n-1]==semp)
egen mod1_m=max(tocc), by(occup1 semp)
* 2 
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup2 semp)
egen rprop=sum(cfreq), by(`occ1') 
replace rprop=rprop / rcount 
gsort +occup2 +semp -rprop
capture drop tocc
gen tocc=`occ1'
replace tocc=0 if (occup2[_n-1]==occup2 & semp[_n-1]==semp)
egen mod2_m=max(tocc), by(occup2 semp)
* 3 
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup3 semp)
egen rprop=sum(cfreq), by(`occ1') 
replace rprop=rprop / rcount 
gsort +occup3 +semp -rprop
capture drop tocc
gen tocc=`occ1'
replace tocc=0 if (occup3[_n-1]==occup3 & semp[_n-1]==semp)
egen mod3_m=max(tocc), by(occup3 semp)
* 4 
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup4 semp)
egen rprop=sum(cfreq), by(`occ1') 
replace rprop=rprop / rcount 
gsort +occup4 +semp -rprop
capture drop tocc
gen tocc=`occ1'
replace tocc=0 if (occup4[_n-1]==occup4 & semp[_n-1]==semp)
egen mod4_m=max(tocc), by(occup4 semp)
* 
codebook `occ1' mod1_m0 mod1_m mod2_m mod3_m mod4_m , compact
keep `occ1' mod1_m0 mod1_m mod2_m mod3_m mod4_m 
sort `occ1'
egen tagi=tag(`occ1')
tab tagi
keep if tagi==1
drop tagi
summarize
sav $path9\males_recodes.dta, replace
* (This is a matrix with the original occ measure, and recodes at higher levels of aggregation)



* Women
use $pathc, clear
capture drop cfreq
gen cfreq=1
capture replace cfreq=`weight'
keep `occ2' cfreq 
gen occup1=floor(`occ2' /10000)
gen occup2=floor(`occ2' /1000)
gen occup3=floor(`occ2' /100)
gen occup4=floor(`occ2' /10)
gen semp=2 
replace semp=1 if (`occ2' >= 10000 )
tab semp 
* Find the most common occs within the 1,2,3,4 digit units, 
*   plus correcting for education (which is equal unless with educ split samples)

* 0
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup1)
egen rprop=sum(cfreq), by(`occ2') 
replace rprop=rprop / rcount 
gsort +occup1 -rprop
capture drop tocc
gen tocc=`occ2'
replace tocc=0 if (occup1[_n-1]==occup1)
egen mod1_f0=max(tocc), by(occup1)
* 1 
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup1 semp)
egen rprop=sum(cfreq), by(`occ2') 
replace rprop=rprop / rcount 
gsort +occup1 +semp -rprop
capture drop tocc
gen tocc=`occ2'
replace tocc=0 if (occup1[_n-1]==occup1 & semp[_n-1]==semp)
egen mod1_f=max(tocc), by(occup1 semp)
* 2 
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup2 semp)
egen rprop=sum(cfreq), by(`occ2') 
replace rprop=rprop / rcount 
gsort +occup2 +semp -rprop
capture drop tocc
gen tocc=`occ2'
replace tocc=0 if (occup2[_n-1]==occup2 & semp[_n-1]==semp)
egen mod2_f=max(tocc), by(occup2 semp)
* 3 
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup3 semp)
egen rprop=sum(cfreq), by(`occ2') 
replace rprop=rprop / rcount 
gsort +occup3 +semp -rprop
capture drop tocc
gen tocc=`occ2'
replace tocc=0 if (occup3[_n-1]==occup3 & semp[_n-1]==semp)
egen mod3_f=max(tocc), by(occup3 semp)
* 4 
capture drop rcount
capture drop rprop
egen rcount=sum(cfreq), by(occup4 semp)
egen rprop=sum(cfreq), by(`occ2') 
replace rprop=rprop / rcount 
gsort +occup4 +semp -rprop
capture drop tocc
gen tocc=`occ2'
replace tocc=0 if (occup4[_n-1]==occup4 & semp[_n-1]==semp)
egen mod4_f=max(tocc), by(occup4 semp)
* 
codebook `occ2' mod1_f0 mod1_f mod2_f mod3_f mod4_f , compact
keep `occ2' mod1_f0 mod1_f mod2_f mod3_f mod4_f 
sort `occ2'
egen tagi=tag(`occ2')
tab tagi
keep if tagi==1
drop tagi
summarize
sav $path9\females_recodes.dta, replace
* (This is a matrix with the original occ measure, and recodes at higher levels of aggregation)
*
dir $path9\*_recodes.dta 
**



*********************************************


** Data construction (i): convert microdata into 'table' format (has no further change if data is alread table format) 

use $pathc, clear
capture drop cfreq
gen cfreq=1
capture replace cfreq=`weight'
keep `occ1' `occ2' cfreq 
sort `occ1' `occ2' 
collapse (sum) cfreq, by(`occ1' `occ2')
summarize
sav $path9\temp1.dta, replace




*********************************************


** Data construction (ii): Exclude any diagonal pairs according to digit specifier 

use $path9\temp1.dta, clear
capture drop cs_dig
gen cs_dig=0
capture replace cs_dig=`digit'
tab cs_dig
capture drop cs_dig2
gen cs_dig2=10^cs_dig
capture drop cs_d_1
gen cs_d_1=floor(`occ1'/cs_dig2)
capture drop cs_d_2
gen cs_d_2=floor(`occ2'/cs_dig2)
capture drop psd1
gen psd1=(cs_d_1==cs_d_2)
tab psd1 [fw=cfreq]
sort `occ1' `occ2' 
sav $path9\temp2.dta, replace



*********************************************

** Data construction (iii): Exclude any diagonals according to specific combinations specified

** Exclude pseudo-diagonals
insheet using $pathb, clear
gen psd_n=_n
summarize
sav $path9\m1.dta, replace

use $path9\temp2.dta, clear
gen lower_1=`occ1'
gen upper_1=`occ1'
gen lower_2=`occ2'
gen upper_2=`occ2'
append using $path9\m1.dta
summarize

capture drop psd2
gen psd2=0
summarize psd_n
global psd_nm=r(max)
di $psd_nm
forvalues i =1(1)$psd_nm {
   capture scalar drop l1 l2 u1 u2
   quietly summarize lower_1 if psd_n==`i'
   scalar l1=r(mean)
   quietly summarize lower_2 if psd_n==`i'
   scalar l2=r(mean)
   quietly summarize upper_1 if psd_n==`i'
   scalar u1=r(mean)
   quietly summarize upper_2 if psd_n==`i'
   scalar u2=r(mean)
   replace psd2=1 if lower_1 >= l1 & upper_1 <= u1 & lower_2 >= l2 & upper_2 <= u2
    } 

drop if psd_n >= 1 & psd_n <= $psd_nm
* (Drops the first rows of the data, ie those with valid psd_n values, leaving microdata plus psd2 markers)

tab psd2 [fw=cfreq]
tab psd1 psd2 [fw=cfreq]

sav $path9\temp3.dta, replace




*********************************************


** Data construction (iv): Recode sparse categories after making exclusions, including any preset recodes if relevant 


use $path9\temp3.dta, clear
gen cfreq2=cfreq*(psd1==0 & psd2==0)




** Merges in the recode files for men and for women: 
sort `occ1'
merge `occ1' using $path9\males_recodes.dta
keep if _merge==1 | _merge==3
tab _merge
drop _merge
sort `occ2'
merge `occ2' using $path9\females_recodes.dta
keep if _merge==1 | _merge==3
tab _merge
drop _merge
**

** Runs any preset recodes


capture drop occ1s 
capture drop occ2s 
gen occ1s=`occ1'
gen occ2s=`occ2'
sum `occ1' `occ2' occ1s occ2s /* occ1s and occ2s are names for the recoded occupations on which file will run */

global occa "occ1s" 
global occb "occ2s" 

do $pathh /* invokes any manually imposed recodes */



** 4digit level recodes (only ordinarily acts to recode to higher level split groups (e.g. education)) 

sort occ1s
capture drop n_occ1
egen n_occ1=sum(cfreq2), by(occ1s)
sort occ2s
capture drop n_occ2
egen n_occ2=sum(cfreq2), by(occ2s)
replace occ1s=mod4_m if n_occ1 <= 30
replace occ2s=mod4_f if n_occ2 <= 30



** 3 digit level recodes if still needed 

sort occ1s
capture drop n_occ1
egen n_occ1=sum(cfreq2), by(occ1s)
sort occ2s
capture drop n_occ2
egen n_occ2=sum(cfreq2), by(occ2s)
replace occ1s=mod3_m if n_occ1 <= 30
replace occ2s=mod3_f if n_occ2 <= 30



** 2 digit level recodes if still needed 

sort occ1s
capture drop n_occ1
egen n_occ1=sum(cfreq2), by(occ1s)
sort occ2s
capture drop n_occ2
egen n_occ2=sum(cfreq2), by(occ2s)
replace occ1s=mod2_m if n_occ1 <= 30
replace occ2s=mod2_f if n_occ2 <= 30



** 1 digit level recodes if still needed 

sort occ1s
capture drop n_occ1
egen n_occ1=sum(cfreq2), by(occ1s)
sort occ2s
capture drop n_occ2
egen n_occ2=sum(cfreq2), by(occ2s)
replace occ1s=mod1_m if n_occ1 <= 30
replace occ2s=mod1_f if n_occ2 <= 30



** 1 digit level recodes on split factor if still needed 

sort occ1s
capture drop n_occ1
egen n_occ1=sum(cfreq2), by(occ1s)
sort occ2s
capture drop n_occ2
egen n_occ2=sum(cfreq2), by(occ2s)
replace occ1s=mod1_m0 if n_occ1 <= 30
replace occ2s=mod1_f0 if n_occ2 <= 30



capture log close
capture log using $path9\`score'_freqs1.txt, replace text
** The recoded occupational categories used in CA analysis, non-psd cases only
tab1 occ1s occ2s [fw=cfreq2]
capture log close


** 

** {Consideration: Whether to delete any newly recoded occupations which have been recoded into psd combinations?
*   On balance, probably not: the combinations should no longer be artificially induced}.  




sav $path9\temp4.dta, replace
keep if psd1==0 & psd2==0
summarize `occ1' occ1s `occ2' occ2s
summarize `occ1' [fw=cfreq]
scalar usedN = r(N)
di usedN
sav $path9\temp5.dta, replace


** Summary table file with original and recoded occupations, psd indicators, and frequency weights:
use $path9\temp4.dta, clear
summarize `occ1' occ1s `occ2' occ2s psd1 psd2 cfreq
keep `occ1' occ1s `occ2' occ2s psd1 psd2 cfreq
sav $pathf, replace




** Summary data on number of cases: 
use $path9\temp4.dta, clear
gen cases_1=1
collapse (sum) cases_1 [fw=cfreq], by(`occ1')
sort `occ1'
sav $path9\o1.dta, replace
use $path9\temp4.dta, clear
gen cases_2=1
collapse (sum) cases_2 [fw=cfreq], by(`occ2')
rename `occ2' `occ1'
sort `occ1'
sav $path9\o2.dta, replace







*********************




** Data construction (x): Expand data twofold in order to force rows and columns to be equal
***  [WON'T BE IMPLEMENTED IN HW COMBINATIONS HERE]  
use $path9\temp5.dta, clear
keep `occ1' occ1s `occ2' occ2s cfreq 
gen half=1
sav $path9\bit1.dta, replace
capture drop temp
rename `occ1'  temp
rename `occ2' `occ1' 
rename temp `occ2' 
rename occ1s  temp
rename occ2s occ1s 
rename temp occ2s 
recode half 1=2
sav $path9\bit2.dta, replace
use $path9\bit1.dta, clear
append using $path9\bit2.dta
tab half
gen freq2=floor( (cfreq+1) /2)
summarize
sav $path9\temp6.dta, replace
*** [NOT USED IN FINNISH DERIVATION]


*****************************************


use $path9\temp5.dta, clear /* use 'temp6.dta' from here if want equal scores */
keep `occ1' occ1s `occ2' occ2s cfreq 
gen freq2=cfreq


** First CA
capture log close
capture log using $path9\`score'_ca1.txt, replace text
table occ1s, c(sum freq2 min `occ1' max `occ1')
table occ2s, c(sum freq2 min `occ2' max `occ2')
ca occ1s occ2s  [fweight=freq2], dim(2)
capture log close


* 1 round of possible psds
*capture drop m1fit
*predict m1fit, fit 
*sort `occ1' `occ2' 
*capture drop n_comb
*egen n_comb=sum(freq2), by(`occ1' `occ2')
*regress n_comb m1fit [fweight=freq2]
*capture drop caresid
*predict caresid, rstandard
*capture drop psd2
*gen psd2=0
*replace psd2=1 if (caresid > 5 | caresid  < -5)
*tab psd2 [fweight=freq2]
** Second CA 
*ca `occ1' `occ2' [fweight=freq2] if psd2==0, dim(2) 



*** Extract scores associatd with occ1s and occ2s respectively
capture drop rawsc1
capture drop rawsc2
capture drop rawsc3
capture drop rawsc4
predict rawsc1, rowscore(1)
predict rawsc2, rowscore(2)
predict rawsc3, colscore(1)
predict rawsc4, colscore(2)
sav $path9\ca.dta, replace


****** occ1s: the scores for the rows (mens occupations)
use $path9\ca.dta, clear 
sort `occ1' 
merge `occ1'  using $path9\baseline_r.dta /* Contains: $corvar */
keep if _merge==1 | _merge==3
drop _merge
correlate rawsc1 rawsc2 rawsc3 rawsc4 occ1s $corvar
correlate rawsc1 $corvar
capture scalar drop c1
scalar c1=r(rho)
correlate rawsc2 $corvar
capture scalar drop c2
scalar c2=r(rho)
capture drop dimused
gen dimused=1
replace dimused=2 if ( (c2*c2)>(c1*c1) )
tab dimused
gen rawsc=rawsc1
replace rawsc=rawsc2 if (dimused==2)
gen rawsc_2=rawsc2
replace rawsc_2=rawsc1 if (dimused==2)
capture drop dimused
sav $path9\`score'_row.dta, replace
capture drop rawsc1
capture drop rawsc2 
* Tool to convert dimension score sign if necessary
correlate rawsc $corvar
capture scalar drop corel
scalar corel=r(rho)
gen corelv=-1*corel
gen sign=-1
replace sign=1 if corelv < 0
rename rawsc temp
gen rawsc=sign*temp
drop temp
correlate rawsc_2 $corvar
capture scalar drop corel2
scalar corel2=r(rho)
gen corelv2=-1*corel2
gen sign2=-1
replace sign2=1 if corelv2 < 0
rename rawsc_2 temp
gen rawsc_2=sign2*temp
drop temp
* Standardise scaled score to population level mean 50, sd 15:
summarize occ1s rawsc rawsc_2   
keep occ1s rawsc rawsc_2  
sort occ1s
collapse (mean) rawsc rawsc_2 , by(occ1s) 
summarize
sort occ1s
sav $path9\scores_a.dta, replace


****** occ2s: the scores for the columns (womens occupations)
use $path9\ca.dta, clear 
sort `occ2' 
merge `occ2'  using $path9\baseline_c.dta
keep if _merge==1 | _merge==3
drop _merge
correlate rawsc3 rawsc4 occ2s $corvar
correlate rawsc3 $corvar
capture scalar drop c1
scalar c1=r(rho)
correlate rawsc4 $corvar
capture scalar drop c2
scalar c2=r(rho)
capture drop dimused
gen dimused=1
replace dimused=2 if ( (c2*c2)>(c1*c1) )
tab dimused
gen rawsc=rawsc3
replace rawsc=rawsc4 if (dimused==2)
gen rawsc_2=rawsc4
replace rawsc_2=rawsc3 if (dimused==2)
capture drop dimused
sav $path9\`score'_col.dta, replace
capture drop rawsc3
capture drop rawsc4 
* Tool to convert dimension score sign if necessary
correlate rawsc $corvar
capture scalar drop corel
scalar corel=r(rho)
gen corelv=-1*corel
gen sign3=-1
replace sign3=1 if corelv < 0
rename rawsc temp
gen rawsc=sign3*temp
drop temp
correlate rawsc_2 $corvar
capture scalar drop corel2
scalar corel2=r(rho)
gen corelv2=-1*corel2
gen sign4=-1
replace sign4=1 if corelv2 < 0
rename rawsc_2 temp
gen rawsc_2=sign4*temp
drop temp
summarize occ2s rawsc rawsc_2   
keep occ2s rawsc rawsc_2  
sort occ2s
collapse (mean) rawsc rawsc_2 , by(occ2s) 
summarize
sort occ2s
sav $path9\scores_b.dta, replace



* Retrieve the full microdata including non-psds for purposes of scaling, and match
*   scale scores against it: 
* Standardise scaled score to population level mean 50, sd 15:

use $path9\temp4.dta, clear
summarize `occ1' occ1s `occ2' occ2s cfreq 
keep `occ1' occ1s  cfreq 
gen par=0
sort occ1s
merge occ1s using $path9\scores_a.dta
tab _merge
keep if _merge==1 | _merge==3
drop _merge
sav $path9\bit1.dta, replace

use $path9\temp4.dta, clear
summarize `occ1' occ1s `occ2' occ2s cfreq 
keep `occ2' occ2s  cfreq
gen par=1
sort occ2s
merge occ2s using $path9\scores_b.dta
tab _merge
keep if _merge==1 | _merge==3
drop _merge
rename occ2s occ1s
rename `occ2' `occ1'
sav $path9\bit2.dta, replace

use $path9\bit1.dta, clear
append using $path9\bit2.dta
tab par
summarize
sort occ1s
* At this stage, the two derivd variables are rawsc and rawsc2 for both men and women; for men 
* when par=0 and for women when par=1



* Calculate a zscore for the raw scores for the male and female total populations: 



summarize rawsc [fw=cfreq] if par==0 
gen zm1= (rawsc - r(mean)) / r(sd) 
summarize rawsc_2 [fw=cfreq] if par==0
gen zm2= (rawsc_2 - r(mean)) / r(sd)
summarize zm1 zm2 [fw=cfreq] if par==0 

summarize rawsc [fw=cfreq] if par==1 
gen zf1= (rawsc - r(mean)) / r(sd) 
summarize rawsc_2 [fw=cfreq] if par==1
gen zf2= (rawsc_2 - r(mean)) / r(sd)
summarize zf1 zf2 [fw=cfreq] if par==1 




* Re-scale the zscore to the CAMSIS standard range 
gen `score'm = (zm1*(15)) + 50 
replace `score'm = 99 if `score'm >= 99
replace `score'm = 1 if `score'm <= 1
gen `score'm2 = (zm2*(15)) + 50 
replace `score'm2 = 99 if `score'm2 >= 99
replace `score'm2 = 1 if `score'm2 <= 1

gen `score'f = (zf1*(15)) + 50 
replace `score'f = 99 if `score'f >= 99
replace `score'f = 1 if `score'f <= 1
gen `score'f2 = (zf2*(15)) + 50 
replace `score'f2 = 99 if `score'f2 >= 99
replace `score'f2 = 1 if `score'f2 <= 1

sav $path9\temp12.dta, replace

* Split this into a file for males and another for females: 
use $path9\temp12.dta, clear
keep if par==0
sav $path9\temp12m.dta, replace

use $path9\temp12.dta, clear
keep if par==1
sav $path9\temp12f.dta, replace


** Attribute scores plus proportions in occupations: 
use $path9\temp12m.dta, clear
sort occ1s
egen used_m=sum(cfreq), by(occ1s)
sort `occ1'
collapse (mean) `score'm (mean) `score'm2 (mean) used [fw=cfreq] , by(`occ1') 
list `occ1' `score'm `score'm2
sort `occ1'
sav $path9\bit1.dta, replace

use $path9\temp12f.dta, clear
sort occ1s
egen used_f=sum(cfreq), by(occ1s)
sort `occ1'
collapse (mean) `score'f (mean) `score'f2 (mean) used [fw=cfreq] , by(`occ1') 
list `occ1' `score'f `score'f2
sort `occ1'
sav $path9\bit2.dta, replace

use $path9\bit1.dta, clear
summarize
sort `occ1'
merge `occ1' using $path9\bit2.dta
tab _merge
* (keep all merge permutations) 
drop _merge


rename `occ1' tempnname /* two stage rename in case occ1 and occtype are the same */
rename tempnname $occtype
sort $occtype
label variable `score'm "Male CAMSIS for $occtype (`score'm)"
label variable `score'm2 "Dim 2 CAMSIS for $occtype (`score'm2)"
label variable `score'f "Female CAMSIS for $occtype (`score'f)"
label variable `score'f2 "Dim 2 female CAMSIS for $occtype (`score'f2)"

sav $path9\`score'_details.dta, replace
keep $occtype `score'm `score'm2 `score'f `score'f2
codebook, compact
summarize
gen orig=1
sort $occtype 
sav $path9\s1.dta, replace

*** These are the scores according to occupations represented in the data on their recoded forms 



***************************************



**  Next, distribute scores to all known occups, with the 'orig' indicator to show if occup was represented in 
*     version-specific derivation
* (The commands below will calculate group occup scores as weighted means, then link these with template data if necessary) 


* Get data on the original representation of occs in the samples, merged with the derived scores

use $path9\s1.dta, clear
keep $occtype  `score'm `score'm2
rename $occtype occ1s
sav $path9\m1.dta, replace
use `occ1' occ1s cfreq using $path9\temp4.dta, clear
sort `occ1' 
sav $path9\bit7a.dta, replace
use `occ1' using $pathc, clear
sort `occ1'
merge `occ1' using $path9\bit7a.dta
drop _merge
sort occ1s 
merge occ1s using $path9\m1.dta
drop _merge
summarize
rename `occ1' tempnname
rename tempnname $occtype /* In two stages in case occ1 and occtype are the same */
gen one=1
collapse (sum) mfreq=one (mean) `score'm `score'm2 , by($occtype)
sort $occtype
sav $path9\f1.dta, replace
* -> a dataset of all male occs from original analysis, with numbers per occ 

use $path9\s1.dta, clear
keep $occtype  `score'f `score'f2
rename $occtype occ2s
sav $path9\m1.dta, replace
use `occ2' occ2s cfreq using $path9\temp4.dta, clear
sort `occ2' 
sav $path9\bit7a.dta, replace
use `occ2' using $pathc, clear
sort `occ2'
merge `occ2' using $path9\bit7a.dta
drop _merge
sort occ2s 
merge occ2s using $path9\m1.dta
drop _merge
summarize
rename `occ2' $occtype
gen one=1
collapse (sum) ffreq=one (mean) `score'f `score'f2, by($occtype)
sort $occtype
sav $path9\f2.dta, replace
* -> a dataset of all female occs from original analysis, with numbers per occ 

********************************************


********************************************

* Link these with the unit group template file
use  $pathe, clear
capture clonevar $occtype=$temploccvar /* use capture in case they already have the same name */
sort $occtype
sav $path9\f3.dta, replace

* Merge the template file  with the scores files: 
use $path9\f3.dta, clear
sort $occtype 
merge $occtype using $path9\f1.dta, _merge(orig_m)
sort $occtype
merge $occtype using $path9\f2.dta, _merge(orig_f)
summarize

* Find subgroup averages for males and females based on the scores files only: 
capture drop occ3r
gen occ3r=floor($occtype/10)
capture drop occ2r
gen occ2r=floor($occtype/100)
capture drop occ1r
gen occ1r=floor($occtype/1000)
sav $path9\f5.dta, replace

use $path9\f5.dta, clear
collapse (mean) occ3rm=`score'm [fw=mfreq], by(occ3r)
summarize
sort occ3r 
sav $path9\f5ma.dta, replace
use $path9\f5.dta, clear
collapse (mean) occ2rm=`score'm [fw=mfreq], by(occ2r)
summarize
sort occ2r 
sav $path9\f5mb.dta, replace
use $path9\f5.dta, clear
collapse (mean) occ1rm=`score'm [fw=mfreq], by(occ1r)
summarize
sort occ1r 
sav $path9\f5mc.dta, replace


use $path9\f5.dta, clear
collapse (mean) occ3rf=`score'f [fw=ffreq], by(occ3r)
summarize
sort occ3r 
sav $path9\f5fa.dta, replace
use $path9\f5.dta, clear
collapse (mean) occ2rf=`score'f [fw=ffreq], by(occ2r)
summarize
sort occ2r 
sav $path9\f5fb.dta, replace
use $path9\f5.dta, clear
collapse (mean) occ1rf=`score'f [fw=ffreq], by(occ1r)
summarize
sort occ1r 
sav $path9\f5fc.dta, replace


use $path9\f5.dta, clear
sort occ3r 
merge occ3r using $path9\f5ma.dta
drop _merge
sort occ3r 
merge occ3r using $path9\f5fa.dta
drop _merge
sort occ2r 
merge occ2r using $path9\f5mb.dta
drop _merge
sort occ2r 
merge occ2r using $path9\f5fb.dta
drop _merge
sort occ1r
merge occ1r using $path9\f5mc.dta
drop _merge
sort occ1r 
merge occ1r using $path9\f5fc.dta
drop _merge

* We've now matched on subgroup averages conditional on employment status; there should be sufficient
*   to distribute to all groups 




summarize `score'm `score'm2  `score'f `score'f2  orig_m orig_f 
replace orig_m=0 if missing(orig_m)
replace orig_f=0 if missing(orig_f)
label variable orig_m "Occupation was represented in the original dataset (by males) "
label variable orig_f "Occupation was represented in the original dataset (by females) "

replace `score'm=occ3rm if missing(`score'm) 
replace `score'f=occ3rf if missing(`score'f) 
summarize `score'm `score'm2  `score'f `score'f2  orig_m orig_f 
replace `score'm=occ2rm if missing(`score'm) 
replace `score'f=occ2rf if missing(`score'f) 
summarize `score'm `score'm2  `score'f `score'f2  orig_m orig_f 
replace `score'm=occ1rm if missing(`score'm) 
replace `score'f=occ1rf if missing(`score'f) 
summarize `score'm `score'm2  `score'f `score'f2  orig_m orig_f 


keep $occtype `score'm `score'f `score'm2 `score'f2 orig_m orig_f
order $occtype `score'm `score'f `score'm2 `score'f2 orig_m orig_f
label variable $occtype "Occupational unit - $occtype"
label variable `score'm "Male CAMSIS score for $occtype" 
label variable `score'f "Female CAMSIS score for $occtype"
label variable `score'm2 "Dim 2 scale for males for $occtype" 
label variable `score'f2 "Dim 2 scale for females for $occtype" 
drop if missing($occtype)
* round the scores: 
foreach val in `score'm `score'f `score'm2 `score'f2 {
 replace `val' = (round(`val'*100))/100
 }

codebook, compact
summarize
sav $path9\scores_temp.dta, replace

*****************************************************************
*****************************************************************
*****************************************************************




** Basic output file: 
 
use $path9\scores_temp.dta, clear

keep $occtype `score'm `score'f
order $occtype `score'm `score'f
drop if missing($occtype)
sort $occtype
codebook, compact
summarize
saveold ${pathd}.dta, replace
outsheet using ${pathd}.dat, nolabel replace





******************************************************
** Output processing : Supplementary details to the main scales:  
*******************************
** Generate a 'details' score version of this file, featuring number of cases and standard error estimates: 


use $path9\scores_temp.dta, clear
keep $occtype `score'm `score'm2 
capture rename $occtype `occ1' /* use capture in case occ1 is already the same name as occtype */ 
sort `occ1'
sav $path9\m1.dta, replace /* To link dim1 and dim2 row score to person 1 */

use $path9\scores_temp.dta, clear
keep $occtype `score'f `score'f2
capture rename $occtype `occ2' 
sort `occ2'
sav $path9\m2.dta, replace /* To link dim1 and dim2 column score to person 2 */

**

* Reopens data which has microdata plus recoded occs, merges scores, saves and re-uses
use $pathf, clear
sort `occ1'
merge `occ1' using $path9\m1.dta
tab _merge
keep if _merge==1 | _merge==3
drop _merge
sort `occ2'
merge `occ2' using $path9\m2.dta
tab _merge
keep if _merge==1 | _merge==3
drop _merge
summarize [fw=cfreq]
********

sav $pathf, replace
sav $path9\temp12.dta, replace
********

* For se for person 1 occ scores (based on person 2 variance patterns, by occ unit actually used ): 
use $path9\temp12.dta, clear
sort occ1s
collapse (sd) sd_1=`score'f sd_2=`score'f2 (count) n_1=`score'f n_2=`score'f2 [fw=cfreq], by(occ1s)
sav $path9\m6.dta, replace
use $path9\temp12.dta, clear
sort occ1s
merge occ1s using $path9\m6.dta
drop _merge
gen `score'm_se = sd_1 / sqrt(n_1)
gen `score'm2_se = sd_2 / sqrt(n_2)
sav $path9\temp13.dta, replace

* For se for person 2 occ scores (based on person 1 variance patterns): 
use $path9\temp13.dta, clear
sort occ2s
collapse (sd) sd_3=`score'm sd_4=`score'm2 (count) n_3=`score'm n_4=`score'm2 [fw=cfreq], by(occ2s)
sav $path9\m7.dta, replace
use $path9\temp13.dta, clear
sort occ2s
merge occ2s using $path9\m7.dta
drop _merge
gen `score'f_se = sd_3 / sqrt(n_3)
gen `score'f2_se = sd_4 / sqrt(n_4)

sav $path9\m3.dta, replace
use $path9\m3.dta, clear
collapse (mean) `score'm_se `score'm2_se (sum) n_`score'm=n_1, by(`occ1')
summarize
capture rename `occ1' $occtype /* use capture in case occ1 and occtype are already the same name */
sort $occtype
sav $path9\m4.dta, replace
use $path9\m3.dta, clear
collapse (mean) `score'f_se `score'f2_se (sum) n_`score'f=n_3, by(`occ2')
summarize
capture rename `occ2' $occtype
sort $occtype
sav $path9\m5.dta, replace

use $path9\scores_temp.dta, clear
sort $occtype
merge $occtype using $path9\m4.dta
tab _merge
keep if _merge==1 | _merge==3
drop _merge
sort $occtype
merge $occtype using $path9\m5.dta
tab _merge
keep if _merge==1 | _merge==3
drop _merge
label variable `score'm_se "Standard error approx. for `score' for `occ1'  " 
label variable `score'm2_se "Standard error approx. for dim 2 `score' for `occ1' " 
label variable `score'f_se "Standard error approx. for `score' for `occ2' " 
label variable `score'f2_se "Standard error approx. for dim 2 `score' for `occ2' " 
* note that in the case of equal rows and columns, these scores should be equal 

sort $occtype 
codebook, compact
saveold ${pathd}_details.dta, replace


**** Summary of main derived files: 

di " "
di "Contents of:  ${pathd}.dta  "
describe using ${pathd}.dta

di " " 
di "Contents of: ${pathd}_details.dta  " 
describe using ${pathd}_details.dta

di " " 
di "Contents of: $pathf   "
describe using $pathf

end 


***********************************************************




***********************************************************




***********************************************************
***********************************************************

** EOF 

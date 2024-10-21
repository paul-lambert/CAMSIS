

****************************************************************
****************************************************************

*** CAMSIS scale derviation example


** CAMSIS: http://www.camsis.stir.ac.uk/
*  Scale construction in Stata: http://www.camsis.stir.ac.uk/make_camsis/
** Microdata from IPUMS: http://www.ipums.org/

*** Author of this note: Paul Lambert, Univ. Stirling, October 2009




****************************************************************
****************************************************************


**   ROMANIA - CA and Scores processing. 

* (Scale generated December 2008) 



*********************************

*********************************.

** Re-set paths for suitable local file definitions. 
** Comment: the command and data files located within the paths have also been posted at 
*    http://www.camsis.stir.ac.uk/make_camsis/romania_example/

global path1 "c:\camsis\countries\romania\2002\data\" 
global path1b "c:\camsis\countries\romania\2002\data\recodes\" 
global path1c "c:\camsis\countries\romania\2002\data\models\" 
global path1d "c:\camsis\countries\romania\2002\scores\" 
global path2 "C:\dames\geode\occinf\ougs\isco\template\"
global path9 "c:\temp\" 

global path9 "c:\temp\" 

do $path1\isco88_labels.do

****************************************



********************************************************************
********************************************************************
**** SECTION 1: CONSTRUCTING DATA INTO SUITABLE FORMAT FOR ANALYSIS
********************************************************************
********************************************************************






****************************************
** Opens and processes original IPUMS data: 
do $path1\pl_002_2.do

****************************************

numlabel _all, add
summarize


keep serial pernum sploc sex sex_sp age marst consens ///
   occ occ_sp empstatd empstat_spd classwkd 

summarize

tab sex sex_sp

mvdecode occ occ_sp, mv(9999)
summarize occ occ_sp
pwcorr occ occ_sp empstatd empstat_spd classwkd , obs 
* c450k husband-wife occupational combinations in dataset 

tab1 marst consens if (occ_sp >= 1 & occ_sp <= 9330)
* Data on spouses occs covers about 93% from married couples and 7% cohabiting. 

list pernum sploc occ occ_sp age sex sex_sp in 1/10

tab1 empstatd empstat_spd 
tab1 empstatd if (occ >= 1 & occ <= 9330)
tab1 empstat_spd if (occ_sp >= 1 & occ_sp <= 9330)
* Data on occupation if either working, or 'unemployed experienced worker' empst


* Restrict data to currently working only
keep if (occ >= 1 & occ <= 9330 & occ_sp >= 1 & occ_sp <= 9330 )
summarize 
tab sex

numlabel _all, add
sav $path9\m1.dta, replace


** Sort data into male-female within-household occupational combinations
use $path9\m1.dta, clear
keep if (sex==1) 
rename occ hocc
rename occ_sp wocc 
rename classwkd hempst 
gen wempst=0  
keep serial pernum sploc hocc wocc hempst wempst  
gen part=1
sav $path9\m2.dta, replace

use $path9\m1.dta, clear
keep if (sex==2) 
rename occ wocc
rename occ_sp hocc 
rename classwkd wempst 
gen hempst=0
keep serial pernum sploc hocc wocc hempst wempst  
gen part=2 
sav $path9\m3.dta, replace

use $path9\m2.dta, clear
append using $path9\m3.dta
summarize 

sav $path1\romania_camsis_source_1.dta, replace



**************************************
**************************************


** Eliminate h-w duplicate cases and match on suitable classwkd data: 

use $path1\romania_camsis_source_1.dta, clear
summarize
sort serial pernum sploc  
list in 1/10

gen cloc=pernum*100 + sploc 
replace cloc=pernum + sploc*100 if part==2
summarize cloc 

sort serial cloc part
list in 1/10

replace wempst = wempst[_n+1] if ///
    (wempst==0 & (serial==serial[_n+1]) & (cloc==cloc[_n+1]) )
replace hempst = hempst[_n-1] if ///
    (hempst==0 & (serial==serial[_n-1]) & (cloc==cloc[_n-1]) )


sort serial cloc part
list in 1/10

 
summarize if part==1
summarize if part==2


keep if part==1 


drop part cloc 
sav $path1\romania_camsis_source_2.dta, replace


************************





**************************************
**************************************

** Basic data and CA : 


**************************************
**************************************

use $path1\romania_camsis_source_2.dta, clear
summarize

gen hempst3=hempst 
gen wempst3=wempst
recode hempst3 110=1 120=2 130 200 310 400 =3 
recode wempst3 110=1 120=2 130 200 310 400 =3

gen hbst3=hocc*10+hempst3
gen wbst3=wocc*10+wempst3 

capture drop one 
gen one=1

gen h3gp=floor(hocc/10)
gen w3gp=floor(wocc/10)
gen h2gp=floor(hocc/100)
gen w2gp=floor(wocc/100)
gen h1gp=floor(hocc/1000)
gen w1gp=floor(wocc/1000)
summarize h*gp w*gp 

gen diag1=(hbst3==wbst3)
gen diag2=(hocc==wocc)
gen diag3=(h3gp==w3gp) 

gen farm=(h1gp==6 & w1gp==6)
gen psd1=(diag2==1 | farm==1)

tab1 diag1 diag2 diag3 psd1

label values hocc isco88 
label values wocc isco88


*capture log close
*log using $path1\tables_1.txt, replace text 
*table hocc hempst3 , c(sum one)
*table hocc hempst3 if psd1==0 , c(sum one)
*table wocc wempst3 , c(sum one)
*table wocc wempst3 if psd1==0 , c(sum one)
*capture log close 



*********.
* Some recoding algorithms for ISCO88 : 

gen hbst5=hbst3
gen wbst5=wbst3

global v1 "hbst5"
global v2 "wbst5" 

do $path1b\male_recodes_2.do
do $path1b\female_recodes_2.do

* recode psds - men : 
replace hbst5=13141 if h1gp==1 & psd1==1 
replace hbst5=21453 if h1gp==2 & psd1==1 
replace hbst5=31153 if h1gp==3 & psd1==1 
replace hbst5=41313 if h1gp==4 & psd1==1 
replace hbst5=52203 if h1gp==5 & psd1==1 
replace hbst5=61302 if h1gp==6 & psd1==1 
replace hbst5=71223 if h1gp==7 & psd1==1 
replace hbst5=83243 if h1gp==8 & psd1==1 
replace hbst5=93303 if h1gp==9 & psd1==1 

* recode psds - women : 
replace wbst5=13141 if w1gp==1 & psd1==1 
replace wbst5=23223 if w1gp==2 & psd1==1 
replace wbst5=33103 if w1gp==3 & psd1==1 
replace wbst5=41313 if w1gp==4 & psd1==1 
replace wbst5=51323 if w1gp==5 & psd1==1 
replace wbst5=61303 if w1gp==6 & psd1==1 
replace wbst5=74333 if w1gp==7 & psd1==1 
replace wbst5=82863 if w1gp==8 & psd1==1 
replace wbst5=91323 if w1gp==9 & psd1==1 



summarize hbst3 hbst5 wbst3 wbst5 
capture drop two
gen two =(psd1==0)
capture drop nhc1
egen nhc1=sum(two), by(hbst5)
capture drop nwc1
egen nwc1=sum(two), by(wbst5)
summarize nhc1 nwc1 
summarize nhc1 nwc1 if psd1==0




**************************************
gen hocc5=floor(hbst5/10)
gen wocc5=floor(wbst5/10)
gen hempst5=hbst5 - (10*hocc5)
gen wempst5=wbst5 - (10*wocc5)


summarize hocc wocc hempst3 wempst3 hbst3 wbst3 ///
      hbst5 hocc5 hempst5 wbst5 wocc5 wempst5 psd1 


sav $path1\romania_camsis_source_3.dta, replace


****************************************************
*********.

** CONSTRUCT ANALYTICAL DATA FILES (Converting into table format file): 


****************************************************

use $path1\romania_camsis_source_3.dta, clear
keep if psd1==0
summarize hbst5 wbst5 
capture drop freq
gen freq=1
collapse (sum) freq, by(hbst5 wbst5)
summarize
sav $path1c\carev1.dta, replace

**************************************.
****************************************************
****************************************************







**********************************
****************************************
****************************************










********************************************************************
********************************************************************
**** SECTION 2: UNDERTAKING CORRESPONDENCE ANALYSIS AND EXPLORING DERIVED SCALE
********************************************************************
********************************************************************


***** SPECIFY CA PROGRAMME: 
*** CA PROGRAM: ROW AND COLUMNS UNEQUAL; SAVING BOTH as hsc and wsc 
* (runs on two occ variables called 'cocc' and 'pocc'
*   will generate new variables - so runs best on newly opened data)
**

capture program drop camods5
program define camods5 
ca cocc pocc [fweight=freq], dim(2)
* 1 round of possible psds
predict m1fit, fit 
sort cocc pocc
egen n_comb=sum(freq), by(cocc pocc)
regress n_comb m1fit [fweight=freq]
capture drop caresid
predict caresid, rstandard
capture drop psd2
gen psd2=0
replace psd2=1 if (caresid > 5 | caresid  < -5)
tab psd2 [fweight=freq]
ca cocc pocc [fweight=freq] if psd2==0, dim(2) 
* Choose the best dimension 
* Husbands job: 
predict rawsc1, rowscore(1)
predict rawsc2, rowscore(2)
correlate rawsc1 rawsc2 cocc
correlate rawsc1 cocc
capture scalar drop c1
scalar c1=r(rho)
correlate rawsc2 cocc
capture scalar drop c2
scalar c2=r(rho)
gen dimused=1
replace dimused=2 if ( (c2 < c1) & ((c2*c2)>(c1*c1)) )
tab dimused
gen hsc=rawsc1
replace hsc=rawsc2 if (dimused==2)
capture drop dimused
capture drop rawsc1
capture drop rawsc2 
* Wifes job: 
predict rawsc1, colscore(1)
predict rawsc2, colscore(2)
correlate rawsc1 rawsc2 pocc
correlate rawsc1 pocc
capture scalar drop c1
scalar c1=r(rho)
correlate rawsc2 pocc
capture scalar drop c2
scalar c2=r(rho)
gen dimused=1
replace dimused=2 if ( (c2 < c1) & ((c2*c2)>(c1*c1)) )
tab dimused
gen wsc=rawsc1
replace wsc=rawsc2 if (dimused==2)
capture drop dimused
capture drop rawsc1
capture drop rawsc2 
correlate hsc cocc wsc pocc
end 

************************************************
******************************************
************************************************


** {Using microdata produced in section 1, which drops farming, and diagonal iscos, only, 
**     as well as recoding sparse iscos}

use $path1c\carev1.dta, clear
summarize
summarize hbst5 wbst5 


capture drop cocc
capture drop pocc
gen cocc=hbst
gen pocc=wbst 

set matsize 500 
camods5 

summarize hsc wsc 


table hbst, c(mean hsc sum freq n hsc sd hsc)

table wbst, c(mean wsc sum freq n wsc sd wsc)

** !!Done?? 

*********************************************


** Save and standardise: 

summarize hsc wsc 
sav $path9\m1.dta, replace


use $path9\m1.dta, clear
sort hbst5 
collapse (mean) hsc, by(hbst5)
sav $path9\h1.dta, replace

use $path9\m1.dta, clear
sort wbst5 
collapse (mean) wsc, by(wbst5)
sav $path9\w1.dta, replace

******************************************


use $path1\romania_camsis_source_3.dta, clear
sort hbst5 
merge hbst5 using $path9\h1.dta
tab _merge
drop _merge
sort wbst5 
merge wbst5 using $path9\w1.dta
tab _merge
drop _merge

summarize


label values hocc isco88 
label values wocc isco88

* Standardise within  married non-psd couples 
*  {for final version we'll standardise on entire Romanian population} 

summarize hsc if psd1==0
capture scalar drop t1
scalar t1=r(mean)
capture scalar drop t2
scalar t2=r(sd)
capture drop hsc_s
gen hsc_s = (((hsc - t1)/t2)*15) + 50
summarize hsc_s 
*
summarize wsc if psd1==0
capture scalar drop t1
scalar t1=r(mean)
capture scalar drop t2
scalar t2=r(sd)
capture drop wsc_s
gen wsc_s = (((wsc - t1)/t2)*15) + 50
summarize wsc_s 





capture log close
log using $path1c\carev1_1.txt, replace text 
** ROMANIA 2002, CAREV1 SCORES 1 
summarize hsc_s wsc_s
pwcorr hsc_s hocc wsc_s wocc, obs 
pwcorr hsc_s hocc wsc_s wocc if psd==0, obs 
table hocc hempst3 , c(mean hsc_s) format(%6.2f)
table hocc hempst3 if psd1==0 , c(mean hsc_s) format(%6.2f)
table wocc wempst3 , c(mean wsc_s) format(%6.2f)
table wocc wempst3 if psd1==0 , c(mean wsc_s) format(%6.2f)
capture log close 




** Comment - this is pretty good - but concern is that there may be other 
*   factors which determine social interactions which aren't accounted for
*   in this model - e.g. conflation with gender segregation?
*   ?Might still need to use lem to fit gender segregation dimension? 


** Validation: check against some other scale scores also: 


sav $path9\temp1.dta, replace

use "http://www.camsis.stir.ac.uk/downloads/data/other/isco88_isei.dta", clear
summarize
rename isco hocc
rename isei hisei 
sort hocc
sav $path9\m1.dta, replace
rename hocc wocc
rename hisei wisei
sort wocc 
sav $path9\m2.dta, replace


use "http://www.camsis.stir.ac.uk/downloads/data/gb91isco88.dta", clear
summarize
keep if ukempst==0 
rename isco88 hocc
rename mcamsis hmcam 
rename fcamsis hfcam 
rename trei htrei 
rename isei h2isei 
keep hocc hmcam hfcam htrei h2isei 
sort hocc
sav $path9\m3.dta, replace 
rename hocc wocc
rename hmcam wmcam
rename hfcam wfcam 
rename htrei wtrei
rename h2isei w2isei
sort wocc
sav $path9\m4.dta, replace 


use $path9\temp1.dta, clear
sort hocc
merge hocc using $path9\m1.dta
tab _merge
keep if _merge==1 | _merge==3 
drop _merge
sort hocc
merge hocc using $path9\m3.dta
tab _merge
keep if _merge==1 | _merge==3 
drop _merge

sort wocc
merge wocc using $path9\m2.dta
tab _merge
keep if _merge==1 | _merge==3 
drop _merge
sort wocc
merge wocc using $path9\m4.dta
tab _merge
keep if _merge==1 | _merge==3 
drop _merge

summarize 

**

pwcorr hsc_s wsc_s hisei wisei h2isei w2isei htrei wtrei hmcam wmcam hfcam wfcam  if psd==0, obs
pwcorr hsc_s hisei h2isei htrei hmcam hfcam if psd==0, obs
pwcorr wsc_s wisei w2isei wtrei wmcam wfcam  if psd==0, obs

* These correlations seem quite healthy 

histogram hsc_s 
graph save bit1, replace
histogram wsc_s 
graph save bit2, replace

capture drop h1gpb
gen h1gpb = h1gp + 0.4
*graph twoway (bar hsc_s h1gp) (bar hisei h1gpb) 
graph bar (mean) hsc_s hisei, over(h1gp)
graph save bit3, replace

graph twoway (scatter hsc_s wsc_s) if hocc==wocc & hempst==wempst  
graph save bit4, replace

graph combine bit1.gph bit2.gph bit3.gph bit4.gph 


* The only apparent weakness is the lack of variation at the lower end of the scale - there 
*  tends to be trunctation below about 35 - not much differentiation at lower ends of scale? 
* Could this be genuine for Romania? 


*****************************************


** Overall -  these scales seem fine - use them. 





******************************************************************
******************************************************************


****************************.
** Reformat and re-standardise using whole population : 


** 1)  Link from operational hocc to hocc



use $path1\romania_camsis_source_3.dta, clear
summarize hbst3 hbst5 wbst3 wbst5 
* {h/w}bst5 are the categories on which scales were derived 
* {h/w}bst3 are the original categories for each occupation
* some diagonal hbst3's are coded into default hbst5s
* -> if hbst3 exists in hbst5 then merge on it 
* -> if hbst3 doesn't fit in hbst5, then use hbst5 

** Generate an hbst3 to hbst5 linkage and a wbst3 to wbst5 linkage which prioritises non-diagonals
use hbst3 hbst5 psd1 using $path1\romania_camsis_source_3.dta, clear
gsort +hbst3 +psd1 
collapse (first) hbst5, by(hbst3)
sort hbst3 
summarize
sort hbst5
sav $path9\h35.dta, replace
merge hbst5 using $path9\h1.dta, _merge(males)
tab males
drop males
summarize
sort hbst3
sav $path1\hscores1.dta, replace


use wbst3 wbst5 psd1 using $path1\romania_camsis_source_3.dta, clear
gsort +wbst3 +psd1 
collapse (first) wbst5, by(wbst3)
sort wbst3 
summarize
sort wbst5
sav $path9\w35.dta, replace
merge wbst5 using $path9\w1.dta, _merge(females)
tab females
drop females
summarize
sort wbst3
sav $path1\wscores1.dta, replace



*********
* Use the wscores files to link in with original data: 

*use $path1\romania_camsis_source_3.dta, clear
*tab psd
* 221k couples
*use $path1\romania_camsis_source_1.dta, clear
*summarize
* 444k individuals with h and w jobs 



************* Original micro-data for whole population : 
do $path1\pl_002_2.do

keep serial pernum sex age marst occ classwkd ///
    ethnro relig edattan edattand 

numlabel _all, add
summarize

keep if (occ >= 1 & occ <= 9330 )
summarize 
tab sex

gen hempst3=classwkd 
gen wempst3=classwkd
recode hempst3 110=1 120=2 130 200 310 400 =3 
recode wempst3 110=1 120=2 130 200 310 400 =3

gen hbst3=occ*10+hempst3
gen wbst3=occ*10+wempst3 

summarize 
sav $path9\temp1.dta, replace

** Merge derived CAMSIS scale and other occ scales 

use "http://www.camsis.stir.ac.uk/downloads/data/other/isco88_isei.dta", clear
summarize
rename isco occ
sort occ
sav $path9\m5.dta, replace

use "http://www.camsis.stir.ac.uk/downloads/data/gb91isco88.dta", clear
summarize
keep if ukempst==0 
rename isco88 occ
rename mcamsis gbmcam 
rename fcamsis gbfcam 
rename isei isei2 
keep occ gbmcam gbfcam trei isei2 
sort occ
sav $path9\m6.dta, replace 



use $path9\temp1.dta, clear
sort hbst3
merge hbst3 using $path1\hscores1.dta
tab _merge
drop _merge
sort wbst3
merge wbst3 using $path1\wscores1.dta
tab _merge
drop _merge
sort occ
merge occ using $path9\m5.dta
tab _merge
keep if _merge==1 | _merge==3
drop _merge
sort occ
merge occ using $path9\m6.dta
tab _merge
keep if _merge==1 | _merge==3
drop _merge

summarize

** Standardise for men and for women 
tab sex

summarize hsc if sex==1
capture scalar drop t1
scalar t1=r(mean)
capture scalar drop t2
scalar t2=r(sd)
capture drop hsc_s
gen hsc_s = (((hsc - t1)/t2)*15) + 50
replace hsc_s = 99 if hsc_s >= 99 & hsc_s <= 200
replace hsc_s = 1 if hsc_s <= 1 & hsc_s >= -200 
summarize hsc_s 
*
summarize wsc if sex==2
capture scalar drop t1
scalar t1=r(mean)
capture scalar drop t2
scalar t2=r(sd)
capture drop wsc_s
gen wsc_s = (((wsc - t1)/t2)*15) + 50
replace wsc_s = 99 if wsc_s >= 99 & wsc_s <= 200
replace wsc_s = 1 if wsc_s <= 1 & wsc_s >= -200 
summarize wsc_s 

sav $path1\micro_with_scores_1.dta, replace





** ANALYTICAL FILE

use $path1\micro_with_scores_1.dta, clear
do $path1\isco88_labels.do
label values occ isco88

pwcorr hsc_s wsc_s isei isei2 trei gbmcam gbfcam , obs
bysort sex: pwcorr hsc_s wsc_s isei isei2 trei gbmcam gbfcam , obs


histogram hsc_s if sex==1
graph save bit1, replace
histogram wsc_s if sex==2
graph save bit2, replace

capture drop o1gp
gen o1gp = floor(occ/1000)
capture drop o1gpb
gen o1gpb = o1gp + 0.3
capture drop o1gpc
gen o1gpc = o1gp + 0.6

capture drop hsc_s1
capture drop wsc_s1
gen hsc_s1 = hsc_s if sex==1
gen wsc_s1 = wsc_s if sex==2

*graph twoway (bar hsc_s1 o1gp) (bar isei o1gpb) (bar wsc_s1 o1gpc) 
graph bar (mean) hsc_s1 isei wsc_s1, over(o1gp)
graph save bit3, replace

graph twoway (scatter hsc_s1 isei) 
graph save bit4, replace

graph combine bit1.gph bit2.gph bit3.gph bit4.gph 
graph export $path1c\graph_score_1.emf, as(emf) replace



capture log close
log using $path1c\construct_valid_1.txt, replace text


summarize hsc_s hsc_s1 wsc_s wsc_s1 isei 

table occ hempst3, c(mean hsc_s1 mean wsc_s1 mean isei) format(%5.2f)

mvdecode edattand, mv(999) 
tab edattand 

xi:regress hsc_s i.edattand if sex==1 
est store m1
xi:regress wsc_s i.edattand if sex==2 
est store m2 
xi:regress isei i.edattand if sex==1 
est store m3
xi:regress isei i.edattand if sex==2 
est store m4 
xi:regress gbmcam i.edattand if sex==1 
est store m5
xi:regress gbfcam i.edattand if sex==2 
est store m6 

est table m1 m2 m3 m4 m5 m6, b(%6.3f) stats(N r2_a bic)

* These give positive results - CS has a higher correl. to education than does isei 

summarize age
capture drop age2
gen age2=age^2
tab relig 
tab ethnro 
capture drop eth2
gen eth2=ethnro
recode eth2 23 25 26 27 29 30 31 33 38/99 = 70

xi:regress hsc_s i.edattand i.eth2 age age2 if sex==1 
est store m1b
xi:regress wsc_s i.edattand i.eth2 age age2 if sex==2 
est store m2b 
xi:regress isei i.edattand i.eth2 age age2 if sex==1 
est store m3b
xi:regress isei i.edattand i.eth2 age age2 if sex==2 
est store m4b 
xi:regress gbmcam i.edattand i.eth2 age age2 if sex==1 
est store m5b
xi:regress gbfcam i.edattand i.eth2 age age2 if sex==2 
est store m6b 

est table m1b m2b m3b m4b m5b m6b, b(%7.3f) stats(N r2_a bic)

capture log close 




*********************************************************************








********************************************************************
********************************************************************
**** SECTION 3: PROCESSING SCORES AND RELEASING FILE DETAILS 
********************************************************************
********************************************************************



** Romania 2002: Scores processing and release
** 21 Dec 2008 . 

**************************************




do $path1\isco88_labels.do


capture log close
log using $path1d\scores_generate1.txt, replace text 

****************************************
 
** Romania 2002: Scores processing and release
** 21 Dec 2008 . 

*** Micro-data with standardised scores at occbst level:. 


use $path1\micro_with_scores_1.dta, clear
do $path1\isco88_labels.do
label values occ isco88
table occ hempst3, c(mean hsc_s mean wsc_s mean isei) format(%5.2f)

summarize occ if hempst3==1
tab hempst3 classwkd
tab classwkd
* Note: empst3=1 is only represented in isco88 major group 1. 

gen mcamsis=hsc_s if sex==1
gen fcamsis=wsc_s if sex==2 
gen empst3=hempst3 
sav $path9\temp1.dta, replace


** Generate suitable scale scores: 

* 4 digit
use $path9\temp1.dta, clear
gen isco88=occ
collapse (mean) mcamsis fcamsis, by(isco88 empst3)
summarize
sav $path9\4dig_os.dta, replace
use $path9\temp1.dta, clear
gen isco88=occ
drop empst3
gen empst3=0
collapse (mean) mcamsis fcamsis, by(isco88 empst3)
summarize
sav $path9\4dig_o.dta, replace
*
use $path9\4dig_os.dta, clear
append using $path9\4dig_o.dta
summarize
sort isco88 empst3
sav $path9\4dig_.dta, replace

* 3 digit
use $path9\temp1.dta, clear
gen isco88=floor(occ/10)
collapse (mean) mcamsis fcamsis, by(isco88 empst3)
summarize
sav $path9\3dig_os.dta, replace
use $path9\temp1.dta, clear
gen isco88=floor(occ/10)
drop empst3
gen empst3=0
collapse (mean) mcamsis fcamsis, by(isco88 empst3)
summarize
sav $path9\3dig_o.dta, replace
*
use $path9\3dig_os.dta, clear
append using $path9\3dig_o.dta
summarize
sort isco88 empst3
rename mcamsis m3cam 
rename fcamsis f3cam 
sav $path9\3dig_.dta, replace
rename isco88 o3gp
rename m3cam m3cam2 
rename f3cam f3cam2 
sort o3gp empst
sav $path9\3dig_2.dta, replace


* 2 digit
use $path9\temp1.dta, clear
gen isco88=floor(occ/100)
collapse (mean) mcamsis fcamsis, by(isco88 empst3)
summarize
sav $path9\2dig_os.dta, replace
use $path9\temp1.dta, clear
gen isco88=floor(occ/100)
drop empst3
gen empst3=0
collapse (mean) mcamsis fcamsis, by(isco88 empst3)
summarize
sav $path9\2dig_o.dta, replace
*
use $path9\2dig_os.dta, clear
append using $path9\2dig_o.dta
summarize
sort isco88 empst3
rename mcamsis m2cam 
rename fcamsis f2cam 
sav $path9\2dig_.dta, replace
rename isco88 o2gp
rename m2cam m2cam2 
rename f2cam f2cam2 
sort o2gp empst
sav $path9\2dig_2.dta, replace


* 1 digit
use $path9\temp1.dta, clear
gen isco88=floor(occ/1000)
collapse (mean) mcamsis fcamsis, by(isco88 empst3)
summarize
sav $path9\1dig_os.dta, replace
use $path9\temp1.dta, clear
gen isco88=floor(occ/1000)
drop empst3
gen empst3=0
collapse (mean) mcamsis fcamsis, by(isco88 empst3)
summarize
sav $path9\1dig_o.dta, replace
*
use $path9\1dig_os.dta, clear
append using $path9\1dig_o.dta
summarize
sort isco88 empst3
rename mcamsis m1cam 
rename fcamsis f1cam 
sav $path9\1dig_.dta, replace
rename isco88 o1gp
rename m1cam m1cam2 
rename f1cam f1cam2 
sort o1gp empst
sav $path9\1dig_2.dta, replace

dir $path9\*dig_*.dta

****************************.




****************************.
** ISCO88 template file:. 
insheet using $path2\isco88templateoccs4.dat, clear
summarize
* This has 1, 2, 3 and 4 digit 
gen empst3=0
sort isco88 empst3 
sav $path9\m0.dta, replace
recode empst3 0 = 1
sort isco88 empst3 
sav $path9\m1.dta, replace
recode empst3 1 = 2
sort isco88 empst3 
sav $path9\m2.dta, replace
recode empst3 2 = 3
sort isco88 empst3 
sav $path9\m3.dta, replace

use $path9\m0.dta, clear
append using $path9\m1.dta
append using $path9\m2.dta
append using $path9\m3.dta
summarize

* Fill in genuine matches: 
sort isco88 empst3
merge isco88 empst3 using $path9\4dig_.dta
tab _merge
drop _merge
sort isco88 empst3
merge isco88 empst3 using $path9\3dig_.dta
tab _merge
drop _merge
sort isco88 empst3
merge isco88 empst3 using $path9\2dig_.dta
tab _merge
drop _merge
sort isco88 empst3
merge isco88 empst3 using $path9\1dig_.dta
tab _merge
drop _merge
summarize



* Imputes from lower levels for any missing values: 
gen o1gp=-999
replace o1gp=isco88 if isco88 >= 0 & isco88 <= 9
replace o1gp=floor(isco88/10) if isco88 >= 10 & isco88 <= 99
replace o1gp=floor(isco88/100) if isco88 >= 100 & isco88 <= 999
replace o1gp=floor(isco88/1000) if isco88 >= 1000 & isco88 <= 9999
gen o2gp=-999
replace o2gp=isco88 if isco88 >= 10 & isco88 <= 99
replace o2gp=floor(isco88/10) if isco88 >= 100 & isco88 <= 999
replace o2gp=floor(isco88/100) if isco88 >= 1000 & isco88 <= 9999
gen o3gp=-999
replace o3gp=isco88 if isco88 >= 100 & isco88 <= 999
replace o3gp=floor(isco88/10) if isco88 >= 1000 & isco88 <= 9999
summarize isco88 o1gp o2gp o3gp 

sort o1gp empst3
merge o1gp empst using $path9\1dig_2.dta  
tab _merge
drop _merge
sort o2gp empst3
merge o2gp empst using $path9\2dig_2.dta  
tab _merge
drop _merge
sort o3gp empst3
merge o3gp empst using $path9\3dig_2.dta  
tab _merge
drop _merge


** Imputation process: 

* (i) for genuine lower level data: 

summarize
mvencode mcamsis fcamsis, mv(-999)
summarize
replace mcamsis=m3cam if mcamsis== -999 & m3cam >= 0 & m3cam <= 100
replace fcamsis=f3cam if fcamsis== -999 & f3cam >= 0 & f3cam <= 100
summarize
summarize isco88 mcamsis if mcamsis ~= -999
summarize isco88 fcamsis if fcamsis ~= -999

replace mcamsis=m2cam if mcamsis== -999 & m2cam >= 0 & m2cam <= 100
replace fcamsis=f2cam if fcamsis== -999 & f2cam >= 0 & f2cam <= 100
summarize
summarize isco88 mcamsis if mcamsis ~= -999
summarize isco88 fcamsis if fcamsis ~= -999

replace mcamsis=m1cam if mcamsis== -999 & m1cam >= 0 & m1cam <= 100
replace fcamsis=f1cam if fcamsis== -999 & f1cam >= 0 & f1cam <= 100
summarize
summarize isco88 mcamsis if mcamsis ~= -999
summarize isco88 fcamsis if fcamsis ~= -999

** (ii) For isco's not previously covered by lower levels

summarize
replace mcamsis=m3cam2 if mcamsis== -999 & m3cam2 >= 0 & m3cam2 <= 100
replace fcamsis=f3cam2 if fcamsis== -999 & f3cam2 >= 0 & f3cam2 <= 100
summarize
summarize isco88 mcamsis if mcamsis ~= -999
summarize isco88 fcamsis if fcamsis ~= -999

replace mcamsis=m2cam2 if mcamsis== -999 & m2cam2 >= 0 & m2cam2 <= 100
replace fcamsis=f2cam2 if fcamsis== -999 & f2cam2 >= 0 & f2cam2 <= 100
summarize
summarize isco88 mcamsis if mcamsis ~= -999
summarize isco88 fcamsis if fcamsis ~= -999

replace mcamsis=m1cam2 if mcamsis== -999 & m1cam2 >= 0 & m1cam2 <= 100
replace fcamsis=f1cam2 if fcamsis== -999 & f1cam2 >= 0 & f1cam2 <= 100
summarize
summarize isco88 mcamsis if mcamsis ~= -999
summarize isco88 fcamsis if fcamsis ~= -999

do $path1\isco88_labels.do
label values isco88 isco88
label define empstl 0 "Unkown employment status" 1 "Employer" 2 "Self-employed (own account)" 3 "Employee" 
label values empst3 empstl 
numlabel _all, add
tab isco88 
tab empst3


sort isco88 empst3
sav $path1d\scores_full.dta, replace


use $path1d\scores_full.dta, clear

label define empstl 0 "Unkown employment status" 1 "Employer" 2 "Self-employed (own account)" 3 "Employee" 
label values empst3 empstl 
tab empst3

* Some manipulation below to remove duplicate cases and impute missing values on empst in isco major groups 2-9
mvdecode mcamsis fcamsis, mv(-999)
keep if isco88 > 0 
keep isco88 empst3 mcamsis fcamsis
summarize
sort isco88 empst3 
capture drop tag1
egen tag1=tag(isco88 empst3 mcamsis fcamsis) 
tab tag1
list in 1/150
list in 1000/1150
mvencode mcamsis fcamsis, mv(-999)
capture drop tag2
egen tag2=tag(isco88 empst3 mcamsis fcamsis) 
tab tag2
keep if tag2==1


* For simplicity, assign empst3=2 codes to empst3=1 cases when major group equals 1 
sort isco88 empst 
replace mcamsis= (mcamsis[_n+1]) if mcamsis==-999 & (isco88==(isco88[_n+1])) & empst3==1 & (empst3[_n+1]==2)
list in 1/50
replace fcamsis= (fcamsis[_n+1]) if fcamsis==-999 & (isco88==(isco88[_n+1])) & empst3==1 & (empst3[_n+1]==2)
list in 1/50
drop tag*
summarize

** Deal with armed forces (not represented in Romanian data)
list if isco88==110
replace mcamsis=-999 if isco88==110
replace fcamsis=-999 if isco88==110 
list if isco88==110


*sav $path1d\ro2002isco88.dta, replace 

describe
label variable mcamsis "CAMSIS scale for males (Romania, 2002)" 
label variable fcamsis "CAMSIS scale for females (Romania, 2002)" 
describe 
saveold $path1d\ro2002isco88.dta, replace 

outsheet using $path1d\ro2002isco88.dat, nolabel replace

********************************************

capture log close



use $path1c\ro2002isco88.dta, clear 
summarize
mvdecode mcamsis fcamsis, mv(-999)
summarize
summarize if empst3 ~= 1
*  all the missing values are associated with empst3==1 
list if isco88 >= 1 & isco88 <= 9


*************************************************.










**** Data derivation documentation

** Construction of a 'microclass' indicator based upon isco88 3-digit for Venezualan 2001 IPUMS-I data


** Paul Lambert / Dave Griffiths, March 2011, for the ESRC funded 'Social Networks and Occupational Structure' 
**   project, www.camsis.stir.ac.uk/sonocs


**************************************************

global file5a "http://www.camsis.stir.ac.uk/occunits/microclass/isco88_microclass_c.dat" /* ISCO88 to microclass */ 
global file5b "http://www.camsis.stir.ac.uk/occunits/microclass/microclass_labels.do" /* Labels */
global path9 "c:\temp\"


** Premise: existing microdata with variables for m and f occ in ISCO88 3-digit units of IPUMS-I, named 'hocc' and 'wocc'

* Merge in microclass
sav $path9\m1.dta, replace
insheet using $file5a, clear
summarize
rename isco88 hocc
rename microclass h_micro 
sort hocc 
sav $path9\m2.dta, replace
insheet using $file5a, clear
summarize
rename isco88 wocc
rename microclass w_micro 
sort wocc 
sav $path9\m3.dta, replace
use $path9\m1.dta, clear
sort hocc
merge hocc using $path9\m2.dta
keep if _merge==1 | _merge==3
drop _merge
sort wocc
merge wocc using $path9\m3.dta
keep if _merge==1 | _merge==3
drop _merge
summarize /* manually overwrite those occs which didn't match microclasses: */ 
recode h_micro -9=.m
recode w_micro -9=.m 
tab hocc if missing(h_micro) [fw=freq]
tab wocc if missing(w_micro) [fw=freq]
summarize hocc wocc [fw=freq] if hocc >= 1 & hocc <= 999 & wocc >= 1 & wocc <= 999
summarize hocc wocc [fw=freq] if ~missing(h_mic) & ~missing(w_mic) & hocc >= 1 & hocc <= 999 & wocc >= 1 & wocc <= 999
* There will be a lot of missing values if we don't allocate the new iscos to microclasses

* => Venezuela specific recodes (PL and DG, 28/Mar/11) 

tab hocc if missing(h_mic) [fw=freq]
replace h_micro=1202 if hocc==100
replace h_micro=1308 if hocc==200 /* Can't easily decide - may be students, other, etc */
replace h_micro=1304 if hocc==230
replace h_micro=1107 if hocc==241 /* Can't easily decide; DG 3-digit recommendations codes to modal category  */
replace h_micro=1308 if hocc==300
replace h_micro=3203 if hocc==400
replace h_micro=3105 if hocc==500
replace h_micro=5201 if hocc==600
replace h_micro=4101 if hocc==700
replace h_micro=4209 if hocc==800
replace h_micro=4306 if hocc==900
tab hocc if missing(h_micro) [fw=freq]
tab wocc if missing(w_micro) [fw=freq]
replace w_micro=1202 if wocc==100
replace w_micro=1308 if wocc==200 /* ?Can't reasonably be coded - may be unemployed */
replace w_micro=1304 if wocc==230
replace w_micro=1107 if wocc==241 /* Can't reasonably allocate this one - too diverse */
replace w_micro=1308 if wocc==300
replace w_micro=3203 if wocc==400
replace w_micro=3105 if wocc==500
replace w_micro=5201 if wocc==600
replace w_micro=4101 if wocc==700
replace w_micro=4209 if wocc==800
replace w_micro=4306 if wocc==900
tab wocc if missing(w_micro) [fw=freq]

summarize hocc wocc 

** Add value labels when relevant: 
do $file5b
do $file4a 
label values hocc occlab
label values wocc occlab
label values h_micro microclassl
label values w_micro microclassl
numlabel _all, add
tab1 hocc wocc 
tab1 h_micro w_micro 
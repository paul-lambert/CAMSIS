

**** Data derivation documentation

** Construction of a 'microclass' indicator based upon isco88 3-digit for Philippines 2000 IPUMS-I data


** Paul Lambert / Dave Griffiths, March 2011, for the ESRC funded 'Social Networks and Occupational Structure' 
**   project, www.camsis.stir.ac.uk/sonocs


**************************************************

global file5a "http://www.camsis.stir.ac.uk/occunits/microclass/isco88_microclass_c.dat" /* ISCO88 to microclass */ 
global file5b "http://www.camsis.stir.ac.uk/occunits/microclass/microclass_labels.do" /* Labels */
global file5c "http://www.camsis.stir.ac.uk/occunits/microclass/mc3.dta" /* DG ISCO 2/3 microclass allocator */
global path9 "c:\temp\"


** Premise: existing microdata with variables for m and f occ in ISCO88 3-digit units of IPUMS-I, named 'hocc' and 'wocc'



* Merge in microclass
sav $path9\m1.dta, replace
use $file5c, clear
tab occ, missing
drop if occ==11 & micro==1101 /* Eliminates the 11-managers group */
drop if occ==1 & micro==9990 /* Eliminates the 1-soldiers group */
summarize 
rename occ hocc
rename micro3 h_micro 
sort hocc 
sav $path9\m2.dta, replace
use $file5c, clear
drop if occ==11 & micro==1101 /* Eliminates the 11 managers group */
drop if occ==1 & micro==9990 /* Eliminates the 1-soldiers group */
summarize
rename occ wocc
rename micro3 w_micro 
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

* => Phillipines specific recodes (DG, 28/Mar/11; updated by PL, 30/Mar/11) 

capture program drop ph_replace
program define ph_replace 
 replace $micro3 =1202 if $occ==141
 replace $micro3 =1202 if $occ==142
 replace $micro3 =1202 if $occ==143
 replace $micro3 =1202 if $occ==144
 replace $micro3 =1202 if $occ==149
 replace $micro3 =1108 if $occ==215
 replace $micro3 =1304 if $occ==239
 replace $micro3 =1304 if $occ==330
 replace $micro3 =5201 if $occ==622 /* PL updated */
 replace $micro3 =5201 if $occ==629 /* PL updated */ 
 replace $micro3 =4210 if $occ==631
 replace $micro3 =4210 if $occ==632
 replace $micro3 =4210 if $occ==633
 replace $micro3 =4210 if $occ==634
 replace $micro3 =5101 if $occ==641
 replace $micro3 =5101 if $occ==642
 replace $micro3 =5101 if $occ==643
 replace $micro3 =5101 if $occ==649
 replace $micro3 =5101 if $occ==651 /* PL updated */
 replace $micro3 =5101 if $occ==659 /* PL updated */ 
 replace $micro3 =1307 if $occ==834 /* PL added - ships crew in P are more like officers */ 
end

global micro3 "h_micro"
global occ "hocc"
ph_replace

global micro3 "w_micro"
global occ "wocc"
ph_replace

tab hocc if missing(h_micro) [fw=freq]
tab wocc if missing(w_micro) [fw=freq]



summarize hocc wocc 

** Add value labels when relevant: 
do $file5b
label values h_micro microclassl
label values w_micro microclassl
numlabel _all, add
tab1 h_micro w_micro 



*******************************************
*

/* 

If using this file please acknowledge the SONOCS project (above) or the article: 

Griffiths, D., & Lambert, P. S. (2011). Dimensions and Boundaries: Comparative analysis of occupational structures using social network and social interaction distance analysis Paper presented at the ISA RC28 Spring meeting, University of Essex, 13-16 April 2011.


*/ 


*********************************************
* EOF 

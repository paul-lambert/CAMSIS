
********************************.
* This file defines a macro to compute ISCO-68 major and minor
* groups from a 4 digit isco-68 unit group. 

* (some isco-68's are 3 digit but are effectively 4 digit 
* preceded by a zero, eg 110 == 0110 ).

* This recode works just by truncating the 4 digit ISCO-68's. 
* For a couple of categories at both minor and major group 
* level, an additional recode merges a few truncated units 
* into a shared location. 

* The derivations are obtained by inspection of the ISCO-68 value 
* labels of unit groups and subgroups, as available from for 
* instance the websites
* http://www.icpsr.umich.edu/GSS/rnd1998/appendix/isco70a.htm
* for the title unit codes, and 
* http://laborsta.ilo.org/appl/data/isco68e.html
* for the major and minor group unit codes.
******************************************************.


* . 

** suggested usage (drop the duplicate i's):.
* include file="[e:\data\resources\isco\]isco68subgps.sps".
* iiiscosub occ= isco var 
*           iscom=new var (major group)
*           iscomi=new var (minor group) . 
**.


* WORKS BY RECODING ENTRY OCCUPATIONAL VARIABLE !OCC.



define iscosub (occ=!tokens(1) 
        /iscom=!tokens(1) /iscomi=!tokens(1)   )  .

recode !occ (missing,sysmis, lo thru 0=-999).

* 1) major groups :.

compute !iscom=trunc(!occ/1000) .

recode !iscom (0,1=1) (7,8,9=7) 
         (lo thru -1,missing,sysmis=-999) . 


* 2) minor groups :.

compute !iscomi=trunc(!occ/100).

recode !iscomi (2,3=2) (6,7=6) 
    (lo thru -1,missing,sysmis=-999).

*****.


!enddefine.




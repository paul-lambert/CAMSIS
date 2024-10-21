

*****************************************************.

** Swiss 1990 National Schema ('PBER') subgroups.
 

********.
** Recommended usage :.
*include file="SwissPBERsubgroupsv1.sps".
*ooooooccsubs occ=input var maj=newvar1 smj=newvar2 min=newvar3.
*********.




*********************************************.
* Derivation of Swiss national schema subgroups 


define occsubs (occ=!tokens(1) 
          /maj=!tokens(1) /smj=!tokens(1) /min=!tokens(1) ).



* Major groups :.
* (for major groups only, there is a recode as well as a trunctation).

compute !maj=trunc(!occ/10000).
recode !maj (3,4=3).

* Submajor groups :.

compute !smj=trunc(!occ/1000).

* Minor groups :.
compute !min=trunc(!occ/100).


!enddefine. 



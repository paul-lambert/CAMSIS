

* This file includes SPSS syntax for computing major and minor 
* group structures according to the Swedish NYK85/90 Nordic 
* Standard Classification of Occupations. 


*****.
** Recommended usage:.
*include file="SwedishNYK8590majgpsv1.sps".
*ssssubgps occ=[var name] maj=[new var] min=[new var].
*****.

define subgps (occ=!tokens(1) 
                /maj=!tokens(1) /min=!tokens(1) ).


compute !maj=trunc(!occ/100).
recode !maj (7,8=7).
if (!occ ge 980 & !occ lt 990) !maj=10.
if (!occ ge 990) !maj=11.

compute !min=trunc(!occ / 10).

!enddefine.


 


* ISCO-88 major groups, plus 4 skill levels :.


* include file="[e:\data\resources\isco\]iscomajgps2.sps".
* iiscosub occ= isco var 
*           iscom=new var (major group)
*           iscosm=new var (sub-major group)
*           iscomi=new var (minor group)
*           skill=new var (skill level).
*.


* MAKES RECODES TO THE ENTRY OCCUPATIONAL VARIABLE !OCC.



define iscosub (occ=!tokens(1) /iscom=!tokens(1)
  /iscosm=!tokens(1) /iscomi=!tokens(1)
   /skill=!tokens(1)).

recode !occ (missing,sysmis, lo thru 0=-999).

* major groups :.

do if (!occ ge 1000).
compute !iscom=trunc(!occ/1000).
else if (!occ ge 100 & !occ lt 1000).
compute !iscom=trunc(!occ/100).
else if (!occ ge 10 & !occ lt 100).
compute !iscom=trunc(!occ/10).
else if (!occ ge 1 & !occ lt 10).
compute !iscom=trunc(!occ/1).
end if.
if (!occ=1 | !occ=11 | !occ=110) !iscom=0. 

recode !iscom (lo thru -1,missing,sysmis=-999).

* submajor groups :.

do if (!occ ge 1000).
compute !iscosm=trunc(!occ/100).
else if (!occ ge 100 & !occ lt 1000).
compute !iscosm=trunc(!occ/10).
else if (!occ ge 10 & !occ lt 100).
compute !iscosm=trunc(!occ/1).
else if (!occ ge 1 & !occ lt 10).
compute !iscosm=10*trunc(!occ/1).
end if.
if (!occ=1 | !occ=11 | !occ=110) !iscosm=1. 

recode !iscosm (lo thru -1,missing,sysmis=-999).


* minor groups :.

do if (!occ ge 1000).
compute !iscomi=trunc(!occ/10).
else if (!occ ge 100 & !occ lt 1000).
compute !iscomi=trunc(!occ/1).
else if (!occ ge 10 & !occ lt 100).
compute !iscomi=10*trunc(!occ/1).
else if (!occ ge 1 & !occ lt 10).
compute !iscomi=100*trunc(!occ/1).
end if.
if (!occ=1 | !occ=11 | !occ=110) !iscomi=11. 

recode !iscomi (lo thru -1,missing,sysmis=-999).

*****.

 

*****.
** Addendum : commented out at present, but possible issue :
** coding problem for army :.
*compute beware=0.
*if (!occ=1 | !occ=11 | !occ=110) beware=1.
*variable label beware "Occupation could be armed forces or legislator group".
*fre var=beware. 
****.

* add a skill partition :.
* (using http://www.warwick.ac.uk/ier/isco/brit/btext2.html).

compute !skill=!iscom.
recode !skill (1,0=-999) 
  (2=4) (3=3) (4,5,6,7,8=2) (9=1).
variable label !skill "ISCO skill level (Elias)".
add value label !skill 
  1 "1st ISCO skill level" 
  2 "2nd ISCO skill level" 
  3 "3rd ISCO skill level" 
  4 "4th ISCO skill level". 


descriptives var=!occ !iscom !iscosm !iscomi !skill.

*.

!enddefine.







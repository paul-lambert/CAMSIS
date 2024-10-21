

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1: 

recode $occa 9999=9999

recode $occa 60/62=62 63 64 68=63 212=211 /* adjusting for sparse occs */

recode $occa 151 152 80/89=89 /* sparsity problems */

recode $occa 520/522=510 /* adjusting for sparse 52's */ 

recode $occa 563/569=563 571/573=571  /* To adapt for sparsity, try to force drivers, and military, together */




****************************





*****************************
** Person 2: 

recode $occb 9999=9999

recode $occb 60=62  63 64 65 66 67 68=63 /* force equivalence of these categories and adjusting for sparisty  */ 

recode $occb 151 152 80/89=89 /* sparsity problems */



recode $occb 1/9=9 101/133=133 180/182=133  10/17=17  30/33=33   160/163 171 173=180 172=63  /* adjusting for sparse occs for females in male professions */

recode $occb 563/569=563 571/573=571  /* To adapt for sparsity, try to force drivers, and military, together */

* For women, 513 are an unusual case (?personal domestic workers or housewives), so recode others in the group to avoid overlap: 

recode $occb 501 502=571 510/512=511 551/553=563 


** [Defaults to blank file - no action taken]


** EOF 
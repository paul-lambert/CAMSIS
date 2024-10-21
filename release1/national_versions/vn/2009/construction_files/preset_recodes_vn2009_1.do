

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1: 

recode $occa 9999=9999

recode $occa 111=100 113/115=115 140/152=141 160/172=162 /* for sparse patterns at elite jobs */

recode $occa 600 613=611  /* for problematic and/or sparse farming occs */ 
recode $occa 630/633=920 

recode $occa 400/411 = 411 /* merge clerks */



** Person 2: 

recode $occb 9999=9999

recode $occb 111/133=133 /* for sparse patterns at elite jobs */

recode $occb 600 613 620/622 =611  /* for problematic and/or sparse farming occs */ 
recode $occb 630/633=920

recode $occb 930=931 /* for sparse male dominated jobs */ 


** [Defaults to blank file - no action taken]


** EOF 
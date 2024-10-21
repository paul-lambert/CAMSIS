

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1: 

recode $occa 9999=9999

* For sparse occs:
recode $occa 2134 2141=2132 
recode $occa 1112=1224 1113=1121
recode $occa 9733=9723


** Person 2: 

recode $occb 9999=9999

* Recode women to force equality in sparse groups:
recode $occb 1111/1113=1121
recode $occb 7601/7614=7612 7515/7517=7515




** [Defaults to blank file - no action taken]


** EOF 
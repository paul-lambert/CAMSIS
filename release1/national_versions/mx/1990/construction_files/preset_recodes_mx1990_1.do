

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1: 

recode $occa 9999=9999

* Force field labourers to all be same
recode $occa 4100/4109=4100


** Person 2: 

recode $occb 9999=9999

* Sparse unit group recodes
recode $occb 5250/5259 5261/5269=5261


** [Defaults to blank file - no action taken]


** EOF 
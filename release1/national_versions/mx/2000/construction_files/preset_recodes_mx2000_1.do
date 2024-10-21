

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1: 

recode $occa 9999=9999

* Force equivalence for similar jobs
recode $occa 5311/5319=5312

recode $occa 4100/4109=4100 4115=4110 



** Person 2: 

recode $occb 9999=9999


* Force equivalence for some similar jobs
recode $occb 4100/4109 4120 =4100 


* Force a recode of a non-represented occ on substantive grounds

recode $occb 5530/5543=6121

* A recode for sparse occupations

recode $occb 5231 5239=5230 


** [Defaults to blank file - no action taken]


** EOF 


** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1 (typically, 'hocc'): 

recode $occa 9999=9999

* Force 5 and 6 to be equal, and 8 & 9
recode $occa 5 6=6  8 9 = 8 

* Force equivalence amongst intellectuals
recode $occa 15 16 17=15 

* Recode related group 3 occs 
recode $occa 30 31=30 

* Force and 50 and 51 54 and 55 to be the same 
recode $occa 50 51=50 54 55=54 




* Force 60 to be same as 61 
recode $occa 60 61=61 

* Force 63 to be the same as 62
recode $occa 62 63=62






** Person 2 (typically, 'wocc'): 

recode $occb 9999=9999



* Force equivalence amongst intellectuals
recode $occb 15 16 17=15 

* force some major group 3 equivalence: 
recode $occb 30 31=30 34 37 38 39=39 

* Recode sparse farmers:
recode $occb 60=61

* Force 54 and 55 to be the same 
recode $occb 54 55=54 



/*
* Force 60/63 to all be the same as 61 
recode $occb 60 61 62 63=61 
*/


* Force 60 to be same as 61 
recode $occb 60 61=61 

* Force 63 to be the same as 62
recode $occb 62 63=62



* Force sparse 88, 81 and 94 to be same as others
recode $occb 88=83 94=91 81=82 



** [Defaults to blank file - no action taken]


** EOF 
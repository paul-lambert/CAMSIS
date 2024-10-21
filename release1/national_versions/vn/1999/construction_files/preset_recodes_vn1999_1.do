

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1: 

recode $occa 9999=9999

recode $occa  111 112 113 =113    /* for sparse governemental level jobs */ 
recode $occa  114 131 132 142 152=152  115 191 141 151 =191   171 172=172   181 182 183=182 /* for sparse governmental level jobs */ 

recode $occa 233 234 235=233 /* some desirable forced equivalents in professional sector in jobs with low n */






** Person 2: 

recode $occb 9999=9999

recode $occb 111 112 113 141 151 131 132 =113  161 162 = 161 /* for sparse governemental level jobs, trying to separate local and national  */ 
recode $occb 114 142 152 = 152  115 172 181 182 183 191=191 /* for sparse governmental level jobs */ 

recode $occb 233 234 235=233 211 213 = 214 /* some desirable forced equivalents in professional sector in jobs with low n */
recode $occb 333=334 345=344 348=346 400=411  /* some desirable recodes for sparse occupations in associate professions */

recode $occb 614 615=615 /* merge forestry and fishery workers for women */ 

recode $occb 811/817=811 821/829=821 831/834=831    /* recode sparse male-dominated jobs for women */
recode $occb 900=934 

** [Defaults to blank file - no action taken]


** EOF 
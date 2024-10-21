

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1: 

recode $occa 9999=9999
recode $occa 61 63 65 67 70 75 77 79=63   62 64 66 68 71 72 73 76=62 /* Designed to separate doctors etc from medical assistants etc */
recode $occa 121 122=121 /* ensures lawyers and judges are the same */
recode $occa 601 602 611 612 613 614=601 /* for the men, merges the farmers to keep them apart from the farm labourers */

** Person 2: 

recode $occb 9999=9999
recode $occb 61 63 65 67 70 75 77 79=63   62 64 66 68 72 =62   71 73=71  /* Designed to separate doctors etc from medical assistants etc */
recode $occb 121 122=121 /* ensures lawyers and judges are the same */
recode $occb 11 12 13 14 19=22 /* ensures females in group 1 are merged into group 2 */
recode $occb 41 42 43=22 /* ensures female pilots etc are merged into group 2 */

** [Defaults to blank file - no action taken]


** EOF 
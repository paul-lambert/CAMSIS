

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  

* File info: This is for occs crossed by educational categories 
* In this example, no merging by educational categories is employed, though this file could be used to do so 
* (e.g. force scores for all doctors to be the same, regardless of whether have a degree)



** Person 1: 

recode $occa 9999=9999
recode $occa 61 63 65 67 70 75 77 79=63   62 64 66 68 71 72 73 76=62 /* Designed to separate doctors etc from medical assistants etc */
recode $occa 121 122=121 /* ensures lawyers and judges are the same */
recode $occa 601 602 611 612 613 614=601 /* for the men, merges the farmers to keep them apart from the farm labourers */

* Repeats the above for those with degrees: 
recode $occa 10061 10063 10065 10067 10070 10075 10077 10079=10063   10062 10064 10066 10068 10071 10072 10073 10076=10062 /* Designed to separate doctors etc from medical assistants etc */
recode $occa 10121 10122=10121 /* ensures lawyers and judges are the same */
recode $occa 10601 10602 10611 10612 10613 10614=10601 /* for the men, merges the farmers to keep them apart from the farm labourers */



** Person 2: 

recode $occb 9999=9999
recode $occb 61 63 65 67 70 75 77 79=63   62 64 66 68 72 =62   71 73=71  /* Designed to separate doctors etc from medical assistants etc */
recode $occb 121 122=121 /* ensures lawyers and judges are the same */
recode $occb 11 12 13 14 19=22 /* ensures females in group 1 are merged into group 2 */
recode $occb 41 42 43=22 /* ensures female pilots etc are merged into group 2 */

* Repeats the above for those with degrees: 
recode $occb 10061 10063 10065 10067 10070 10075 10077 10079=10063   10062 10064 10066 10068 10072 =10062   10071 10073=10071  /* Designed to separate doctors etc from medical assistants etc */
recode $occb 10121 10122=10121 /* ensures lawyers and judges are the same */
recode $occb 10011 10012 10013 10014 10019=10022 /* ensures females in group 1 are merged into group 2 */
recode $occb 10041 10042 10043=10022 /* ensures female pilots etc are merged into group 2 */



** [Defaults to blank file - no action taken]


** EOF 
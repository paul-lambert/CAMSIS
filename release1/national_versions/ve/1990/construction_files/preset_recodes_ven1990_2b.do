

** Called within automated CAMSIS construction programmes which are defined within make_camsis*.do files

** File which can be used for defining any desired recode in occupational data 

** The arguments occa and occb are the person 1 and person 2 occupation


** The text below can be edited for a specific version if the user want to impose some specific recodes over-and-above
**   any automated ones (usually, the same recodes apply to person 1 and person 2, but not necessarily  



** Person 1: 

recode $occa 9999=9999
recode $occa 61 63 65 67 70 75 77 79=63   62 64 66 68 69 71 72 73 74 76=62 /* Designed to separate doctors etc from medical assistants etc */
recode $occa 121 122=121 /* ensures lawyers and judges are the same */
recode $occa 601 602 611 612 613 614=601 /* for the men, merges the farmers to keep them apart from the farm labourers */
recode $occa 741/749 = 749 /* for men, force this minor group to be the same in response to intermediate model */ 
recode $occa 781/789= 779 761 762=759 /* for men, adapt within this major group in response to intermediate model */
recode $occa 941 942 943 949=949 /* force merge of factory workers for men */
recode $occa 133 134 = 133 131 138=138 /* force pre-school teachers = primary teachers; he level merge he level */
recode $occa 161 162 163=163 171/179=179 /* force merging in cultural sectors */
recode $occa 198 201/205=201 208 209 210=209 /* force merging of exec.  and directoring jobs */


* Repeats the above for those with degrees: 
recode $occa 10061 10063 10065 10067 10070 10075 10077 10079=10063   10062 10064 10066 10068 10069 10071 10072 10073 10074 10076=10062 /* Designed to separate doctors etc from medical assistants etc */
recode $occa 10121 10122=10121 /* ensures lawyers and judges are the same */
recode $occa 10601 10602 10611 10612 10613 10614=10601 /* for the men, merges the farmers to keep them apart from the farm labourers */
recode $occa 10741/10749 = 10749 /* for men, force this minor group to be the same in response to intermediate model */ 
recode $occa 10781/10789= 10779 10761 10762=10759 /* for men, adapt within this major group in response to intermediate model */
recode $occa 10941 10942 10943 10949=10949 /* force merge of factory workers for men */
recode $occa 10133 10134 = 10133 10131 10138=10138 /* force pre-school teachers = primary teachers; he level merge he level */
recode $occa 10161 10162 10163=10163 10171/10179=10179 /* force merging in cultural sectors */
recode $occa 10198 10201/10205=10201 10208 10209 10210=10209 /* force merging of exec.  and directoring jobs */




** Person 2: 

recode $occb 9999=9999
recode $occb 61 63 65 67 70 75 77 79=63   62 64 66 68 72 =62   71 73 74=71  /* Designed to separate doctors etc from medical assistants etc */
recode $occb 121 122=121 /* ensures lawyers and judges are the same */
*recode $occb 11 12 13 14 19=22 /* ensures females in group 1 are merged into group 2 */
recode $occb 41 42 43=22 /* ensures female pilots etc are merged into group 2 */
recode $occb 133 134 = 133 131 138=138 /* force pre-school teachers = primary teachers; he level merge he level */
recode $occb 161 162 163=163 171/179=179 /* force merging in cultural sectors */
recode $occb 198 201/205=201 208 209 210=209 /* force merging of exec.  and directoring jobs */


* Repeats the above for those with degrees: 
recode $occb 10061 10063 10065 10067 10070 10075 10077 10079=10063   10062 10064 10066 10068 10072 =10062   10071 10073 10074=10071  /* Designed to separate doctors etc from medical assistants etc */
recode $occb 10121 10122=10121 /* ensures lawyers and judges are the same */
*recode $occb 10011 10012 10013 10014 10019=10022 /* ensures females in group 1 are merged into group 2 */
recode $occb 10041 10042 10043=10022 /* ensures female pilots etc are merged into group 2 */
recode $occb 10133 10134 = 10133 10131 10138=10138 /* force pre-school teachers = primary teachers; he level merge he level */
recode $occb 10161 10162 10163=10163 10171/10179=10179 /* force merging in cultural sectors */
recode $occb 10198 10201/10205=10201 10208 10209 10210=10209 /* force merging of exec.  and directoring jobs */









** EOF 
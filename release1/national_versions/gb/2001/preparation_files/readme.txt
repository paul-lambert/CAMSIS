

* APPROXIMATE CAMSIS SCORES FOR SOC2000 UNITS : 
                 TEMPORARY RELEASE V0.
* 2.8.02.

*************************************************************.
* THIS ARCHIVE SHOWS APPROXIMATE LINKAGES FROM SOC2000 TO 
* CAMSIS SCORES, BASED UPON THE CAMSIS SCORES DERIVED FOR SOC90 
* UNITS USING 1991 CENSUS DATA, THEN MAPPING SOC90 TO SOC2000 UNITS 
* VIA THE TRANSLATION PROVIDED BY THE OCCUPATIONAL INFORMATION UNIT 
* (AND THE SOC2000 VOLUME 2).
*
* THE OFFICIAL CAMSIS SOC2000 SCORES WILL BE DERIVED FROM CENSUS 
* 2001 SARS DATA BUT ARE NOT YET AVAILABLE (2.8.02).
* THIS RELEASE IS INTENDED ONLY AS A TEMPORARY RESOURCE FOR RESEARCHERS 
* WISHING TO USE CAMSIS MEASURES FOR SOC2000 UNITS BEFORE THE 
* OFFICIAL RESEASE IS AVAILABLE. 
* THE SCORES SHOULD BE REGARDED AS '1991' SCALE SCORES. 

**********************************************.


CONTENTS OF GBSOC2000CAMSISapproxV0.ZIP


britainsoc2000approxv0titlescores.xls : 
       Excel file table listing CAMSIS scores at title-only  level

britainsoc2000approxv0.sav : 
       index file of soc2000 units with                                            links to derived scores for each 
       associated CAMSIS scores. 
                
britainsoc2000approxv0.dat : vars from britainsoc2000approxv0.sav in plain text


uksoc2000{males/female}scoresapproxv0.sps  : 
        (2) SPSS syntax files showing the 
      linear translation between UK SOC2000 title-only units, 
      and approximated CAMSIS scores for men and women. 




TO USE THE *.sav INDEX FILE : Derive a variable on your own data called 
    soc2000, which is numerically equal to the soc2000 unit value.

Then sort your data by the soc2000 variable and match files 
between your data and the index (*.sav) file (treating the index file 
as a 'table' file in SPSS). 

Remember that the male scores should apply to men, and the female 
scores to women. You may wish to compute a general CAMSIS variable which 
is equal to the male score if the case is male, and female score if 
female. 
  

The score variables on the index file are indexed as follows : 

     [h/w]    : Score applies to males or females (husbands / wives)
       j
     [t]    : Score derived for the title-only base unit
       cs  



---------------------------------------------------




---------------------------------------------------------



29.7.02 .





CONTENTS OF Irish96CAMSISv1.zip


IRISH CAMSIS PUBLIC USE ARCHIVES Version 1.1

-LINKAGE BETWEEN  OCCUPATIONAL UNITS AND IRISH 1996 CAMSIS SCORES 



***********************************.
* Version updates :.
*
* Version 1.1 : addition of SPSS syntax files translating occ 
*               units into CAMSIS codes, 29.7.02
* Version 1.0 : first release, 30.4.02.
************************************.


*.XLS : Excel file tables listing CAMSIS scores at title-only and title-by-status level

*.DOC : [TO ADD : report on scale construction ]

irish96CSOindex.sav : index file of CSO unit combinations with                                            links to derived scores for each 
                  CAMSIS CSO male and female unit score. 
                 Indicators ({h/w}orig{1/2} on this file 
                 show whether or not a soc-by-status combination was
                 represented by any cases in the original data file,             
                 and therefore whether the score assigned was 
                 calculated from the original data, or was assigned 
                 through imputation. See further below. 

irish96CSOindex.dat : core vars from irish96CSOindex.sav in plain text

irishcamsisforisco88.sav : File linking ISCO-88 units with CAMSIS 
                         scores. Note that this linkage requires the 
                      approximation of a CSO-96 title being assigned to 
                     each ISCO-88 unit. See further notes below. 


irel{h/w}{cso/isco}recode.sps : SPSS syntax files for M and F showing 
            linear recode from Irish CSO units / ISCO88 into the 
             appropriate CAMSIS score (ie another format for obtaining 
             values) 


TRANSLATIONS :

   
      occ  : CSO-96 job title

 



TO USE THIS FILE : Derive a variable on your own data called 
    occ, which is numerically equal to the CSO unit group value.
     This var is then used as a matching variable to link with 
     the index file values.  


The next set of variables in this file refer to CAMSIS scores for those 
categories. The score variables are indexed as follows : 

     [h/w]    : Score applies to males or females (husbands / wives)
       i
     [t]    : Score derived for the title-only occupational base unit
              [cf other CAMSIS versions where t/s indicates title-only or title-by-status unit] 
       cs  


---------------------------------------------------

NOTE ON US CAMSIS SCALES VERSION1 : 

- [to add more]


- Linkage of CAMSIS scores to ISCO-88 units 
        This linkage was achieved by approximating the CSO-96 unit
       appropriate for a given ISCO-88 unit, then assigning the ISCO-88 
       unit the CAMSIS score of the estimated CSO-96 unit. 
       The approximation of a link from ISCO-88 to CSO96 was achieved through 
      files supplied by Richard Layte, which are also available from 
      the CAMSIS webpages ('occupational units' page). Neither we nor 
      Richard are 100% confident that this linkage will be reliable in 
      all cases! However users can easily check which CSO-96 units were 
      assigned to each ISCO-88 title unit, by reviewing the connection between 
      the title units of the variables 'isco' and 'cso96' in the SPSS data 
      file. 1990 UK Cambridge Scale scores were also assigned to the ISCO-88 
      units in a similar way. 
      The .sav file also contains the ISEI and SIOPS scores associated with 
      ISCO-88 units, derived using the translation macros provided by 
      Harry Ganzeboom from his ISMF project webpages. 


------------------------------------------------------- 

---------------------------------------------------

* EOF 29.7.02. More details to this readme file and the archive 
  need to be added and will be in the near future. 
* (Paul Lambert: lambertp@cf.ac.uk)




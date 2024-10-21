

29.7.02 .


CONTENTS OF Sweden90CAMSISv1.zip


SWEDISH CAMSIS PUBLIC USE ARCHIVES Version 1.1

-LINKAGE BETWEEN  OCCUPATIONAL UNITS AND SWEDISH 1990 CAMSIS SCORES 



***********************************.
* Version updates :.
*
* Version 1.1 : addition of SPSS syntax files translating occ 
*               units into CAMSIS codes, 29.7.02
* Version 1.0 : first release, 24.4.02.
************************************.



CAMSIS scores for Swedish NYK(85/90) units based on 
marital and cohabitation patterns in 1990 Census.


*.XLS : Excel file tables listing CAMSIS scores at title-only and title-by-status level

*.DOC : report on scale construction, describes construction process
             and nature of preliminary results
             

sw90nykindex.sav : index file of soc-by-status  combinations with                                            links to derived scores for each 
                   soc -by-status value. 
                 Indicators ({h/w}orig{1/2} on this file 
                 show whether or not a soc-by-status combination was
                 represented by any cases in the original data file,             
                 and therefore whether the score assigned was 
                 calculated from the original data, or was assigned 
                 through imputation. See further below. 

sw90nykindex.dat : core vars from sw90nykindex.sav in plain text

sw90{h/w}{t/s}recode.sps : SPSS syntax files for M and F {h/w} showing 
            linear recode from Swedish NYK units into the 
             appropriate CAMSIS score (ie another format for obtaining 
             values), for title-only / title-by-status {t/s} base units 
             

TRANSLATIONS :

    occbst : (NYK(85/90) title * 10) + employment status, 
             where employment status is as in empst
 
      occ  : NYK(85/90) job title

    empst : Employment status, has the values : 
              
       - 2 "Employee" 
       - 4 "Self-Employed" 
       - 9 "Unknown".



TO USE THIS FILE : Derive a variable on your own data called 
    occbst, which is numerically equal to one of two
      possible categorisations : 

       
       a) (NYK title*10) + empst, where empst has up to 8 categores, 
            corresponding to the above.

       b) (NYK title*10) + 9, ie title only, no info on status.
 

The next set of variables in this file refer to CAMSIS scores for those 
categories, depending on the schema used, a, or b . 

The score variables are indexed as follows : 

     [h/w]    : Score applies to males or females (husbands / wives)
       i
     [t/s]    : Score derived for the title-only or title-by-status base unit
       cs  


---------------------------------------------------


------------------------------------------------------- 

---------------------------------------------------

* EOF 29.7.02. More details to this readme file and the archive 
  need to be added and will be in the near future. 
* (Paul Lambert: lambertp@cf.ac.uk)




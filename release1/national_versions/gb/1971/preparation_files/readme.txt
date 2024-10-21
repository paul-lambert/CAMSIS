

29.7.02 .


CONTENTS OF GB71CAMSISv1.ZIP

VERSION 1.1 RELEASE OF CAMSIS SCORES FOR BRITAIN USING 1971 CENSUS 



*.XLS : Excel file tables listing CAMSIS scores at title-only and title-by-status level

*.DOC : [TO ADD : report on scale construction and review of scales]

britain71socindex.sav : index file of soc-by-status  combinations with                                            links to derived scores for each 
                    soc -by-status value and associated CAMSIS scores. 
                 Also, indicators ({h/w}orig{1/2} on this file 
                 show whether or not a soc-by-status combination was
                 represented by any cases in the original data file. 

britain71socindex.dat : core vars from britain71socindex.sav in plain text

uk71{h/w}{t/s}csrecode.sps  : (4) SPSS syntax files showing the 
                     linear translation between UK 1970 SOC 
                     title-only or title-by-status units, 
                     and appropriate CAMSIS scores for men and women. 









TRANSLATIONS :

    occbst : (GB soc-70 title * 10) + employment status, 
             where employment status is as in empst
 
      occ  : soc-70 job title
              (OPCS 1971 Census unit groups, 1-222)

    empst : Employment status, has the values : 
              
              1 - Self-employed gt 25 employees
              2 - Self-employed 1-25 employees
              3 - Self-employed 0 employees
              4 - Manager 25+ underlings
              5 - Manager 1-25 underlings
              6 - Supervisor
              7 - Employee
              9  - Unknown

[This is the standard camsis empst definition. However, in the
title-by-status units used here, the categories 1 and 2, and 4 and 5, 
were usually merged so there is little difference between scores for these
categories. For the title-only based scores, the scores are 
equivalent across all employement status]


TO USE THIS FILE : Derive a variable on your own data called 
    occbst, which is numerically equal to one of two
      possible categorisations : 

       
       a) (SOC title*10) + empst, where empst has up to 8 categores, 
            corresponding to the above.

       b) (SOC title*10) + 9 , ie title only, no info on status.
 

The next set of variables in this file refer to CAMSIS scores for those 
categories, depending on the schema used, a, or b . 

The score variables are indexed as follows : 

     [h/w]    : Score applies to males or females (husbands / wives)
       i
     [t/s]    : Score derived for the title-only or title-by-status base unit
       cs  



---------------------------------------------------




---------------------------------------------------

* EOF 27.5.02. More details to this readme file and the archive 
  need to be added and will be in the near future. 
* (Paul Lambert: lambertp@cf.ac.uk)


---------------------------------------------------------


  

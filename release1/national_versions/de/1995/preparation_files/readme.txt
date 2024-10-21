

29.7.02 .


CONTENTS OF GERMANYCAMSIS9195V1.ZIP

VERSION 1.2 RELEASE OF CAMSIS SCORES FOR GERMAN DATA 1991 AND 1995

(REVISED FROM VERSION 1.0 RELEASED 22.4.02, SEE NOTES BELOW)

CONTAINS: 

- CAMSIS SCALE SCORES FOR GERMAN OCCUPATIONAL CODES, CLASSIFIED AT 
  EITHER ISCO-88 OR THE GERMAN NATIONAL KLDB SCHEMA. 

FOR EACH SCHEMA, THREE ALTERNATIVE CAMSIS VERSIONS HAVE BEEN CREATED, 
WHERE THE BASE UNIT WAS EITHER 'TITLE ONLY', 'TITLE-BY-STATUS(4)', 
OR 'TITLE-BY-STATUS(6)'.


*.XLS : CAMSIS scores the six permutations of 3 version for 2 schema, Excel files

*.DOC : report covering scale construction, introduction to the German CAMSIS 
          versions, and some limited discussions of the scale structure
          and it's correlates and associates
 
*.sav : index file of isco-by-status and kldb-by-status based 
           units linked to derived CAMSIS scale scores.                                          links to derived scores for each 
           Indicators on this file also 
           show whether or not an isco-by-status combination was
           represented by any cases in the original data file,             
           and therefore whether the score assigned was 
           calculated from the original data, or was assigned 
           through imputation. See further below. 

*.dat : simple versions of the *.sav files linking occupational base
        unit indexes to the derived CAMSIS scores

ge{91/95}{h/w}{t/s/r}cs{./isco}recode.sps  : (12) SPSS syntax files showing the 
                     linear translation between German 91 KB or 95 ISCO 
                     title-only, title-by-status(4) or title-by-status(6) units, 
                     and appropriate CAMSIS scores for men and women. 






VARIABLE TRANSLATIONS FROM *.SAV AND *.DAT FILES:

    occbst : EITHER (ISCO-88 title * 10) + employment status,
                OR  (KLDB title * 10) + employment status,         
             where employment status is as in empst
 
      occ  : ISCO-88 job title OR KLDB job title

    empst : Employment status, has the values : 
              1 - Self-employed no employees
              2 - Self-employed with employees
              3 - Family assistant
              4 - Civil Service
              5 - Employee (contract)
              6 - Worker
              9 - Unknown


TO USE THIS FILE : Derive a variable on your own data called 
    occbst, which is numerically equal to one of the three
      possible categorisations : 

       a) {title}*10 + 9, ie title only, no info on status.

       b) {title}*10 + empst[1], where empst1 has 4 categores, 
            values 1,2,3 and 5 (and 9), namely as above but with categories
            4,5 and 6 merged together into 5.

       c)  {title}*10 + empst[2], where empst2 has 6/7 categores, 
            values 1,2,3,4,5 and 6 (and 9), namely as above.

 

The next set of variables in this file refer to scores for those 
categories, depending on the schema used, a, b or c. 

The score variables are indexed as follows : 

     [h/w]    : Score applies to males or females (husbands / wives)
     [k/i]    : Score applies to KLDB or ISCO base unit
     [t/s/r]  : Score derived for the title only base unit, or the 
                 title by status(4) base unit, or the title by status(6) base unit.
       cs
      
Additional variables indicate occupational unit subgroup mean scores : 

           [h/w]  : Applies to males or females
           [o/p]  : Derived for a subgroup only or subgroup-by-status unit
           [./s/r]: Base unit title only or t-b-s(4) or t-b-s(6)
          [1/2/3] : Major group / sub-major group / minor group
           cs
            

---------------------------------------------------.

ADDITIONAL NOTES:


- RELEASE 1.2 CF RELEASE 1.1
  - Addition of spss syntax files showing direct recoding from 
   occupational units to relevant CAMSIS scores; addition of 
   report file. 

- RELEASE 1.1 CF RELEASE 1.0
   -The bulk of the content of the files is unchanged, though we 
    have corrected a mistake in the value labels of the originally 
    release Excel files, and we have altered the way certain occupational 
    units in the index file, which were not represented themselves by 
    any active cases in the scale construction process, have scores 
    imputed to them on the basis of their subgroup neighbours' mean 
    values. 

--------------------------------------------------.
EOF. this file will be updated 


----------------------------------------





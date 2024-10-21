

*************************************************.

* NOTES ON THE ARCHIVE TURKEY90CAMSISV1.ZIP.


TURKISH CAMSIS PUBLIC USE ARCHIVES Version 1.1

-LINKAGE BETWEEN ISCO-68 OCCUPATIONAL UNITS 
                   AND TURKISH 1990 CAMSIS SCORES 



***********************************.
* Version updates :.
*
* Version 1.1 : addition of SPSS syntax files translating occ 
*               units into CAMSIS codes, 29.7.02
* Version 1.0 : first release, 16.5.02.
************************************.





*******************************************************.

FILE CONTENTS:

tu90isco68.sav :  Index file linking Turkish CAMSIS scores with 
                 occupational units defined at the level of ISCO-68 
                 title cross by employment status category. 
                 This file contains variables indicating the 
                occupational units and associated CAMSIS scores across 
              a small range of alternative CAMSIS versions and relevant 
                units of anlaysis. 
                The file also contains variables which indicate the 
                 number of cases which contributed towards the scale 
                derivation with regard to each particular occupational unit. 

tu90isco68.dat   : Plain text data file containing the most 
                 important variables from tu90isco68.sav

 [ *.DOC]     :   [To be added : report documenting the construction 
                     of Turkish CAMSIS version] 


     *.xls    : CAMSIS scores for title-only and title-by-status 
                units in Excel format (more readily browsed over).


tu90{h/w}{t/s}recode.sps : SPSS syntax files for M and F {h/w} showing 
            linear recode from Turkish ISCO68 units into the 
             appropriate CAMSIS score (ie another format for obtaining 
             values), for title-only / title-by-status {t/s} base units 
    

*******************************************************

VARIABLE NAME SCHEMA USED IN THE INDEX FILE: 


   occbst :  (ISCO-68 title * 10) + employment status,
                where employment status is as in empst
 
      occ  : ISCO-68 job title 

    empst : Employment status, has the values : 
             
              2 - Employee
              3 - Employer
              4 - Self-employed no employees
              5 - Family assistant
              9 - Unknown


TO USE THIS FILE : Derive a variable on your own data called 
    occbst, which is numerically equal to one of two
      possible categorisations : 

       a) {title}*10 + 9, ie title only, no info on status.

       b) {title}*10 + empst, where empst has 4(5) categores, 
            values 2,3,4,5 (and 9), namely as above 
 
Then match your file with the index file using the derived 
occbst key as an index (see the CAMSIS webpages 'use of scores' 
section for more guidance).



The next set of variables in this file refer to scores and indicators 
for the occupational categories

The core score variables (hitcs, witcs, hiscs, wiscs) 
        are indexed as follows : 

     [h/w]    : Score applies to males or females (husbands / wives)
        i     :
     [t/s]    : Score derived for the title only base unit, or the 
                 title by status base unit.
        cs    : 
      
A number of further score variables indicate the subgroup mean CAMSIS 
scores for the relevant version as associated with the relevant 
subgroup, indexed as follows : 
 
      [h/w]    : Score applies to males or females (husbands / wives)
        [o/p]  : Score is the mean of a title-only based score (o)
                  or a title-by-status based score (p) within the subgroup 
  [{blank}/s]  : Score derived for the title only base unit {blank}
                 or the title by status base unit (s).
        [1/2]  : Score derived at the major group (1) or submajor 
             group (2) ISCO-68 level 
         cs    : 


A SCORE OF -999 IS USED AS AN INDICATOR OF A MISSING VALUE, WHERE NO 
IMPUTATION COULD REASONABLY BE MADE.


Lastly a set of variables indicate the number of cases which 
were used in the CAMSIS scale construction to represent the relevant 
occupational base unit. The variables are indexed : 

      [h/w]    : Total applies to males or females (husbands / wives)
     [ti/st]   : Total refers to the cases used in a title-only, or title-by 
                   status based, base units.
    [tot/use]  : Total indicates the total number of cases in the 
                   associated occupation before modelling, or only 
                 the cases which were not treated as 'pseudo-diagonals' 
                  in the modelling stages and were thus 'used'



            


*****************************************************


SCALE DERIVATION:

Although the index files are released at the ISCO-68 title-by-status 
unit level, the dataset from which the scores were derived was based 
upon a relatively low number of non-pseudo-diagonal dual worker 
couples (approx 12,000). This meant that sparsity of representation 
of occupational categories was a more significant problem than in some 
other CAMSIS versions.

The title-only based scores were derived from a CAMSIS model referring 
to 126 unique ISCO-68 title groups (out of a possible .. ISCO68 titles). 
[Reference: Model r2u3p2]


The title-by-status based scores were derived from a CAMSIS model 
referring to 128 unique ISCO-68 MINOR GROUP units cross-classified
by the 4 alternative status categories (out of a possible ... 
ISCO-68 title units * 4 status categories = .. units in total).
[Reference: Model r1u3p6]

****************************************************************

** NOTES SPECIFIC TO THE NATURE OF THE DERIVED TURKISH SCORES:


(also see the file turkeyreport.doc [YET TO BE ADDED 16.5.02]).

 

1) HIGH PROPORTIONS OF EXCLUDED CASES

By and large the number of cases treated as 'pseudo-diagonals' 
during the scale construction stages of the Turkish file derivation
was a relatively small proportion of cases within each base category 
used. However there was one extreme exception to this, namely the 
occupational unit or units associated with farming. See the 
file psds1.xls for lists of pseudo-diagonals in the original 
data [file yet to be added 16.5.02]. 

With the exception of farming occupations therefore we do not 
anticipate the need for any additional account for pseudo-diagionality 
in the treatment of the CAMSIS scores. With regard to farming, we can 
note that in our Turkish sample, approximately 8000 of the 24000 dual-
working couple units modelled, were within-farming diagonals or 'pseud-
diagonals'. Moreover these represented the vast majority of all 
individuals in farming occupations, so that the derived CAMSIS scores
give positions to farming occupations which are based only on the 
marital patterns of a small minority of all farmers. In using the 
CAMSIS scores, therefore, we suggest that this factor be borne in 
mind with regard to the evaluation of the scores attributed to farming 
occupations, whilst analytic uses of the scale values may also benefit 
from an additional indictor, such as a dummy variable, which is used 
to highlight specifically farming occupational units. 



2) SPECIFIC OCCUPATIONAL SCORES WORTH ATTENTION


2.1)

THERE ARE NO CAMSIS SCORES ESTIMATED FOR OCCUPATIONS IN THE ARMED
FORCES. This occurs because the dataset on which the scale construction 
was based contained no cases recorded as being in the armed forces, 
whilst the ISCO-68 schema does not allow any unambiguous grouping of this 
occupations as part of a wider occupational subgroup. Therefore, the 
CAMSIS distriubtion index files do not contain cases for the ISCO-68 
(armed forces) occupational units 10000-10009.

2.2) 

During the scale construction for both the title-by-status 
and title-only versions, a few occupational units consistently 
generated CAMSIS scores which differed from our expected ranking 
of them. 

First, all male 'workers in religion' (ISCO-68 minor group=14)
were attributed a score closer to the 
dimension pole of 'disadvantage' than is typical in other CAMSIS 
evaluations. However, examination of those cases involved in dual worker 
partnerships suggested that the distribution of partners' occupations 
was geniunely spread in such a way that such scores would be expected 
(that is, there was no evidence that this unexpected result was the 
artefact of one or two pseudo-diagonals). In this case we therefore 
accepted the ranking of workers in religion derived from these models.


Second, a similar observation and conclusion concerned the occupational 
units associated with the ISCO minor category 99, labourers not elsewhere
classified. In many other CAMSIS applications we have excluded such 
nec groups from involvement in the scale construction process, although 
this was not done in the case of Turkey in the belief that the word 
'labourers' implied, not all workers, but only workers of a certain grade. 
However the CAMSIS scale construction models consistently rank these 
nec categories much further towards the advantaged position than we 
would otherwise expect. Again, upon inspection, these positions do 
genuinely appear to reflect diversity in partnership patterns, and 
again we chose to leave the scores as they are, albeit with the proviso
that used expect the nec category to reflect all nec workers, and 
not only manual labourers. 

Indeed, in the subsequent distribution of occupational scores, we
see that both these specific nec labourer categories, and some of 
their sub-group neighbours who have the mean value of the subgroup 
imputed to represent them, can be seen to have 'undesirably' 
relatively advantaged scores (in particular for the male title-by-status
based versions). 

********************************************************.
**************************************************************.


** 16.5.02 : THIS DOCUMENTATION SHOULD BE UPDATED IN 
   THE NEAR FUTURE. 


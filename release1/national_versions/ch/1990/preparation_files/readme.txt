

*********************************************************.

* SWISS CAMSIS SCORES : PUBLIC RELEASE ZIP ARCHIVE DESCRIPTION FILE.


** Release 2.1 
** -Placed by Paul Lambert (lambertp@cardiff.ac.uk) on 29.7.02.


**************************.
* Release 2.1 cf 2.0 : 
          -addition of SPSS syntax files showing direct 
           recoding from occ units to relevant CAMSIS scores.
* Release 2.0 cf 1.0 : 
          - These files available from 4.4.02 represent a revision, 2.0, to  
      the scaling methods used in the CAMSIS scale construction. Further 
        details at www.cf.ac.uk/socsi/CAMSIS/updates.txt .
*************************************.




************************************************************.

* 1) ARCHIVE DESCRIPTION





* The archive swisscamsis1990v2.zip contains the following files : 


 readme.txt : archive description file

 swisspberindex.sav : SPSS index file for PBER occupational units
 swisspberindex.dat : Plain text index file for PBER occupational units

 swissiscoindex.sav : SPSS index file for ISCO occupational units
 swissiscoindex.dat : Plain text index file for ISCO occupational units
 
 swisscamsisreport.doc : report on the construction of the CAMSIS 
     scales for Switzerland, with discussion of nature of derived 
     CAMSIS scales and brief evidence of predictive validity

 {isco/pber}{title/titlebystatus}scores.xls : 
      browsable excel files showing range of CAMSIS scores .
 
  poorlyrepresentedoccs.xls : 
   excel file showing the names of occupational 
   units for the various CAMSIS scale constructions which were effectively 
   represented by fewer than half of their original cases in the model 
   construction process, because of high numbers of 'pseudo-diagonal' 
   combinations (see report doc for comments)

 scaleconstructionfiles.zip : 
    Collection of files used in the scale construction process. 
    Two SPSS data files occsisco.sav and occspber.sav show the links 
    between the original occupational base unit numeric values and their 
    'square autorecoded' values as used in the scale construction models. 
    Four SPSS syntax files show which of the 'square autorecoded' occupational 
    combinations were treated as 'pseudo-diagonals' and the subsequent 
    production of data files and design matrixes on which the models were run
    (named construct{pber/isco}{title/bst}.sps). 
    Two SPSS syntax files containing macros for occupational unit subgroup 
    constructions and value labelling. 
    Finally four lEM command files show the lEM commands used to produce 
    the four models from which the eight CAMSIS scales were derived
     (named lemodels{pber/isco}{title/bst}.inp).      
    AT 4.4.02 ONLY THE ISCO CONSTRUCTION SPSS SYNTAX FILES ARE INCLUDED. 

pbertoiscotranslate.doc : 
      Word file documenting the translation used to derive ISCO-88(COM)
      values for the Swiss census data by a direct translation from the 
      Swiss national ("PBER") occupational schema. 


swiss{h/w}{t/s}cs{pber/isco}recode.sps  : 
                     (8) SPSS syntax files showing the 
                     linear translation between Swiss PBER or ISCO
                     title-only or title-by-status units, 
                     and appropriate CAMSIS scores for men and women. 


--------------------------------------------------------
--------------------------------------------------------
-----

The plain text index files and the SPSS index files have the same entries 
with the exception of 8 additional variables found on the SPSS files 
only, which indicate the number of original cases which represented 
the relevant unit in the scale construction, and the number of cases 
which effectively represented the relevant unit in the scale derivation 
after 'pseudo-diagonal' combinations were excluded. 
 

* (Cardiff note : data files are produced by renaming the "swiss..scoreexternal.sav" files 
*         produced by the "mkscores..sps" files)



***************************************************************.

**  2) USING THE INDEX FILES


Separate CAMSIS scores have been derived for the two alternative
occupational units, ISCO-88Com (ISCO) and the Swiss national 
schema (PBER). Additionally, separate scales have been created 
for circumstances where there is some information on the 
employment status of the occupations, and for circumstances where 
there is none. 

However, the structures of the two separate files, one for the 
PBER and one for the ISCO occupational schema, are otherwise 
identical. 


Both index files contain a single record for every permutation of 
possible occupational title unit, cross-classified by employment status 
categorised into 4 categories. 

The occupational title unit is the variable OCC.

The employment status unit is the variable EMPST, with the 
following groups : 

'empst' is a 4 fold indicator of employment status, values : 
  1    Self-employed
  2    Family Assistant
  3    Employee
  9    Unknown employment status

Note : It was originally calculated by collapsing the categories of a 
6-fold employment status definition from the Swiss 1990 census
as follows : 
1 Self-employed + 4 employed in own PLC = 1
2 Worker/partner in relatives' firm = 2
3 Apprentice + 5 Employee = 3
9 unknown = 9



The key indexing variable is therefore the crossclassificion of 
these values, called OCCBST, which is calculated as 
OCCBST = (10*OCC) + EMPST.

 
TO USE THESE INDEX FILES, THEREFORE, USERS SHOULD CALCULATE AN 
EQUIVALENT OCCBST VARIABLE FOR EACH CASE IN THEIR RECORDS. IF 
OCCUPATIONAL STATUS INFORMATION IS NOT CATEGORISABLE FOR SOME OR
ANY CASES, THEN THE VALUE OF EMPST SHOULD SIMPLY BE 9. 



There are then 4 variables in each index file which have CAMSIS 
scores attached at the OCCBST unit. Their names take the 
following form : 

{H/W}{P/I}{T/S}CS  

where : 

{H/W} indicates if the scores are appropriate for the male (H) 
or female (W) subpopulations

{P/I} indicates whether the scores are relevant to PBER or ISCO units. 

{T/S} indicates whether the scores have been derived at the title
only (T) or title-by-status (S) units (if any employment status 
information is available to the user, the title-by-status derivation
is recommended; if no status information is available, the title only 
derivation is recommended, although technically either derivation 
can be used in either circumstance. 

********************************************************.

* Examples : file matching in SPSS : 

* a) current file have PBER units in var 'title', and has 
*  and employment status categorisation consistent with the 
*   EMPST above, in the var 'status'.

compute occbst=title*10 + status. 
sort cases by occbst. 
match files file=* /table="swisspberindex.sav" /by=occbst.

* b) current file has ISCO units in var 'title', and has 
*  no employment status info.

compute occbst=title*10 + 9. 
sort cases by occbst. 
match files file=* /table="swissiscoindex.sav" /by=occbst.

*********************************************************.

3) INTRODUCTION TO CAMSIS SCORES

The CAMSIS scores have been rescaled to have a range from 1 to 
999 within each unit by gender population for which they have been
derived : it should be noted, therefore, that the mean value of
the rescaled scores does not carry any meaning; instead the 
scores simple indicate relative locations between occupational 
groups. 

We suggest that new users begin by browsing the CAMSIS scores  
according to the four different versions of occupational units used, 
which may be found in the plain text and SPSS index files, and 
also in four corresponding excel files "*scores.xls".
 
It is possible to check the ordering of the male and female unit scores 
by sorting this data within excel according to the assigned score values
(to do this, highlight the full contents of the table, then
use the "data -> sort" windows option on the 'male' and 'female' score variables; 
take care not to sort only part of the table, as this will lead to case 
orders being falsely combined - if in doubt return to the original files). 



*********************************************************.

4) IMPUTATIONS AND MAJOR GROUP AVERAGES

Not every occupational title-by-status unit involved in the index
files was actually represented in the original scale derivation 
data. The complete set of scores in the index files has been 
achieved by assigning unrepresented title-by-status units the average 
score assigned to their nearest major or minor occupational group, 
or major or minor occupational group by status. 

[Further details available]


In some circumstances however it is also useful for end users to 
know such major and minor group mean scores (from the original 
census population). For instance, this can be relevant if some 
or all of the original data is only available at a higher level of 
detail than the occupational unit group usually used. To provide for
such circumstances, the remaining variables on the index files
represent such major and minor group averages, as explained below :

Variable names : {H/W}{O/P}{[blank]/S}{1/2/3}CS 

H/W : Male (H) or Female (W)
O/P : Applies to a major or minor group unit (o) or a 
      major or minor group-by-status unit (p)
[blank]/S : Derived from the title-only or title-by-status model
1/2/3  : Refers to a major group mean (1), 
         or a sub-major group mean (2), or a minor group mean (3).


If necessary, these means can be used themselves as matching index
cases. 



*********************************************************.

5)  NOTE ON GENDER


IT IS IMPORTANT TO EMPHASISE THAT THE CAMSIS SCALES HAVE BEEN 
DERIVED SEPARATELY FOR MEN AND WOMEN. MALE AND FEMALE SCORES DO 
NOT THEREFORE FOLLOW THE SAME SCALE (ALTHOUGH IN PRACTICE THEIR 
PROPERTIES ARE CLOSELY RELATED).

The CAMSIS scales are therefore most appropriately used in analyses
where the two gender groups are treated separately. 

If a researcher wishes to conduct an analysis on a mixed gender 
sample, there are two possible solutions to deriving an appropriate 
CAMSIS representation. 

a) The simplest and probably the most reliable is simply to assign
all women the male scores appropriate to their title. However, 
this method is insensitive to occupational differentiation by 
gender

b) Another solution is to standardise both male and female scores 
around the sample average for whichever sample population is being 
used. The two scores can then be treated as centred aound the 
same value, and the scores will therefore indicate relative within-
gender situation. This approach, however, is insenstive to aggregate
differences in startification position of men and women. 




**********************************************.



6) Indicator variables for the number of cases representing an 
occupational unit during scale construction. 

The SPSS files additionally have 8 variables which indicate 
the number of cases which represented the relevant occupational 
units during the scale construction. Their names have the following 
form : 


{h/w}{ti/st}{tot/use} where the permuations cover :

{h/w} : male or female units

{ti/st} : title-only or title-by-status base unit

{tot/use} : total number of cases in original dataset, or total 
   number of non-pseudo-diagonal cases used in subsequent models.




25.9.02 .


UK 1991 CAMSIS SCORES DISTRIBUTION ARCHIVE FILE, RELEASE 2.0


CONTENTS OF GB91CAMSISv2.ZIP


*.XLS : Excel file tables listing CAMSIS scores by occupational units 
          (with and without employment status differences)
*.DOC : [TO ADD : report on scale construction and review of CAMSIS scores] 

britain91socindex.sav : 
                 index file of UK SOC-by-status  combinations with                                            links to derived scores for each 
                  SOC and Status value and associated CAMSIS scores. 
                 Other variables on this file include: 
                 *empst: indicators of derivations of employment status used;
                 nhbst-hstuse: indicators of number of cases representing each unit 
                 during scale derivation; 
                 o{1/2/3}* : indicators of membership of occupational subgroups (major
                 groups etc) plus average CAMSIS scores for those subgroups

britain91socindex.dat : core vars from britain91socindex.sav in plain text

ukcamsisbyisco{title}.sav  : index files linking ISCO88-by-status 
                       occupational units with the appropriate UK 1991
                     CAMSIS scores ('title' file at title only level)

[TO ADD: 
uk91{h/w}cs{soc/isco}recode.sps  : (4) SPSS syntax files showing the 
                     linear translation between UK SOC, or ISCO88, 
                     title-only or title-by-status units, 
                     and appropriate CAMSIS scores for men and women. ]






PRIMARY VARIABLE DEFINITIONS :

     occ  : SOC-90 job title

     isco : ISCO-88 job title

    lempst : Employment status, has the values : 
           0 "Status unknown" (ie, 1 thru 9 combined)
           1 "Self-employed" (ie, 2+4+5)
           2 "Self-employed without employees"
           3 "Self-employed with employees" (ie, 4+5)
           4 "Self-employed small employer (le 25)"
           5 "Self-employed large employer (gt 25)"
           6 "Employee" (ie 7+8+9)
           7 "Employee, not supvr or manager"
           8 "Employee: Supervisor"
           9 "Employee: Manager" .              

NOTE: this variable is derived from the 'source' variable 'empst' which 
   has 6 categories as analysed during the derivation of the scale scores, 
   namely: 
              1 - Self-employed gt 25 employees
              2 - Self-employed 1-25 employees
              3 - Self-employed 0 employees
              4 - Manager 
              6 - Supervisor
              7 - Employee
             

Categories in lempst which do not directly match a category in empst 
have CAMSIS scores assigned to them which are the weighted average of 
the precisely defined component categories 


------------------------------------------------------------



TO USE THE INDEX FILE : 

    1) Derive a variable on your own data called 
    occ, which is numerically equal to SOC title (or ISCO88 if using 
    the ISCO file), and another variable called lempst, which has 
    values corresponding to the definition above (using as much or 
    as little detail on employment status as is available to you), 
    then match each unit by the CAMSIS scores assigned to the appropriate
    SOC by status category, by matching your data with the .sav or 
    .dat matching index. (Note that the SPSS syntax files show the quick 
    translation of occ units in the absence of any employment status information, 
    ie the circumstance where lempst=0 for all cases)

    2) The main variables of interest on the index files are 'hcs' and 'wcs', 
      the CAMSIS scores for the respective units if they are held by men or 
      women separately. Variable labels on the SPSS data file should clarify the 
      meaning of the other variables included, or further details are 
      available from the CAMSIS project webpages


   3) Remeber that the CAMSIS scores are gender specific!! Many users 
      choose to create a merged variable which comprises the male scores for
      men and the female scores for women. This is justifiable because both 
      sets of scores indicate relative position within the male or female order. 
      Nevertheless it is not strictly an accurate use of the scores without 
      sensitivity to the gendered nature of the values. 

Example SPSS command syntax to merge user's data with CAMSIS index scores.
User's raw data includes SOC information but only status information is 
a dichotomy between self-employment position. 

*-------.
get file="britain91socindex.sav".
sort cases by occ lempst. 
sav out="mtch1.sav" /keep=occ lempst hcs wcs.
get file="usersdata.sav". 
compute occ=jbsoc. 
compute lempst=0.
if (selfem=1) lempst=1.
if (selfem=2) lempst=6.
sort cases by occ lempst. 
match files file=* /table="mtch1.sav" /by=occ lempst. 
descriptives var=jbsoc lempst hcs wcs. 
compute xgencs=-999.
if (sex=1) xgencs=hcs. 
if (sex=2) xgencs=wcs. 
missing values xgencs (-999).
means tables=xgencs by sex. 
*--------.





---------------------------------------------------

Note on the ISCO translation index file : 

  CAMSIS scores associated with each unit, at the title-only or 
   title-by-status level using the same codes as in the soc index file, 
   have been match by using a translation from SOC90 to ISCO-88 
   supplied by the Occupational Information Unit, see the CAMSIS 
   webpages, 'Occupational Unit Codings' page, 
    http://www.cf.ac.uk/socsi/CAMSIS/occunits/distribution.html .
    
  Additionally some scores were imputed to ISCO values which are 
   not covered by the OIU translation by imputing minor, submajor 
   or major group mean scores. 
   
  For interest we have also attached two variables which indicate 
   alternative stratification measures on this file, namely the 
   1977 SIOPS 'prestige scale' and the 1996 ISEI scale of 'socia-economic 
    status', using macros which link ISCO scores to the values as 
   provided by Harry Ganzeboom (again see our occupations information webpage). 


------------------------------------------------------

NOTE: CAMSIS and the LIS and LES projects: 

The CAMSIS scores distributed here have also been supplied as index 
files to the LIS and LES survey database (www.lisproject.org), and 
users may link their occupational information with CAMSIS scores by 
followng instructions at www.cf.ac.uk/socsi/CAMSIS/LISLES.html


---------------------------------------------------


UPDATES FROM RELEASE 1.1 TO RELEASE 2 (Sep 02)

The CAMSIS scores have been re-estimated and the release format altered. 

The primary change concerns the adjustment of the employment status 
variable lempst and the imputation of CAMSIS scores to the lempst 
merged categories. These are based on population averages of the 
constituent categories (weighting undertaken within occupational units 
based on the distribution of cases to employment status categories; if 
no cases from any relevant employment status category were present, then 
weigting was done in terms of subgroup-by-status proportions).

The release 1 scores involved the construction of two separate CAMSIS versions
for Britain in 1991, namely a 'title-only' version and a 'title-by-status' 
version. In release 2 however only one version is constructed, the title-by-status
version, and scores are imputed to deal with categories where limited or 
no information is available on employment status position. This generates 
a more consistent set of scores for the range of data permutations commonly 
held by users. 

In practice, all the release 1 and 2 distributions of CAMSIS scores are 
very strongly correlated, for instance o Pearson correlation of 0.99 in a 
nationally representative population. 


Users wishing to compare the Release 1.1 scores, which were available 
for download from this website until Sep 02, are welcome to contact us and 
we can supply the relevant files. 

--------------------------------------------------

UPDATES FROM RELEASE 1 TO RELEASE 1.1 (May 02)

Addition of scores for ISCO-linked file. 
Addition of SPSS syntax files indicating linear translations from 
occupational units to CAMSIS scores.

------------------------------------------------

FIRST RELEASE OF CAMSIS SCORES 1.0: March 02

--------------------------------------------------------


* EOF 10.9.02. 


The contents of these files prepared by: 

Paul Lambert: lambertp@cf.ac.uk
Ken Prandy: prandyk@cf.ac.uk

---------------------------------------------------------


  



24.4.02 .


CONTENTS OF US90CAMSISv1.ZIP


*.XLS : Excel file tables listing CAMSIS scores at title-only and title-by-status level
*.DOC : [TO ADD : report on scale construction including tables
             of model statistics]
us90socindex.sav : index file of soc-by-status unit combinations with                                            links to derived scores for each 
                   associated derived soc-by-status CAMSIS values. 
                 Also, indicators ({h/w}orig{1/2} on this file 
                 show whether or not a soc-by-status combination was
                 represented by any cases in the original data file.

us90socindex.dat : core vars from us90socindex.sav in plain text

uscamsisbyisco.sav : index file linking the CAMSIS scores derived on 
                  US SOC units, to the most appropriate ISCO-88 unit 
                  values, achieved by associating SOC90 and ISCO values 
                  through the translation files available from the 
                   CAMSIS 'occupational unit group' page (itself derived 
                 from linking macros supplied by Harry Ganzeboom). 

us90*recodes.sps : Simple SPSS syntax files which allow for the 
                 creation of CAMSIS score vairables within an SPSS 
                 database through translating title-only and title-by-status 
                 unit variables. Users may find these easier to use than 
                 the index data files. 




TRANSLATIONS :

    occbst : (soc-90 title * 10) + employment status, 
             where employment status is as in empst
 
      occ  : soc-90 job title

    empst : Employment status, has the values : 
              
       - 1 "Self-employed not incorporated" 
       - 2 "Family worker" 
       - 3 "Self-employed incorporated" 
       - 4 "Government employee" 
       - 5 "Private employee"
       - 9 "Unknown".



TO USE THIS FILE : Derive a variable on your own data called 
    occbst, which is numerically equal to one of two
      possible categorisations : 

       
       a) (SOC title*10) + empst, where empst has up to 8 categores, 
            corresponding to the above.

       b) (SOC title*10) + 9, ie title only, no info on status.
 

The next set of variables in this file refer to CAMSIS scores for those 
categories, depending on the schema used, a, or b . 

The score variables are indexed as follows : 

     [h/w]    : Score applies to males or females (husbands / wives)
       i
     [t/s]    : Score derived for the title-only or title-by-status base unit
       cs  


---------------------------------------------------

NOTE ON US CAMSIS SCALES VERSION1 : 

- 1) FEMALE FAMILY ASSISTANTS : 

The inclusion of the 'family assistant' employment status category
is a regular problematic for the CAMSIS derivation, since a high 
proportion of these cases are typically considered part of a pseudo-
diagonal combination. 

Our review of the scale scores for the US male occupations seemed to 
suggest that the pseudo-diagonals used in version 1.0 were an adequate 
account for Family Assistant cases, but that for the female occupations, 
a number of positions remained relatively extreme towards the positive 
dimension. In fact, the patterns of husbands' occupations revealed 
by those female cases (eg Female Family assistant registered nurses, 
occbst=952) apprear genuinely, if unexpectedly, heavily skewed in a 
non-pseudo diagonal way. (We would regard the occ as part of a psd if 
the husband was in an institutionally linked occupation, eg for the 952 categories, 
if the husband was a doctor. However these cases have already been accounted for, 
leaving the remaining female cases represented by husbands in non-linked occs, 
which for the 952 example remain highly advantaged. Our _hypothesis_ to 
explain this is that the relevant women are the daughters / sisters of 
the {doctors / etc} that they are family assistants to, and they have married 
'out' to an equivalently advantaged position). 

Nevertheless this issue of handling these psd cases may benefit from 
further attention, and we hope to review the current CAMSIS models used 
for version 1.0, possibly leading to a revised set of scores which may 
in the future be added as version 2.0. 

More details on this issue will hopefully be added to the US 
CAMSIS project report and distributed in the near future [24.4.02]


- 2)  MALE ADVANTAGE : TEACHERS, TEACHERS AND MORE BLOODY TEACHERS

A review of the structure of the US90 CAMSIS scores will reveal that 
very many of the 'most advantaged' occupational titles in the male 
schema belong to types of teachers. These extremeities are apparently NOT the 
effect of pseudo-diagonality, because combinations where husbands and 
wives are both teachers were already treated as psds in the scale construction. 

Many reactions to such scaling values are scepticism, with the belief 
that 'teacher' categories should not be regarded as some of the most 
advantaged. We have two responses. Firstly, the CAMSIS project consistently 
places occupations with high educational credentialisation at the positive 
extreme across many different versions, and indeed specifically _university_
teachers are nearly always ranked as the most extreme group in terms of 
social interaction. In this respect academic and educational occupations really 
can be regarded as amongst the most advantaged in societies. 

Secondly, specific to the USA, our current understanding of the 1990 
SOC categories is that most of the teacher categories at the top of the 
CAMSIS version are actually 'post-secondary', or university / college, 
teachers. Indeed the other teacher categories, associated with secondary 
and elementary school, remain advantaged but in a less extreme position. 



-- 3) ISCO linking file : The scores supplied on this file are 
     CASMIS scores, origially associated with 1990 SOC units, 
      but which are now matched to ISCO units on the basis 
     a linking macro file supplied by Harry Ganzeboom (also 
     discussed on the 'occupational units' section of the webpages, 
        http://www.cf.ac.uk/socsi/CAMSIS/occunits/distribution.html ).
     The same variable name conventions as with SOC90 units are used.


------------------------------------------.








------------------------------------------------------- 

---------------------------------------------------

* EOF 24.4.02. More details to this readme file and the archive 
  need to be added and will be in the near future. 
* (Paul Lambert: lambertp@cf.ac.uk)






HIS-CAM v0.2 


Documentation note 


First release: 

25 February 2008 


Last update: 

29 February 2008 



Location of these files: 

http://www.camsis.stir.ac.uk/hiscam/

http://www.geode.stir.ac.uk/



Authors: 

Paul Lambert (University of Stirling, contact paul.lambert@stirling.ac.uk) 
Richard Zijdeman (University of Utrecht)
Ineke Maas (University of Utrecht)
Marco van Leeuwen (International Institute for Social History, University of Amsterdam)
Ken Prandy (University of Cardiff)



Abstract: 

The HIS-CAM v0.2 data files comprise indexes of HISCO occupational units (Historical International Standard Classification of Occupations, http://historyofwork.iisg.nl/). These are linked with an array of appropriate HIS-CAM (version 0.2) scales, derived from data for the period 1800-1938. 

HIS-CAM scales are derived from the analysis of patterns of social interaction between the incumbents of occupatoinal locations, using a methodology defined through the CAMSIS project (www.camsis.stir.ac.uk). In the HIS-CAM research, intergenerational social mobility data is used as the social interaction datum. This data takes the form of information on child-parent occupational connections at a certain point in time. The data used in HIS-CAM is obtained from a variety of studies. They are usually, but not always, based upon marriage registers, and usually refer to the occupational connections at the time at marriage. 

CAMSIS scales are ordinarily interpreted as measures of the relative experience of social stratification advantage or disadvantage associated within an occupation. The authors advocate this interpretation with regard to the HIS-CAM v0.2 scales, but with some qualifications (see comments in Lambert et al 2008). 

The HIS-CAM v0.2 scales are calculated from a simple correspondence analysis of parent-child intergenerational contacts. Further details on the methodology of the scale estimations is given in Lambert et al (2008). 825 different scales are calculated. Each different scale refers to analysis of a different population of inter-generational contacts. Each population is specified according to a substantively different context, such as a different country or time period (see Lambert et al 2008).  



Details on HIS-CAM v0.2 files: 

There are 15 files comprising 5 distinctive data files, with the following names 

hiscam_major_1digit_v02 
hiscam_1digit_v02 
hiscam__minor_2digit_v02 
hiscam_3digit_v02 
hiscam_5digit_v02 

Each of these data files is available in 3 formats, plain text tab delimited (*.dat); Stata (*.dta, version 10); and SPSS (*.sav, version 15). 

The five distinctive files refer to the five different 'levels of analysis' at which HIS-CAM occupational scales are estimated. These are respectively: Level 7: HISCO major groups (1-digit, 7 categories); Level 1: HISCO 1-digit codes (1-digit, 10 categories); Level 2: HISCO minor groups (2-digit, 78 categories); Level 3: HISCO unit groups in 3-digit codes (3-digit, up to 303 categories); Level 5: HISCO unit groups in 5-digit codes (5-digit, up to 1281 categories). 

Within each file, the first columns of the data refers to the occupational unit for the appropriate level of analysis. 

Subsequent colums in the data refer to alternative HIS-CAM scale scores advocated for the relevant occupational unit. The variable naming convention is: cn_sn_tn, where n refers to a number as follows: 

c (Country for which the scale is derived) 

0 - All countries combined
1 - Netherlands
2 - Germany
3 - France
4 - Sweden
5 - Britain
6 - Canada
7 - USA
8 - Belgium
9 - All countries combined, excluding USA 

s (gender description for the intergenerational occupational connection) 

1 - Male or female child to male or female parent
2 - Male child to male parent only
3 - Female child to male parent only
4 - Female child to femae parent only 

t (time of marriages of data points over which the scales is derived)

1 - 1800-1938
2 - 1800-1890
3 - 1891-1938
4 - Early, national specific
5 - Late, national specific 


(Time periods 4 and 5 are different for each country; see details in Lambert et al 2008). 

The HIS-CAM scales potentially cover 1000 different data permutations (5 levels of analysis * 10 countries * 4 gender groups * 5 time periods). In practice, several countries do not have relevant micro-data for all gender groups, so some scale perumutations are not calculated. In HIS-CAM v0.2, 825 different scales are produced (165 for each level of analysis). 

Additional remarks on the data 

Within each data file, HIS-CAM scale scores are standardised to range from 1 to 100, with a mean of 50 and standard deviation 15 for the population of intergenerational combinations on which they were derived. 

Missing data on the HIS-CAM scale scores for any particular occupation indicates that no appropriate occupations were represented in the relevant subsample from which the scale was derived. 
 
Data values on some of the files were updated on 29 Feb 2008 (previous release 25 Feb 2008) following a minor re-calculation in the extraction of dimension scores from the correspondence analysis model. 


Relevant Papers / Citation information: 

HIS-CAM websites: 

http://www.camsis.stir.ac.uk/hiscam/

http://historyofwork.iisg.nl/



Description of HIS-CAM v0.2: 

Lambert, P. S., Zijdeman, R. L., Maas, I., Van Leeuwen, M. H. D., & Prandy, K. (2008). HIS-CAM. Presentation and evaluation of an historical occupational stratification scale. Lisbon: Paper presented to the European Social Science History Conference, Lisbon, 26 Feb-1st March 2008, and http://www.camsis.stir.ac.uk/hiscam/ 



Description of HIS-CAM v0.1: 

Lambert, P. S., Zijdeman, R. L., Maas, I., Prandy, K., & Van Leeuwen, M. H. D. (2006). Testing the universality of historical occupational stratifcation structures across time and space. Paper presented at the ISA RC-28 on Social Stratification and Mobility, Spring meeting. from http://www.ru.nl/springmeetingnijmegen/conference_papers/conference_papers/.



HISCO: 

van Leeuwen, M. H. D., Maas, I., & Miles, A. (2002). HISCO: Historical International Standard Classification of Occupations. Leuven: Leuven University Press.

http://historyofwork.iisg.nl/



CAMSIS methodological approach: 


http://www.camsis.stir.ac.uk/

Prandy, K., & Jones, F. L. (2001). An international comparative analysis of marriage patterns and social stratification. International Journal of Sociology and Social Policy, 21, 165-183.

Prandy, K., & Lambert, P. S. (2003). Marriage, Social Distance and the Social Space: An alternative derivation and validation of the Cambridge Scale. Sociology, 37(3), 397-411.

Lambert, P. S., Tan, K. L. L., Gayle, V., Prandy, K., Turner, K. J., & Bergman, M. M. (2008). The importance of specificity in occupation-based social classifications. International Journal of Sociology and Social Policy, forthcoming, preprint: http://www.geode.stir.ac.uk/publications.html.



************************************


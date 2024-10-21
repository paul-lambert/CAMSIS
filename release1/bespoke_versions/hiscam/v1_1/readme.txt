

HIS-CAM v1.1 


Documentation note 


First release: 

18 October 2009 


Last update: 

18 October 2009 



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

The HIS-CAM v1.1 data files comprise indexes of HISCO occupational units (Historical International Standard Classification of Occupations, http://historyofwork.iisg.nl/). These are linked with 13 appropriate HIS-CAM (version 1.1) scales, derived from data for the period 1800-1938. 

HIS-CAM scales are derived from the analysis of patterns of social interaction between the incumbents of occupational locations, using a methodology defined through the CAMSIS project (www.camsis.stir.ac.uk). In the HIS-CAM research, intergenerational social mobility data is used as the social interaction datum. This data takes the form of information on child-parent occupational connections at a certain point in time. The data used in HIS-CAM is obtained from a variety of studies. They are usually, but not always, based upon marriage registers, and usually refer to the occupational connections at the time at marriage. 

CAMSIS scales are ordinarily interpreted as measures of the relative experience of social stratification advantage or disadvantage associated within an occupation. The authors advocate this interpretation with regard to the HIS-CAM v1.1 scales. 

The HIS-CAM v1.1 scales are calculated from a correspondence analysis of parent-child intergenerational contacts. Further details on the methodology of the scale estimations is given in Lambert et al (2008) and other forthcoming publications. 


13 different scales are calculated. Each different scale refers to analysis of a different population of inter-generational contacts. Each population is specified according to a substantively different context, such as a different country or time period.  



Details on HIS-CAM v1.1 files: 

There are 13 files comprising, with the following names 

Each of these data files is available in 4 formats: plain text tab delimited (*.dat); Stata (*.dta, version 10); MS Excel; and SPSS (*.sav, version 17). 


Within each file, the first columns of the data refers to the occupational unit for the appropriate level of analysis. The second column refers to the suitable HIS-CAM scale for that unit of analysis. 

The file andvariable naming convention is: cn_sn_tn, where n refers to a number as follows: 

c (Country for which the scale is derived) 

0 - All countries combined
1 - Netherlands
2 - Germany
3 - France
4 - Sweden
5 - Britain
6 - Canada
{7 - USA}
8 - Belgium
9 - All countries combined, excluding USA 

(Country 7 is not included in version 1.1)

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



In an earlier release, we prepared many further HIS-CAM scales for all the permutations of these context (see http://www.camsis.stir.ac.uk/hiscam/v02/). 

In this release, we select 13 important scales, and release them. 


Additional remarks on the data 

Within each data file, HIS-CAM scale scores are standardised to range from 1 to 100, with a mean of 50 and standard deviation 15 for the population of intergenerational combinations on which they were derived. 

Many detailed occupations have a score imputed to them which is the average for a group of related occupational titles. The variable 'orig' in each file indicates if any occupations from that unit were included in the analysis for the relevant version. If its value is zero, then that unit's score is calculated according to the mean score of a related group. The full details of the version 1.1  aggregations behind the scales are available from http://www.camsis.stir.ac.uk/hiscam/v1_1/documentation/

 


Relevant Papers / Citation information: 

HIS-CAM websites: 

http://www.camsis.stir.ac.uk/hiscam/

http://historyofwork.iisg.nl/



Descriptions of HIS-CAM: 

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


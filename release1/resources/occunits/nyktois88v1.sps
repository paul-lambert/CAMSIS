
******************************************************.
* This file shows two possible translations from Swedish Nordic Standard 
* Occupational schema NYK83:fob85/90 (as used on the 1990 census)
* into ISCO-88(Com).
* 
* The first macro is at the 'title-only' level, whilst the second also 
* incorporates information on the Swedish 'socio-economic index' (SEI)
* categorisation. 
**.

***** These are working approximations produced Sept 02 by 
*
* Erik Bihagen, see : 
*
* http://www.mdh.se/isb/sociologi/personal/erikbih/
*
* It was motivated for use in the CAMSIS project, see: 
* http://www.cf.ac.uk/socsi/CAMSIS/ , 
* see in particular the link to Sweden under the 'national versions' page
**   . 


 
** This file was constructed by visual examination of the NYK83
* occupational titles along with information on their component 
* occupations and usual training patterns, which was compared with
* similar information on ISCO88 categories, then approximations of 
* the most appropriate ISCO88 for an NYK category were chosen. 
**.


** A problem with any attempt at a linear translation from NYK83 to 
* ISCO is that many of the NYK categories cover a wider range of 
* occupations, primarily in terms of educational / training circumstances
* than do the ISCO categories (in fact the ISCO schema is 
* deliberately structured to identify gradations that relate to skill
* / training levels in some cases where the NYK83 is not).
*
* A partial workaround in this case concerns the use of information on 
* an individual's 'SEI' index, their 'Socio-Economic Index' category, 
* an occupational stratification schema which is used by Statistics 
* Sweden and is available on many Swedish datasets. If users have 
* this variable available to them, then its cross-classification with 
* NYK occupational titles improves the likely appropriateness of the 
* translation from NYK to ISCO88. The appropriate SEI variable required 
* for this macro reflect the twelve groups SEI (category labels available 
* from Statistics Sweden), but only the following categories need to be 
* identified for the translations below : 56,57,60,11,12,21,22 .
*
*
* Nevertheless many users may not have sEI information available to
* them so these macros provide both for circumstances where 
* SEI is present, and where it is not. 
*
* The construction of macro2 (title only level, no SEI) was conducted 
* by Paul Lambert from the CAMSIS project, by starting with macro1 produced  
* by Erik Bihagen (uses SEI information), then assigning those NYK categories 
* that would preferably be split by SEI to whichever ISCO88 is more 
* common in Western economies (in the absence of a pre-existing Swedish 
* dataset he used German and Swiss data). In practice the main groups of 
* occuaptions which are preferably split by SEI are in engineering,  
* which are split in ISCO-88 between major groups 2 and 3, but
* tend to be combined on NYK; the practical effects of the title only 
* approximation may be to exaggerate the advantage of some NYK classified 
* units towards ISCO, because the more common translation was usually to 
* major group 2 rather than 3. 
*
* Particularly for the title-only translation therefore, please note the 
* possibilty of inappropriate classifications of some NYK occupations 
* under these macros : 
* we stress that the translations below are working approximations only. 
**.



********************************************************.
* USE OF THIS MACRO FILE .
********************************************************.
*
* This file defines two macros named nnnnnytois1 and nnnnnytois2. 
* (note that throughout these notes the duplicate n's are used to 
* avoid citing the macro names precisely to prevent inadvertent calls 
* of them if predefined).
* The first macro operates at only the level of NYK occuaptional 
* title information, and the second proceeds on the assumption that 
* it has been possible to define a variable SEI for Swedish socio-economic
* status. Users of this file should work by : 
*
* 1)  Running this file as an include file in order to define the two 
*    macros, eg
*** include file="[path\]nyktois88v1.sps".
*
* 2) Either call the title only macro naming their title only variable,
*     eg input variable is called occ, want to create new variable called isco88 : 
*** nnnnnytois1 nyk=occ isco=isco88 . 
*    
*    or call the title plus sei macro naming both the title only variable 
*    and the SEI representation, eg input variables are called occ and seiunit,
*    want to create new variable called isco88  : 
*** nnnnnytois2 nyk=occ sei=seiunit isco=isco88 . 
*
**************************************.


* Text below defines the macros :.


******************************************************.
* Macro 1 : using NYK title information only 
*  (same as macro 2 but deleting SEI splits for modal ISCO categories)
*.


* . 

define nytois1 (nyk=!tokens(1) / isco=!tokens(1) ). 

* (transforms Swedish nyk83:fob85/90 into ISCO translating ambigious
*      nyk's into modal ISCO's) .

compute !isco=!nyk. 

recode !isco 
 (1 = 2141) 
 (2 = 2143) 
 (3 = 2144) 
 (4 = 2145) 
 (5 = 3116) 
 (6 = 3117) 
 (7 = 2142) 
 (8 = 2148) 
 (9 = 3119) 
 (12 = 3211) 
 (13 = 3211) 
 (14 = 2114) 
 (15 = 2112) 
 (16 = 2113) 
 (19 = 3111) 
 (21 = 2211) 
 (22 = 3213) 
 (23 = 3213) 
 (29 = 2211) 
 (30 = 1210) 
 (31 = 2310) 
 (32 = 2320) 
 (33 = 2331) 
 (34 = 2320) 
 (35 = 2359) 
 (36 = 2320) 
 (37 = 2352) 
 (39 = 2359) 
 (41 = 2460) 
 (49 = 3480) 
 (51 = 2421) 
 (52 = 2429) 
 (53 = 2429) 
 (54 = 2429) 
 (59 = 2429) 
 (61 = 2451) 
 (62 = 1234) 
 (63 = 1229) 
 (69 = 2451) 
 (71 = 2452) 
 (72 = 3471) 
 (73 = 3471) 
 (74 = 3131) 
 (75 = 3474) 
 (76 = 2453) 
 (77 = 2455) 
 (79 = 2455) 
 (91 = 2432) 
 (92 = 2431) 
 (99 = 2446) 
 (101 = 2221) 
 (102 = 2230) 
 (103 = 3231) 
 (104 = 3232) 
 (105 = 3133) 
 (106 = 5132) 
 (107 = 5132) 
 (109 = 9132) 
 (111 = 3226) 
 (112 = 2229) 
 (119 = 3226) 
 (121 = 2222) 
 (122 = 3225) 
 (123 = 3225) 
 (129 = 3225) 
 (131 = 2224) 
 (139 = 3228) 
 (141 = 2223) 
 (149 = 3227) 
 (151 = 2446) 
 (152 = 1228) 
 (153 = 5131) 
 (154 = 5133) 
 (155 = 1228) 
 (159 = 2446) 
 (161 = 3152) 
 (162 = 3151) 
 (169 = 3152) 
 (191 = 2445) 
 (192 = 3223) 
 (199 = 3460) 
 (201 = 1110) 
 (202 = 3443) 
 (203 = 3444) 
 (209 = 1110) 
 (211 = 2419) 
 (212 = 3431) 
 (219 = 2419) 
 (221 = 2412) 
 (222 = 3423) 
 (229 = 2412) 
 (231 = 2411) 
 (232 = 2411) 
 (239 = 4121) 
 (241 = 4115) 
 (242 = 4111) 
 (249 = 4190) 
 (251 = 2131) 
 (252 = 3122) 
 (259 = 3121) 
 (261 = 2441) 
 (262 = 2122) 
 (269 = 2441) 
 (291 = 4190) 
 (292 = 4122) 
 (293 = 3412) 
 (294 = 3412) 
 (295 = 4221) 
 (296 = 3422) 
 (297 = 1317) 
 (299 = 4190) 
 (311 = 3471) 
 (312 = 3413) 
 (313 = 3419) 
 (319 = 3419) 
 (321 = 3416) 
 (331 = 1314) 
 (332 = 5220) 
 (333 = 5220) 
 (339 = 5220) 
 (399 = 5220) 
 (400 = 1311) 
 (401 = 6112) 
 (402 = 6130) 
 (403 = 6130) 
 (404 = 6130) 
 (405 = 6130) 
 (406 = 6129) 
 (409 = 6112) 
 (411 = 6112) 
 (412 = 6121) 
 (413 = 6112) 
 (414 = 6129) 
 (419 = 6121) 
 (421 = 6154) 
 (431 = 6152) 
 (432 = 6151) 
 (439 = 6152) 
 (441 = 6141) 
 (449 = 6141) 
 (501 = 7111) 
 (509 = 7111) 
 (511 = 8113) 
 (521 = 8121) 
 (531 = 8155) 
 (599 = 7111) 
 (601 = 3142) 
 (602 = 3142) 
 (603 = 3141) 
 (609 = 3142) 
 (611 = 8340) 
 (612 = 8340) 
 (619 = 8340) 
 (621 = 3143) 
 (629 = 3143) 
 (631 = 8311) 
 (640 = 8322) 
 (641 = 8324) 
 (642 = 8322) 
 (643 = 9151) 
 (649 = 8334) 
 (651 = 3144) 
 (652 = 5112) 
 (653 = 5111) 
 (659 = 5112) 
 (661 = 4133) 
 (662 = 3144) 
 (663 = 8312) 
 (664 = 4133) 
 (669 = 4133) 
 (671 = 4142) 
 (673 = 3132) 
 (674 = 3132) 
 (675 = 3132) 
 (679 = 4142) 
 (681 = 4142) 
 (682 = 9151) 
 (689 = 4142) 
 (691 = 4133) 
 (699 = 9330) 
 (701 = 8261) 
 (702 = 7332) 
 (703 = 7432) 
 (705 = 8262) 
 (706 = 7435) 
 (707 = 3152) 
 (709 = 7332) 
 (711 = 7433) 
 (712 = 7434) 
 (713 = 7433) 
 (714 = 7437) 
 (715 = 7435) 
 (716 = 7433) 
 (719 = 7436) 
 (721 = 7442) 
 (722 = 7442) 
 (723 = 8268) 
 (729 = 8269) 
 (731 = 8121) 
 (732 = 8122) 
 (733 = 8122) 
 (735 = 7215) 
 (736 = 7221) 
 (737 = 7211) 
 (739 = 8122) 
 (741 = 7311) 
 (742 = 7311) 
 (743 = 3224) 
 (744 = 3211) 
 (745 = 7313) 
 (746 = 7323) 
 (749 = 7222) 
 (751 = 8211) 
 (752 = 7233) 
 (753 = 7231) 
 (754 = 7213) 
 (755 = 7136) 
 (756 = 7212) 
 (757 = 7214) 
 (758 = 8223) 
 (759 = 7214) 
 (761 = 7241) 
 (762 = 7241) 
 (763 = 8282) 
 (764 = 7244) 
 (765 = 7245) 
 (766 = 3131) 
 (769 = 8282) 
 (771 = 6141) 
 (772 = 8141) 
 (773 = 8240) 
 (775 = 7331) 
 (776 = 7331) 
 (777 = 7423) 
 (779 = 8141) 
 (781 = 7141) 
 (782 = 7132) 
 (783 = 7141) 
 (789 = 7139) 
 (791 = 7122) 
 (793 = 7123) 
 (794 = 7124) 
 (795 = 7134) 
 (796 = 7135) 
 (799 = 7129) 
 (801 = 7341) 
 (802 = 7343) 
 (803 = 8251) 
 (804 = 7345) 
 (805 = 8224) 
 (809 = 8251) 
 (811 = 7322) 
 (812 = 7321) 
 (813 = 8131) 
 (814 = 7323) 
 (819 = 8139) 
 (821 = 8273) 
 (822 = 7412) 
 (823 = 8274) 
 (824 = 8278) 
 (825 = 9320) 
 (826 = 7411) 
 (827 = 8272) 
 (828 = 8279) 
 (829 = 8278) 
 (831 = 8159) 
 (832 = 8151) 
 (833 = 8151) 
 (834 = 8231) 
 (835 = 8232) 
 (839 = 8159) 
 (841 = 8142) 
 (842 = 8143) 
 (843 = 8253) 
 (849 = 8142) 
 (851 = 7129) 
 (852 = 8265) 
 (853 = 7312) 
 (854 = 7113) 
 (859 = 7222) 
 (861 = 8161) 
 (869 = 8161) 
 (871 = 8333) 
 (872 = 8332) 
 (873 = 8334) 
 (879 = 9330) 
 (881 = 9320) 
 (882 = 9330) 
 (889 = 9320) 
 (891 = 9151) 
 (901 = 5161) 
 (902 = 9162) 
 (903 = 5162) 
 (904 = 3441) 
 (905 = 5163) 
 (906 = 5169) 
 (909 = 5169) 
 (911 = 1225) 
 (912 = 5122) 
 (913 = 5123) 
 (914 = 5123) 
 (915 = 4222) 
 (916 = 5111) 
 (919 = 5123) 
 (921 = 5121) 
 (929 = 5121) 
 (931 = 9141) 
 (932 = 9131) 
 (939 = 9141) 
 (941 = 5141) 
 (942 = 5149) 
 (949 = 5141) 
 (951 = 9133) 
 (952 = 9133) 
 (959 = 9133) 
 (961 = 3475) 
 (971 = 5143) 
 (979 = 5149) 
 (981 = 110) 
 (989 = 110) 
 (else = -999) .

!enddefine. 




********************************************************.

******************************************************.
* Macro 2 : using NYK title information plus SEI 
*  (SEI splits some NYK's between two or more different ISCO's)
*.


define nytois2 (nyk=!tokens(1) / sei=!tokens(1)
                   / isco=!tokens(1) ). 

* (transforms Swedish nyk83:fob85/90 into ISCO with help of 
*  Swedish SEI in three categories, (57)(56,57,60=65)(11,12,21,22=25) )
*.

compute !isco=-999. 


* First, recode original SEI values into three categories

recode !sei (56,57,60=65) (11,12,21,22=25) (else=50) (sysmis=sysmis)
                 into #sei2.

if (!nyk = 221 and !sei = 57) !isco =1232.	
if (!nyk = 152 and !sei = 57) !isco =1228.	
if (!nyk = 155 and !sei = 57) !isco =1228.	
if (!nyk = 201 and !sei = 57) !isco =1110.	
if (!nyk = 202 and !sei = 57) !isco =1110.	
if (!nyk = 203 and !sei = 57) !isco =1110.	
if (!nyk = 209 and !sei = 57) !isco =1110.	
if (!nyk = 212 and !sei = 57) !isco =1141.	
if (!nyk = 311 and !sei = 57) !isco =1234.	
if (!nyk = 162 and #sei2 = 65) !isco =2142.	
if (!nyk = 1 and #sei2 = 65) !isco =2141.	
if (!nyk = 2 and #sei2 = 65) !isco =2143.	
if (!nyk = 3 and #sei2 = 65) !isco =2144.	
if (!nyk = 4 and #sei2 = 65) !isco =2145.	
if (!nyk = 5 and #sei2 = 65) !isco =2146.	
if (!nyk = 6 and #sei2 = 65) !isco =2147.	
if (!nyk = 7 and #sei2 = 65) !isco =2142.	
if (!nyk = 8 and #sei2 = 65) !isco =2148.	
if (!nyk = 9 and #sei2 = 65) !isco =2142.	
if (!nyk = 12 and #sei2 = 65) !isco =2142.	
if (!nyk = 13 and #sei2 = 65) !isco =2142.	
if (!nyk = 16 and #sei2 = 65) !isco =2113.	
if (!nyk = 19 and #sei2 = 65) !isco =2113.	
if (!nyk = 41 and #sei2 = 65) !isco =2460.	
if (!nyk = 49 and #sei2 = 65) !isco =2460.	
if (!nyk = 151 and #sei2 = 65) !isco =2446.	
if (!nyk = 159 and #sei2 = 65) !isco =2446.	
if (!nyk = 161 and #sei2 = 65) !isco =2142.	
if (!nyk = 169 and #sei2 = 65) !isco =2142.	
if (!nyk = 199 and #sei2 = 65) !isco =2446.	
if (!nyk = 219 and #sei2 = 65) !isco =2419.	
if (!nyk = 251 and #sei2 = 65) !isco =2131.	
if (!nyk = 292 and #sei2 = 65) !isco =4122.	
if (!nyk = 903 and #sei2 = 65) !isco =5162.	
if (!nyk = 915 and #sei2 = 65) !isco =1315.	
if (!nyk = 231 and #sei2 = 65) !isco =2411.	
if (!nyk = 232 and #sei2 = 65) !isco =2411.	
if (!nyk = 911 and #sei2 = 65) !isco =1225.	
if (!nyk = 74 and #sei2 gt 25) !isco =3131.	
if (!nyk = 221 and !sei ne 57) !isco =2412.	
if (!nyk = 152 and !sei ne 57) !isco =3460.	
if (!nyk = 155 and !sei ne 57) !isco =3460.	
if (!nyk = 201 and !sei ne 57) !isco =3442.	
if (!nyk = 202 and !sei ne 57) !isco =3443.	
if (!nyk = 203 and !sei ne 57) !isco =3444.	
if (!nyk = 209 and !sei ne 57) !isco =3449.	
if (!nyk = 212 and !sei ne 57) !isco =3431.	
if (!nyk = 311 and !sei ne 57) !isco =3471.	
if (!nyk = 162 and #sei2 ne 65) !isco =3151.	
if (!nyk = 1 and #sei2 ne 65) !isco =3112.	
if (!nyk = 2 and #sei2 ne 65) !isco =3113.	
if (!nyk = 3 and #sei2 ne 65) !isco =3114.	
if (!nyk = 4 and #sei2 ne 65) !isco =3115.	
if (!nyk = 5 and #sei2 ne 65) !isco =3116.	
if (!nyk = 6 and #sei2 ne 65) !isco =3117.	
if (!nyk = 7 and #sei2 ne 65) !isco =3119.	
if (!nyk = 8 and #sei2 ne 65) !isco =3119.	
if (!nyk = 9 and #sei2 ne 65) !isco =3119.	
if (!nyk = 12 and #sei2 ne 65) !isco =3211.	
if (!nyk = 13 and #sei2 ne 65) !isco =3211.	
if (!nyk = 16 and #sei2 ne 65) !isco =3111.	
if (!nyk = 19 and #sei2 ne 65) !isco =3111.	
if (!nyk = 41 and #sei2 ne 65) !isco =3480.	
if (!nyk = 49 and #sei2 ne 65) !isco =3480.	
if (!nyk = 151 and #sei2 ne 65) !isco =3460.	
if (!nyk = 159 and #sei2 ne 65) !isco =3460.	
if (!nyk = 161 and #sei2 ne 65) !isco =3152.	
if (!nyk = 169 and #sei2 ne 65) !isco =3152.	
if (!nyk = 199 and #sei2 ne 65) !isco =3460.	
if (!nyk = 219 and #sei2 ne 65) !isco =3431.	
if (!nyk = 251 and #sei2 ne 65) !isco =3121.	
if (!nyk = 292 and #sei2 ne 65) !isco =3411.	
if (!nyk = 903 and #sei2 ne 65) !isco =3450.	
if (!nyk = 915 and #sei2 ne 65) !isco =4222.	
if (!nyk = 231 and #sei2 ne 65) !isco =4121.	
if (!nyk = 232 and #sei2 ne 65) !isco =4121.	
if (!nyk = 911 and #sei2 ne 65) !isco =5122.	
if (!nyk = 74 and #sei2 = 25) !isco =7344.	
if (!nyk = 30) !isco = 1210.	
if (!nyk = 34) !isco = 2320.	
if (!nyk = 35) !isco = 2359.	
if (!nyk = 36) !isco = 2320.	
if (!nyk = 37) !isco = 2352.	
if (!nyk = 39) !isco = 2359.	
if (!nyk = 51) !isco = 2421.	
if (!nyk = 52) !isco = 2429.	
if (!nyk = 53) !isco = 2429.	
if (!nyk = 54) !isco = 2429.	
if (!nyk = 59) !isco = 2429.	
if (!nyk = 62) !isco = 1234.	
if (!nyk = 69) !isco = 2451.	
if (!nyk = 75) !isco = 3474.	
if (!nyk = 105) !isco = 3133.	
if (!nyk = 119) !isco = 3226.	
if (!nyk = 122) !isco = 3225.	
if (!nyk = 123) !isco = 3225.	
if (!nyk = 129) !isco = 3225.	
if (!nyk = 211) !isco = 2419.	
if (!nyk = 222) !isco = 3423.	
if (!nyk = 229) !isco = 2412.	
if (!nyk = 239) !isco = 4121.	
if (!nyk = 249) !isco = 4190.	
if (!nyk = 252) !isco = 3122.	
if (!nyk = 259) !isco = 3121.	
if (!nyk = 269) !isco = 2441.	
if (!nyk = 291) !isco = 4190.	
if (!nyk = 293) !isco = 3412.	
if (!nyk = 294) !isco = 3412.	
if (!nyk = 296) !isco = 3422.	
if (!nyk = 312) !isco = 3413.	
if (!nyk = 413) !isco = 6112.	
if (!nyk = 661) !isco = 4133.	
if (!nyk = 691) !isco = 4133.	
if (!nyk = 699) !isco = 9330.	
if (!nyk = 709) !isco = 7332.	
if (!nyk = 744) !isco = 3211.	
if (!nyk = 749) !isco = 7222.	
if (!nyk = 753) !isco = 7231.	
if (!nyk = 759) !isco = 7214.	
if (!nyk = 769) !isco = 8282.	
if (!nyk = 804) !isco = 7345.	
if (!nyk = 827) !isco = 8272.	
if (!nyk = 828) !isco = 8279.	
if (!nyk = 829) !isco = 8278.	
if (!nyk = 832) !isco = 8151.	
if (!nyk = 833) !isco = 8151.	
if (!nyk = 849) !isco = 8142.	
if (!nyk = 851) !isco = 7129.	
if (!nyk = 852) !isco = 8265.	
if (!nyk = 879) !isco = 9330.	
if (!nyk = 891) !isco = 9151.	
if (!nyk = 904) !isco = 3441.	
if (!nyk = 79) !isco = 2455.	
if (!nyk = 99) !isco = 2446.	
if (!nyk = 102) !isco = 2230.	
if (!nyk = 106) !isco = 5132.	
if (!nyk = 109) !isco = 9132.	
if (!nyk = 112) !isco = 2229.	
if (!nyk = 297) !isco = 1317.	
if (!nyk = 313) !isco = 3419.	
if (!nyk = 319) !isco = 3419.	
if (!nyk = 333) !isco = 5220.	
if (!nyk = 339) !isco = 5220.	
if (!nyk = 399) !isco = 5220.	
if (!nyk = 402) !isco = 6130.	
if (!nyk = 403) !isco = 6130.	
if (!nyk = 404) !isco = 6130.	
if (!nyk = 405) !isco = 6130.	
if (!nyk = 653) !isco = 5111.	
if (!nyk = 825) !isco = 9320.	
if (!nyk = 859) !isco = 7222.	
if (!nyk = 881) !isco = 9320.	
if (!nyk = 882) !isco = 9330.	
if (!nyk = 889) !isco = 9320.	
if (!nyk = 902) !isco = 9162.	
if (!nyk = 942) !isco = 5149.	
if (!nyk = 107) !isco = 5132.	
if (!nyk = 14) !isco = 2114.	
if (!nyk = 15) !isco = 2112.	
if (!nyk = 21) !isco = 2211.	
if (!nyk = 22) !isco = 3213.	
if (!nyk = 23) !isco = 3213.	
if (!nyk = 29) !isco = 2211.	
if (!nyk = 31) !isco = 2310.	
if (!nyk = 32) !isco = 2320.	
if (!nyk = 33) !isco = 2331.	
if (!nyk = 61) !isco = 2451.	
if (!nyk = 63) !isco = 1229.	
if (!nyk = 71) !isco = 2452.	
if (!nyk = 72) !isco = 3471.	
if (!nyk = 73) !isco = 3471.	
if (!nyk = 76) !isco = 2453.	
if (!nyk = 77) !isco = 2455.	
if (!nyk = 91) !isco = 2432.	
if (!nyk = 92) !isco = 2431.	
if (!nyk = 101) !isco = 2221.	
if (!nyk = 103) !isco = 3231.	
if (!nyk = 104) !isco = 3232.	
if (!nyk = 111) !isco = 3226.	
if (!nyk = 121) !isco = 2222.	
if (!nyk = 131) !isco = 2224.	
if (!nyk = 139) !isco = 3228.	
if (!nyk = 141) !isco = 2223.	
if (!nyk = 149) !isco = 3227.	
if (!nyk = 153) !isco = 5131.	
if (!nyk = 154) !isco = 5133.	
if (!nyk = 191) !isco = 2445.	
if (!nyk = 192) !isco = 3223.	
if (!nyk = 241) !isco = 4115.	
if (!nyk = 242) !isco = 4111.	
if (!nyk = 261) !isco = 2441.	
if (!nyk = 262) !isco = 2122.	
if (!nyk = 295) !isco = 4221.	
if (!nyk = 299) !isco = 4190.	
if (!nyk = 321) !isco = 3416.	
if (!nyk = 331) !isco = 1314.	
if (!nyk = 332) !isco = 5220.	
if (!nyk = 400) !isco = 1311.	
if (!nyk = 401) !isco = 6112.	
if (!nyk = 406) !isco = 6129.	
if (!nyk = 409) !isco = 6112.	
if (!nyk = 411) !isco = 6112.	
if (!nyk = 412) !isco = 6121.	
if (!nyk = 414) !isco = 6129.	
if (!nyk = 419) !isco = 6121.	
if (!nyk = 421) !isco = 6154.	
if (!nyk = 431) !isco = 6152.	
if (!nyk = 432) !isco = 6151.	
if (!nyk = 439) !isco = 6152.	
if (!nyk = 441) !isco = 6141.	
if (!nyk = 449) !isco = 6141.	
if (!nyk = 501) !isco = 7111.	
if (!nyk = 509) !isco = 7111.	
if (!nyk = 511) !isco = 8113.	
if (!nyk = 521) !isco = 8121.	
if (!nyk = 531) !isco = 8155.	
if (!nyk = 599) !isco = 7111.	
if (!nyk = 601) !isco = 3142.	
if (!nyk = 602) !isco = 3142.	
if (!nyk = 603) !isco = 3141.	
if (!nyk = 609) !isco = 3142.	
if (!nyk = 611) !isco = 8340.	
if (!nyk = 612) !isco = 8340.	
if (!nyk = 619) !isco = 8340.	
if (!nyk = 621) !isco = 3143.	
if (!nyk = 629) !isco = 3143.	
if (!nyk = 631) !isco = 8311.	
if (!nyk = 640) !isco = 8322.	
if (!nyk = 641) !isco = 8324.	
if (!nyk = 642) !isco = 8322.	
if (!nyk = 643) !isco = 9151.	
if (!nyk = 649) !isco = 8334.	
if (!nyk = 651) !isco = 3144.	
if (!nyk = 652) !isco = 5112.	
if (!nyk = 659) !isco = 5112.	
if (!nyk = 662) !isco = 3144.	
if (!nyk = 663) !isco = 8312.	
if (!nyk = 664) !isco = 4133.	
if (!nyk = 669) !isco = 4133.	
if (!nyk = 671) !isco = 4142.	
if (!nyk = 673) !isco = 3132.	
if (!nyk = 674) !isco = 3132.	
if (!nyk = 675) !isco = 3132.	
if (!nyk = 679) !isco = 4142.	
if (!nyk = 681) !isco = 4142.	
if (!nyk = 682) !isco = 9151.	
if (!nyk = 689) !isco = 4142.	
if (!nyk = 701) !isco = 8261.	
if (!nyk = 702) !isco = 7332.	
if (!nyk = 703) !isco = 7432.	
if (!nyk = 705) !isco = 8262.	
if (!nyk = 706) !isco = 7435.	
if (!nyk = 707) !isco = 3152.	
if (!nyk = 711) !isco = 7433.	
if (!nyk = 712) !isco = 7434.	
if (!nyk = 713) !isco = 7433.	
if (!nyk = 714) !isco = 7437.	
if (!nyk = 715) !isco = 7435.	
if (!nyk = 716) !isco = 7433.	
if (!nyk = 719) !isco = 7436.	
if (!nyk = 721) !isco = 7442.	
if (!nyk = 722) !isco = 7442.	
if (!nyk = 723) !isco = 8268.	
if (!nyk = 729) !isco = 8269.	
if (!nyk = 731) !isco = 8121.	
if (!nyk = 732) !isco = 8122.	
if (!nyk = 733) !isco = 8122.	
if (!nyk = 735) !isco = 7215.	
if (!nyk = 736) !isco = 7221.	
if (!nyk = 737) !isco = 7211.	
if (!nyk = 739) !isco = 8122.	
if (!nyk = 741) !isco = 7311.	
if (!nyk = 742) !isco = 7311.	
if (!nyk = 743) !isco = 3224.	
if (!nyk = 745) !isco = 7313.	
if (!nyk = 746) !isco = 7323.	
if (!nyk = 751) !isco = 8211.	
if (!nyk = 752) !isco = 7233.	
if (!nyk = 754) !isco = 7213.	
if (!nyk = 755) !isco = 7136.	
if (!nyk = 756) !isco = 7212.	
if (!nyk = 757) !isco = 7214.	
if (!nyk = 758) !isco = 8223.	
if (!nyk = 761) !isco = 7241.	
if (!nyk = 762) !isco = 7241.	
if (!nyk = 763) !isco = 8282.	
if (!nyk = 764) !isco = 7244.	
if (!nyk = 765) !isco = 7245.	
if (!nyk = 766) !isco = 3131.	
if (!nyk = 771) !isco = 6141.	
if (!nyk = 772) !isco = 8141.	
if (!nyk = 773) !isco = 8240.	
if (!nyk = 775) !isco = 7331.	
if (!nyk = 776) !isco = 7331.	
if (!nyk = 777) !isco = 7423.	
if (!nyk = 779) !isco = 8141.	
if (!nyk = 781) !isco = 7141.	
if (!nyk = 782) !isco = 7132.	
if (!nyk = 783) !isco = 7141.	
if (!nyk = 789) !isco = 7139.	
if (!nyk = 791) !isco = 7122.	
if (!nyk = 793) !isco = 7123.	
if (!nyk = 794) !isco = 7124.	
if (!nyk = 795) !isco = 7134.	
if (!nyk = 796) !isco = 7135.	
if (!nyk = 799) !isco = 7129.	
if (!nyk = 801) !isco = 7341.	
if (!nyk = 802) !isco = 7343.	
if (!nyk = 803) !isco = 8251.	
if (!nyk = 805) !isco = 8224.	
if (!nyk = 809) !isco = 8251.	
if (!nyk = 811) !isco = 7322.	
if (!nyk = 812) !isco = 7321.	
if (!nyk = 813) !isco = 8131.	
if (!nyk = 814) !isco = 7323.	
if (!nyk = 819) !isco = 8139.	
if (!nyk = 821) !isco = 8273.	
if (!nyk = 822) !isco = 7412.	
if (!nyk = 823) !isco = 8274.	
if (!nyk = 824) !isco = 8278.	
if (!nyk = 826) !isco = 7411.	
if (!nyk = 831) !isco = 8159.	
if (!nyk = 834) !isco = 8231.	
if (!nyk = 835) !isco = 8232.	
if (!nyk = 839) !isco = 8159.	
if (!nyk = 841) !isco = 8142.	
if (!nyk = 842) !isco = 8143.	
if (!nyk = 843) !isco = 8253.	
if (!nyk = 853) !isco = 7312.	
if (!nyk = 854) !isco = 7113.	
if (!nyk = 861) !isco = 8161.	
if (!nyk = 869) !isco = 8161.	
if (!nyk = 871) !isco = 8333.	
if (!nyk = 872) !isco = 8332.	
if (!nyk = 873) !isco = 8334.	
if (!nyk = 901) !isco = 5161.	
if (!nyk = 905) !isco = 5163.	
if (!nyk = 906) !isco = 5169.	
if (!nyk = 909) !isco = 5169.	
if (!nyk = 912) !isco = 5122.	
if (!nyk = 913) !isco = 5123.	
if (!nyk = 914) !isco = 5123.	
if (!nyk = 916) !isco = 5111.	
if (!nyk = 919) !isco = 5123.	
if (!nyk = 921) !isco = 5121.	
if (!nyk = 929) !isco = 5121.	
if (!nyk = 931) !isco = 9141.	
if (!nyk = 932) !isco = 9131.	
if (!nyk = 939) !isco = 9141.	
if (!nyk = 941) !isco = 5141.	
if (!nyk = 949) !isco = 5141.	
if (!nyk = 951) !isco = 9133.	
if (!nyk = 952) !isco = 9133.	
if (!nyk = 959) !isco = 9133.	
if (!nyk = 961) !isco = 3475.	
if (!nyk = 971) !isco = 5143.	
if (!nyk = 979) !isco = 5149.	
if (!nyk = 981) !isco = 110.	
if (!nyk = 989) !isco = 110.	



!enddefine. 



************************************************************.
* EOF.

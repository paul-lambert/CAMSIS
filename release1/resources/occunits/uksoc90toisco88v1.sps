

* UK 1990 SOC to ISCO-88(COM).

* UK SOC TITLE ONLY and TITLE PLUS OTHER INFO.


* This file produced by Paul Lambert via OIU index file. 
* Last updated 16.4.02.


****************************************************.


* This file defines two SPSS macros for converting from UK 1990 
* SOC categories into ISCO-88(COM) categories. 

* These classifications are derived from information provided
* in the manuscript "OOSS User Guide :01.1", distributed by
* Occupational Information Unit, Office for National Statistics,
* Segensworth Road, Titchfield, Fareham, Hampshire, PO15 5RR,
*  Occupation.Information@ons.gsi.gov.uk   .

* That classification suggests that the correct translation from 
* SOC90 to ISCO requires SOC titles AND information on employment
* status, size of establishement, and industry, although relatively
* few SOC titles are, in practice, divided through that info into 
* different ISCO categories. 

** Here we provide 2 alternative classifications reflecting this 
* structure, and make 1 change from the recommended OIU forms. 


* 1) Classification 1 : TITLE only SOC recode, ingnoring 
* differentiations by employment status, size of establishement, 
* and industry.  The 15 SOC titles which should be sent to different
* ISCO units depending on those values, are thus all sent to the 
* ISCO code which is the most appropriate modally in terms of the 
* SOC categories (using information derived from McKnight and Elias
* 1997, (in Rose et al 1997 "Constructing Classes")). 
*  This title only recode is thus an approximation. 

* 2) Classification 2 : SOC title plus other information recode.
*  This classification reproduces the exact recommendations of the OIU,
*  in the syntax below by using additional variables which have been 
*  precoded to suit the necessary definition. 

* 3) Miscellaneous categories. IN BOTH VERSIONS ABOVE WE OVER-RIDE
* ONE FEATURE OF THE OIU RECOMMENDATIONS, NAMELY THE SUGGESTED CODING 
* OF SOC 1990 CATEGORY 999 INTO ISCO CATEGORY 8163. The OIU suggestion 
* reflects that fact that the most common occupational titles in the
* miscellaneous 999 category do indeed suit ISCO 8163 (for men only). 
* However, we believe it is misleading to classify all such miscellaneous 
* occupations into a specific ISCO title, and therefore instead code the 
* SOC 999 units into the ADDITIONAL ISCO category 9999, which we 
* define as miscellaneous, though it is not a formally defined ISCO 
* unit. 

***********************************************************.


***************************************************************.
** RECOMMENDED FILE HANDLING
** (run syntax below via a separate file, removing the first *'s): 

** 1) Run this file as an include file, eg :.
*include file="e:\data\resources\isco\iscotouksoc\uksoc90toisco88v1.sps".

** 2) Then call the two macros sequentially, 
** eg, suggested syntax for two soc vars called hocc and wocc :.

* descriptives var=hocc wocc. 
*compute hisco88t=hocc. 
*compute wisco88t=wocc. 
** Macro 1 : title only recode :.
*ssssssoc90ist occ={hisco88t wisco88t}.
** (the duplicate sss's go : they are just there to stop the macro being 
** inadvertently called whilst running this as an include file!).
*descriptives var=hisco88t wisco88t.
*descriptives var=hemstat wemstat hsoe wsoe hsic90c wsic90c.
** (assumes these have been correctly coded as defined below).
*compute hisco88=hisco88t.
*compute wisco88=wisco88t.
** Macro 2 : full information recode, once each for successive vars:.
*ssssssoc90iss soc90=hocc isti=hisco88
        emstat=hemstat soe=hsoe sic80c=hsic80c.
*ssssssoc90iss soc90=wocc isti=wisco88
        emstat=wemstat soe=wsoe sic80c=wsic80c.
*descriptive var=hisco88 hisco88t hocc 
                wisco88 wisco88t wocc .
**********************************************************.   



* The 1st macro below conducts the title only translation; . 
* The second macro adjusts, if the info is available, 
* for information on employment 
* status, size of establishement and industry. 


* . 

**********************************************************.

* Macro 1 : title only translation :.

define soc90ist (occ=!enclose('{','}') ).
recode !occ 
       (100 = 1110)
 (101 = 1210)
 (102 = 1110)
 (103 = 2470)
 (110 = 1222)
 (111 = 1223)
 (112 = 3112)
 (113 = 1222)
 (120 = 1231)
 (121 = 1233)
 (122 = 1235)
 (123 = 1234)
 (124 = 1232)
 (125 = 1239)
 (126 = 1236)
 (127 = 1231)
 (130 = 1231)
 (131 = 1227)
 (132 = 2470)
 (139 = 1231)
 (140 = 1226)
 (141 = 1226)
 (142 = 1226)
 (150 = 0100)
 (151 = 0100)
 (152 = 3450)
 (153 = 1229)
 (154 = 1229)
 (155 = 1229)
 (160 = 6130)
 (169 = 1311)
 (170 = 3413)
 (171 = 1314)
 (172 = 1318)
 (173 = 1315)
 (174 = 1315)
 (175 = 1315)
 (176 = 1319)
 (177 = 3414)
 (178 = 1314)
 (179 = 1314)
 (190 = 1142)
 (191 = 1229)
 (199 = 1228)
 (200 = 2113)
 (201 = 2211)
 (202 = 2111)
 (209 = 2110)
 (210 = 2142)
 (211 = 2145)
 (212 = 2143)
 (213 = 2144)
 (214 = 2131)
 (215 = 2146)
 (216 = 2149)
 (217 = 2149)
 (218 = 2149)
 (219 = 2149)
 (220 = 2221)
 (221 = 2224)
 (222 = 3224)
 (223 = 2222)
 (224 = 2223)
 (230 = 2310)
 (231 = 2310)
 (232 = 2352)
 (233 = 2320)
 (234 = 2331)
 (235 = 2340)
 (239 = 2359)
 (240 = 2422)
 (241 = 2421)
 (242 = 2421)
 (250 = 2411)
 (251 = 2411)
 (252 = 2122)
 (253 = 2419)
 (260 = 2141)
 (261 = 2141)
 (262 = 2148)
 (270 = 2432)
 (271 = 2431)
 (290 = 2445)
 (291 = 2442)
 (292 = 2460)
 (293 = 2446)
 (300 = 3111)
 (301 = 3115)
 (302 = 3114)
 (303 = 3119)
 (304 = 3112)
 (309 = 3119)
 (310 = 3118)
 (311 = 3151)
 (312 = 2149)
 (313 = 2148)
 (320 = 2131)
 (330 = 3144)
 (331 = 3143)
 (332 = 3142)
 (340 = 2230)
 (341 = 2230)
 (342 = 3133)
 (343 = 3226)
 (344 = 3226)
 (345 = 3224)
 (346 = 3225)
 (346 = 3228)
 (347 = 3229)
 (348 = 3222)
 (349 = 3227)
 (350 = 3432)
 (360 = 3417)
 (361 = 3412)
 (362 = 3442)
 (363 = 1232)
 (364 = 2149)
 (370 = 3460)
 (371 = 3460)
 (380 = 2451)
 (381 = 3471)
 (382 = 3471)
 (383 = 3471)
 (384 = 2455)
 (385 = 2453)
 (386 = 3131)
 (387 = 3475)
 (390 = 2432)
 (391 = 2359)
 (392 = 2412)
 (393 = 3340)
 (394 = 3152)
 (395 = 3152)
 (396 = 3152)
 (399 = 3430)
 (400 = 4190)
 (401 = 4190)
 (410 = 4121)
 (411 = 4212)
 (412 = 4215)
 (420 = 4143)
 (421 = 4141)
 (430 = 4190)
 (440 = 4131)
 (441 = 4131)
 (450 = 4115)
 (451 = 4115)
 (452 = 4111)
 (459 = 4115)
 (460 = 4222)
 (461 = 4223)
 (462 = 4223)
 (463 = 3132)
 (490 = 4113)
 (491 = 4190)
 (500 = 7122)
 (501 = 7131)
 (502 = 7133)
 (503 = 7135)
 (504 = 7121)
 (505 = 7129)
 (506 = 7132)
 (507 = 7141)
 (509 = 7129)
 (510 = 7223)
 (511 = 7223)
 (512 = 7223)
 (513 = 7223)
 (514 = 7223)
 (515 = 7222)
 (516 = 7230)
 (517 = 7311)
 (518 = 7313)
 (519 = 7223)
 (520 = 7241)
 (521 = 7241)
 (522 = 7241)
 (523 = 7244)
 (524 = 7245)
 (525 = 7242)
 (526 = 7242)
 (529 = 7242)
 (530 = 7221)
 (531 = 7211)
 (532 = 7136)
 (533 = 7213)
 (534 = 7214)
 (535 = 7214)
 (536 = 7214)
 (537 = 7212)
 (540 = 7231)
 (541 = 7213)
 (542 = 7213)
 (543 = 7241)
 (544 = 7231)
 (550 = 7432)
 (551 = 7432)
 (552 = 8264)
 (553 = 7436)
 (554 = 7437)
 (555 = 7442)
 (556 = 7433)
 (557 = 7435)
 (559 = 7436)
 (560 = 7341)
 (561 = 7341)
 (562 = 7345)
 (563 = 7346)
 (569 = 7340)
 (570 = 7124)
 (571 = 7422)
 (572 = 7422)
 (573 = 7422)
 (579 = 7422)
 (580 = 7412)
 (581 = 7411)
 (582 = 7411)
 (590 = 7320)
 (591 = 7324)
 (592 = 7311)
 (593 = 7312)
 (594 = 6112)
 (595 = 6112)
 (596 = 7141)
 (597 = 7111)
 (598 = 7233)
 (599 = 7331)
 (600 = 0100)
 (601 = 0100)
 (610 = 5162)
 (611 = 5161)
 (612 = 5163)
 (613 = 3440)
 (614 = 5169)
 (615 = 5169)
 (619 = 5169)
 (620 = 5122)
 (621 = 5123)
 (622 = 5123)
 (630 = 5111)
 (631 = 5112)
 (640 = 3231)
 (641 = 5132)
 (642 = 5132)
 (643 = 5132)
 (644 = 5133)
 (650 = 3320)
 (651 = 5131)
 (652 = 5131)
 (659 = 5131)
 (660 = 5141)
 (661 = 5141)
 (670 = 5121)
 (671 = 5121)
 (672 = 9141)
 (673 = 9133)
 (690 = 5143)
 (691 = 4213)
 (699 = 9152)
 (700 = 3416)
 (701 = 3416)
 (702 = 3422)
 (703 = 3421)
 (710 = 3415)
 (719 = 3412)
 (720 = 5220)
 (721 = 4211)
 (722 = 5220)
 (730 = 9113)
 (731 = 9113)
 (732 = 5220)
 (733 = 5220)
 (790 = 3471)
 (791 = 3471)
 (792 = 9113)
 (800 = 8274)
 (801 = 8278)
 (802 = 8279)
 (809 = 8270)
 (810 = 8265)
 (811 = 8261)
 (812 = 8261)
 (813 = 8261)
 (814 = 8269)
 (820 = 8150)
 (821 = 8142)
 (822 = 8253)
 (823 = 8131)
 (824 = 8231)
 (825 = 8232)
 (826 = 8261)
 (829 = 8159)
 (830 = 8121)
 (831 = 8124)
 (832 = 8122)
 (833 = 8123)
 (834 = 8223)
 (839 = 8122)
 (840 = 8211)
 (841 = 8211)
 (842 = 7224)
 (843 = 8223)
 (844 = 8223)
 (850 = 8280)
 (851 = 8280)
 (859 = 8280)
 (860 = 8281)
 (861 = 8269)
 (862 = 9320)
 (863 = 7415)
 (864 = 8229)
 (869 = 9320)
 (870 = 5112)
 (871 = 8324)
 (872 = 8324)
 (873 = 8323)
 (874 = 8322)
 (875 = 5112)
 (880 = 8340)
 (881 = 5112)
 (882 = 8311)
 (883 = 8312)
 (884 = 8312)
 (885 = 8332)
 (886 = 8333)
 (887 = 8334)
 (889 = 8333)
 (890 = 8112)
 (891 = 8251)
 (892 = 8163)
 (893 = 8160)
 (894 = 7233)
 (895 = 7136)
 (896 = 7129)
 (897 = 8240)
 (898 = 7111)
 (899 = 8211)
 (900 = 9211)
 (901 = 8331)
 (902 = 9211)
 (903 = 6153)
 (904 = 6141)
 (910 = 9311)
 (911 = 9320)
 (912 = 9320)
 (913 = 9313)
 (919 = 9320)
 (920 = 9320)
 (921 = 9313)
 (922 = 9312)
 (923 = 9312)
 (924 = 7122)
 (929 = 9312)
 (930 = 9330)
 (931 = 9330)
 (932 = 9330)
 (933 = 9161)
 (934 = 9330)
 (940 = 4142)
 (941 = 9151)
 (950 = 9132)
 (951 = 9152)
 (952 = 9132)
 (953 = 5123)
 (954 = 5220)
 (955 = 9152)
 (956 = 9142)
 (957 = 9162)
 (958 = 9131)
 (958 = 9132)
 (959 = 9152)
 (990 = 9320)
 (999 = 9999)  /* NB OIU suggest (999 = 8163); we suggest (999 = 9999)
 (else = -999)  .
* .

!enddefine. 


*****************************************************.

* Macro 2 : readjust from title only for cases with varying
* employment status, size of establishment, and industry group. 

** This assumes we have three previously coded variables for 
* each base unit used, namely : 
* Employment status :
* {emstat} : 1=Employee; 2=Manager; 3=Foreman; 
             4=Self-Employed with employees; 
             5=Self-Employed no employees 
             9=unknown.

* Size of establishment :
* {SOE} : 1=Less than 25 employees;
          2=25-499 Employees
          3=500+ employees 
          9=unknown.

* Industry (only 1 boundary of interest):
* {SIC80C} : 1=Construction;
          2=Not construction
          9=Unknnown. 


* Thus, if any information on these vars is known, we code it 
* in and use them in the second macro; for cases where the 
* information is unknown, the default is to stay in the 'title 
* only' approximation categories. 
* NOTE that some users may prefer to rewrite the syntax in order that
* the occs where such sibsidiary information is missing are not 
* translated and are themselves treated as missing, rather than
* being translated into the modal category as is done below. Such
* a translation is currently commented out at the end of the macro below.

***************************************************.

define soc90iss ( isti=!tokens(1)
                 /soc90=!tokens(1) /emstat=!tokens(1)
                 /soe=!tokens(1) /sic80c=!tokens(1) ).


* this macro is just a series of 'if' commands running on the 
* already existent title only isco variable.
* note how nearly all of these changes only really affect a couple
* of derived isco categories, namely minor groups 131 and 122.

if (!soc90=110 & !soe=1) !isti=1312. /* 1222 was title only default. 
if (!soc90=111 & !soe=1) !isti=1313. /* 1223 was title only default.

if (!soc90=140 & !soe=1) !isti=1316. /* 1226 was title only default. 
if (!soc90=141 & !soe=1) !isti=1316. /* 1226 was title only default. 

if (!soc90=160 & (!soe=2 | !soe=3) & !emstat=2) !isti=1221. /* 6130 was title only default. 
if (!soc90=160 & !soe=1 & (!emstat=2 | !emstat=4) ) !isti=1311. /* 6130 was title only default. 

if (!soc90=169 & (!soe=2 | !soe=3) ) !isti=1221. /* 1311 was title only default. 
if (!soc90=171 & (!soe=2 | !soe=3) ) !isti=1224. /* 1314 was title only default. 
if (!soc90=172 & (!soe=2 | !soe=3) ) !isti=1228. /* 1318 was title only default. 
if (!soc90=173 & (!soe=2 | !soe=3) ) !isti=1225. /* 1315 was title only default. 
if (!soc90=174 & (!soe=2 | !soe=3) ) !isti=1225. /* 1315 was title only default. 
if (!soc90=175 & (!soe=2 | !soe=3) ) !isti=1225. /* 1315 was title only default. 
if (!soc90=176 & (!soe=2 | !soe=3) ) !isti=1229. /* 1319 was title only default. 
if (!soc90=179 & (!soe=2 | !soe=3) ) !isti=1224. /* 1314 was title only default. 
if (!soc90=191 & (!soe=2 | !soe=3) ) !isti=1229. /* 1319 was title only default. 
if (!soc90=199 & (!soe=2 | !soe=3) ) !isti=1229. /* 1319 was title only default. 
 
if (!soc90=169 & !sic80c=1 ) !isti=7137. /* 7241 was title only default. 


**** Optional addition : define the ISCO's as missing if the subsidiary 
**** info is missing (remove the comments below to add this). 
*if (!soc90=110 & !soe=9) !isti=-999. 
*if (!soc90=111 & !soe=9) !isti=-999.
*if (!soc90=140 & !soe=9) !isti=-999. 
*if (!soc90=141 & !soe=9) !isti=-999. 
*if (!soc90=160 & (!soe=9 | !emstat=9)) !isti=-999. 
*if (!soc90=169 & !soe=9) !isti=-999. 
*if (!soc90=171 & !soe=9) !isti=-999. 
*if (!soc90=172 & !soe=9) !isti=-999. 
*if (!soc90=173 & !soe=9) !isti=-999. 
*if (!soc90=174 & !soe=9) !isti=-999. 
*if (!soc90=175 & !soe=9) !isti=-999. 
*if (!soc90=176 & !soe=9) !isti=-999. 
*if (!soc90=179 & !soe=9) !isti=-999. 
*if (!soc90=191 & !soe=9) !isti=-999. 
*if (!soc90=199 & !soe=9) !isti=-999. 
*if (!soc90=169 & !sic80c=9) !isti=-999. 
*****************.



!enddefine.

**********************************************************.


* More notes : the macros above are a title only approximation, 
* and a full information transformation, in line with the 
* recommended OIU SOC90 to ISCO88COM methods. 

* Note however that even this OIU translation is itself something 
* of an approximation : a direct coding from descriptive 
* title information to ISCO category would not produce exactly the 
* same results. One test of this is with the CASOC software which 
* allows for such a direct coding and creates both ISCO and SOC90 
* categories. In one example, the BHPS data, the ISCO values derived 
* through CASOC, and those derived by applying the above macros 
* to the soc90 codes, were equal in approximately 90% of cases;
* the remaining approx 10% usually differed in only one ISCO 
* digit, but a few examples showed more significant differences. 

 

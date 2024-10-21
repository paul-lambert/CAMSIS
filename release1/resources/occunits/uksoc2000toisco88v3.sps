

* UK 2000 SOC to ISCO-88(COM).

* UK SOC TITLE ONLY and TITLE PLUS OTHER INFO.

* This file produced by Paul Lambert via OIU index file. 
* Last updated 6.5.05.

****************************************************.


* This file defines two SPSS macros for converting from UK 2000 
* SOC categories into ISCO-88(COM) categories. 

* These classifications are derived from information provided
* in the manuscript "User Guide 21.1", distributed by
* Occupational Information Unit, Office for National Statistics,
* Segensworth Road, Titchfield, Fareham, Hampshire, PO15 5RR,
*  Occupation.Information@ons.gsi.gov.uk   .

* That classification suggests that the correct translation from 
* SOC2000 to ISCO requires SOC titles AND information on 
* size of establishement, although relatively
* few SOC titles are, in practice, divided through that info into 
* different ISCO categories. 

** Here we provide 2 alternative classifications reflecting this 
* structure. 


* 1) Classification 1 : TITLE only SOC recode, ignoring 
* differentiations by  size of establishement. 
* The SOC titles which should be sent to different
* ISCO units depending on those values, are thus all sent to the 
* ISCO code which is the most appropriate modally in terms of the 
* SOC categories (using estimations based on information on the 
* cmparable SOC90 categories as available from McKnight and Elias
* 1997, (in Rose et al 1997 "Constructing Classes")). 
*  This title only recode is thus an approximation. 

* 2) Classification 2 : SOC title plus other information recode.
*  This classification reproduces the exact recommendations of the OIU,
*  by using an additional variable (size of organisation) which has  
*  been precoded to suit the necessary definition. 
*   [Typos on earlier releases of this file have been updated on 6.1.05; 15.12.06, 
*       thanks to Vania Gerova, and Silke Schneider for alterting me to these] .


***********************************************************.


***************************************************************.
** RECOMMENDED FILE HANDLING
** (run syntax below via a separate file, removing the first *'s): 

** 1) Run this file as an include file, eg :.
*include file="e:\data\resources\isco\iscotouksoc\uksoc2000toisco88v1.sps".

** 2) Then call the two macros sequentially, 
** eg, suggested syntax for two soc vars called hocc and wocc :.
**  with size of establishement info on vars hsoo and wsoo.

* descriptives var=hocc wocc. 
*compute hisco88t=hocc. 
*compute wisco88t=wocc. 
** Macro 1 : title only recode :.
*ssssssoc20ist occ={hisco88t wisco88t}.
** (the duplicate sss's go : they are just there to stop the macro being 
** inadvertently called whilst running this as an include file!).
*descriptives var=hisco88t wisco88t.
*descriptives var=hsoo wsoo.
** (assumes these have been correctly coded as defined below).
*compute hisco88=hisco88t.
*compute wisco88=wisco88t.
** Macro 2 : full information recode, once each for successive vars:.
*ssssssoc20iss soc20=hocc isti=hisco88
        soo=hsoo.
*ssssssoc20iss soc20=wocc isti=wisco88
        soo=wsoo.
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

define soc20ist (occ=!enclose('{','}') ).
recode !occ 
 (1111 = 1110)
 (1112 = 1210)
 (1113 = 1110)
 (1114 = 1140)
 (1121 = 1222)
 (1122 = 1223)
 (1123 = 1222)
 (1131 = 1231)
 (1132 = 1233)
 (1133 = 1235)
 (1134 = 1234)
 (1135 = 1232)
 (1136 = 1236)
 (1137 = 1237)
 (1141 = 1239)
 (1142 = 1239)
 (1151 = 1227)
 (1152 = 1231)
 (1161 = 1226)
 (1162 = 1226)
 (1163 = 1224)
 (1171 = 100)
 (1172 = 3450)
 (1173 = 1229)
 (1174 = 1239)
 (1181 = 1229)
 (1182 = 1319)
 (1183 = 1319)
 (1184 = 1229)
 (1185 = 1318)
 (1211 = 1311)
 (1212 = 1311)
 (1219 = 1311)
 (1221 = 1315)
 (1222 = 1227)
 (1223 = 1315)
 (1224 = 1315)
 (1225 = 1319)
 (1226 = 1316)
 (1231 = 1317)
 (1232 = 1314)
 (1233 = 1318)
 (1234 = 1314)
 (1235 = 1319)
 (1239 = 1319)
 (2111 = 2113)
 (2112 = 2211)
 (2113 = 2110)
 (2121 = 2142)
 (2122 = 2145)
 (2123 = 2143)
 (2124 = 2144)
 (2125 = 2146)
 (2126 = 2149)
 (2127 = 2149)
 (2128 = 2149)
 (2129 = 2149)
 (2131 = 2130)
 (2132 = 2130)
 (2211 = 2221)
 (2212 = 2445)
 (2213 = 2224)
 (2214 = 2229)
 (2215 = 2222)
 (2216 = 2223)
 (2311 = 2310)
 (2312 = 2310)
 (2313 = 2352)
 (2314 = 2320)
 (2315 = 2330)
 (2316 = 2340)
 (2317 = 2359)
 (2319 = 2359)
 (2321 = 2110)
 (2322 = 2440)
 (2329 = 2310)
 (2411 = 2420)
 (2419 = 2429)
 (2421 = 2411)
 (2422 = 2411)
 (2423 = 2419)
 (2431 = 2141)
 (2432 = 2141)
 (2433 = 2148)
 (2434 = 2148)
 (2441 = 2470)
 (2442 = 2446)
 (2443 = 2446)
 (2444 = 2460)
 (2451 = 2432)
 (2452 = 2431)
 (3111 = 3111)
 (3112 = 3114)
 (3113 = 3110)
 (3114 = 3112)
 (3115 = 3119)
 (3119 = 3119)
 (3121 = 3119)
 (3122 = 3118)
 (3123 = 3151)
 (3131 = 3120)
 (3132 = 3120)
 (3211 = 3231)
 (3212 = 3232)
 (3213 = 3221)
 (3214 = 3133)
 (3215 = 3226)
 (3216 = 3224)
 (3217 = 3228)
 (3218 = 3220)
 (3221 = 3226)
 (3222 = 3226)
 (3223 = 3226)
 (3229 = 3226)
 (3231 = 3460)
 (3232 = 3460)
 (3311 = 100)
 (3312 = 5162)
 (3313 = 5161)
 (3314 = 5163)
 (3319 = 5169)
 (3411 = 2452)
 (3412 = 2451)
 (3413 = 3470)
 (3414 = 3473)
 (3415 = 3473)
 (3416 = 2455)
 (3421 = 3471)
 (3422 = 3471)
 (3431 = 2451)
 (3432 = 3472)
 (3433 = 3419)
 (3434 = 3131)
 (3441 = 3475)
 (3442 = 3475)
 (3443 = 3475)
 (3449 = 3475)
 (3511 = 3144)
 (3512 = 3143)
 (3513 = 3142)
 (3514 = 8311)
 (3520 = 3432)
 (3531 = 3417)
 (3532 = 3411)
 (3533 = 3412)
 (3534 = 3419)
 (3535 = 3442)
 (3536 = 3422)
 (3537 = 3433)
 (3539 = 3419)
 (3541 = 3416)
 (3542 = 3415)
 (3543 = 3419)
 (3544 = 3413)
 (3551 = 3210)
 (3552 = 3210)
 (3561 = 3449)
 (3562 = 2412)
 (3563 = 3340)
 (3564 = 2412)
 (3565 = 3152)
 (3566 = 3152)
 (3567 = 3152)
 (3568 = 3152)
 (4111 = 4190)
 (4112 = 4190)
 (4113 = 4190)
 (4114 = 4190)
 (4121 = 4120)
 (4122 = 4120)
 (4123 = 4210)
 (4131 = 4141)
 (4132 = 4190)
 (4133 = 4131)
 (4134 = 4133)
 (4135 = 4141)
 (4136 = 4113)
 (4137 = 4190)
 (4141 = 4223)
 (4142 = 4223)
 (4150 = 4190)
 (4211 = 4115)
 (4212 = 4115)
 (4213 = 4115)
 (4214 = 4115)
 (4215 = 4115)
 (4216 = 4222)
 (4217 = 4110)
 (5111 = 6130)
 (5112 = 6112)
 (5113 = 6112)
 (5119 = 6150)
 (5211 = 7221)
 (5212 = 7211)
 (5213 = 7213)
 (5214 = 7214)
 (5215 = 7212)
 (5216 = 7136)
 (5221 = 7223)
 (5222 = 7222)
 (5223 = 7230)
 (5224 = 7311)
 (5231 = 7231)
 (5232 = 7213)
 (5233 = 7241)
 (5234 = 7141)
 (5241 = 7137)
 (5242 = 7244)
 (5243 = 7245)
 (5244 = 7242)
 (5245 = 7242)
 (5249 = 7242)
 (5311 = 7214)
 (5312 = 7122)
 (5313 = 7131)
 (5314 = 7136)
 (5315 = 7124)
 (5316 = 7135)
 (5319 = 7121)
 (5321 = 7133)
 (5322 = 7132)
 (5323 = 7141)
 (5411 = 7432)
 (5412 = 7437)
 (5413 = 7442)
 (5414 = 7433)
 (5419 = 7430)
 (5421 = 7341)
 (5422 = 7341)
 (5423 = 7345)
 (5424 = 7346)
 (5431 = 7411)
 (5432 = 7412)
 (5433 = 7411)
 (5434 = 5122)
 (5491 = 7320)
 (5492 = 7422)
 (5493 = 7422)
 (5494 = 7312)
 (5495 = 7313)
 (5496 = 3471)
 (5499 = 7330)
 (6111 = 5132)
 (6112 = 5132)
 (6113 = 5132)
 (6114 = 5132)
 (6115 = 5133)
 (6121 = 5131)
 (6122 = 5131)
 (6123 = 5131)
 (6124 = 5131)
 (6131 = 3227)
 (6139 = 3227)
 (6211 = 5149)
 (6212 = 4221)
 (6213 = 5113)
 (6214 = 5111)
 (6215 = 5112)
 (6219 = 5110)
 (6221 = 5141)
 (6222 = 5141)
 (6231 = 5121)
 (6232 = 9141)
 (6291 = 5143)
 (6292 = 7143)
 (7111 = 5220)
 (7112 = 5220)
 (7113 = 9113)
 (7121 = 9113)
 (7122 = 9153)
 (7123 = 9113)
 (7124 = 5220)
 (7125 = 3471)
 (7129 = 3415)
 (7211 = 4220)
 (7212 = 4220)
 (8111 = 8270)
 (8112 = 8130)
 (8113 = 8260)
 (8114 = 8150)
 (8115 = 8231)
 (8116 = 8232)
 (8117 = 8120)
 (8118 = 8223)
 (8119 = 8100)
 (8121 = 8140)
 (8122 = 8111)
 (8123 = 8112)
 (8124 = 8160)
 (8125 = 8211)
 (8126 = 8163)
 (8129 = 8290)
 (8131 = 8282)
 (8132 = 8281)
 (8133 = 8290)
 (8134 = 8290)
 (8135 = 7231)
 (8136 = 8269)
 (8137 = 8263)
 (8138 = 8290)
 (8139 = 8290)
 (8141 = 7129)
 (8142 = 9312)
 (8143 = 9312)
 (8149 = 9313)
 (8211 = 8324)
 (8212 = 8322)
 (8213 = 8323)
 (8214 = 8322)
 (8215 = 3340)
 (8216 = 8312)
 (8217 = 8340)
 (8218 = 9330)
 (8219 = 9330)
 (8221 = 8333)
 (8222 = 8334)
 (8223 = 8331)
 (8229 = 8330)
 (9111 = 9211)
 (9112 = 9212)
 (9119 = 9210)
 (9121 = 9313)
 (9129 = 9312)
 (9131 = 9320)
 (9132 = 9132)
 (9133 = 9320)
 (9134 = 9320)
 (9139 = 9320)
 (9141 = 9330)
 (9149 = 9330)
 (9211 = 9151)
 (9219 = 9151)
 (9221 = 9132)
 (9222 = 9150)
 (9223 = 9132)
 (9224 = 5123)
 (9225 = 5123)
 (9226 = 9152)
 (9229 = 9150)
 (9231 = 9142)
 (9232 = 9162)
 (9233 = 9130)
 (9234 = 9133)
 (9235 = 9161)
 (9239 = 9162)
 (9241 = 9152)
 (9242 = 5169)
 (9243 = 9152)
 (9244 = 5131)
 (9245 = 9152)
 (9249 = 9152)
 (9251 = 5220)
 (9259 = 9151)
 (else = -999)  .
* .

!enddefine. 


*****************************************************.

* Macro 2 : readjust from title only for cases with varying
* size of organisation. 

** This assumes we have one previously coded variable for 
* each base unit used, which indicates size of organisation,
* namely : 
* Size of organisation :
* {soo} : 1=10 or more employees;
          2= less than 10 employees;
          9=unknown.




* Thus, if any information on this var is known, we code it 
* in and use them in the second macro; for cases where the 
* information is unknown, the default is to stay in the 'title 
* only' approximation categories. 
* NOTE that users may prefer to code all contested SOCs with 
* missing SOO information to a missing ISCO category rather than 
* the default modal category. This can be achieved by removing the 
* commenting out in the second section of the macro below. 

***************************************************.

define soc20iss ( isti=!tokens(1)
                 /soc20=!tokens(1) 
                 /soo=!tokens(1)  ).


* this macro is just a series of 'if' commands running on the 
* already existent title only isco variable.
* note how nearly all of these changes only really affect a couple
* of derived isco categories, namely 131 and 122.

if (!soc20=1121 & !soo=2) !isti=1312. /* 1222 was title only default. 
if (!soc20=1122 & !soo=2) !isti=1313. /* 1223 was title only default.

if (!soc20=1151 & !soo=2) !isti=1317. /* 1227 was title only default.

if (!soc20=1161 & !soo=2) !isti=1316. /* 1226 was title only default.
if (!soc20=1162 & !soo=2) !isti=1316. /* 1226 was title only default.
if (!soc20=1163 & !soo=2) !isti=1314. /* 1224 was title only default.

if (!soc20=1182 & !soo=1) !isti=1229. /* 1319 was title only default.
if (!soc20=1183 & !soo=1) !isti=1229. /* 1319 was title only default.
if (!soc20=1185 & !soo=1) !isti=1228. /* 1318 was title only default.

if (!soc20=1211 & !soo=1) !isti=1221. /* 1311 was title only default.
if (!soc20=1212 & !soo=1) !isti=1221. /* 1311 was title only default.
if (!soc20=1219 & !soo=1) !isti=1221. /* 1311 was title only default.

if (!soc20=1221 & !soo=1) !isti=1225. /* 1315 was title only default.
if (!soc20=1222 & !soo=2) !isti=1317. /* 1227 was title only default.
if (!soc20=1223 & !soo=1) !isti=1225. /* 1315 was title only default.
if (!soc20=1224 & !soo=1) !isti=1225. /* 1315 was title only default.
if (!soc20=1225 & !soo=1) !isti=1229. /* 1319 was title only default.
if (!soc20=1226 & !soo=1) !isti=1226. /* 1316 was title only default.

if (!soc20=1231 & !soo=1) !isti=1227. /* 1317 was title only default.
if (!soc20=1232 & !soo=1) !isti=1224. /* 1314 was title only default.
if (!soc20=1233 & !soo=1) !isti=1228. /* 1318 was title only default.
if (!soc20=1235 & !soo=1) !isti=1229. /* 1319 was title only default.
if (!soc20=1239 & !soo=1) !isti=1229. /* 1319 was title only default.


********************.
* Supplement : remove comments if want to code missing soo as missing isco. 
*if (!soc20=1121 & !soo=9) !isti=-999  . 
*if (!soc20=1122 & !soo=9) !isti=-999  .
*if (!soc20=1151 & !soo=9) !isti=-999  .
*if (!soc20=1161 & !soo=9) !isti=-999  .
*if (!soc20=1162 & !soo=9) !isti=-999  .
*if (!soc20=1163 & !soo=9) !isti=-999  .
*if (!soc20=1182 & !soo=9) !isti=-999  .
*if (!soc20=1183 & !soo=9) !isti=-999  .
*if (!soc20=1185 & !soo=9) !isti=-999  .
*if (!soc20=1211 & !soo=9) !isti=-999  .
*if (!soc20=1212 & !soo=9) !isti=-999  .
*if (!soc20=1219 & !soo=9) !isti=-999  .
*if (!soc20=1221 & !soo=9) !isti=-999  .
*if (!soc20=1222 & !soo=9) !isti=-999  .
*if (!soc20=1223 & !soo=9) !isti=-999  .
*if (!soc20=1224 & !soo=9) !isti=-999  .
*if (!soc20=1225 & !soo=9) !isti=-999  .
*if (!soc20=1226 & !soo=9) !isti=-999  .
*if (!soc20=1231 & !soo=9) !isti=-999  .
*if (!soc20=1232 & !soo=9) !isti=-999  .
*if (!soc20=1233 & !soo=9) !isti=-999  .
*if (!soc20=1235 & !soo=9) !isti=-999  .
*if (!soc20=1239 & !soo=9) !isti=-999  .



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

 

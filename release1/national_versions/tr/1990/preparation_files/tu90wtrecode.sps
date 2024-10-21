*********************************************************.
* CAMSIS Turkey 1990.
*
* RECODE COMMAND IN SPSS FOR FEMALE TITLE-ONLY ISCO-68 SCORES. 
*********************************************************.


*********************************************************.
* This SPSS recode applies to female title-only ISCO-68 units,
* and converts a ISCO68 variable into 1990 CAMSIS scores.
* It uses the same info as is available from the .sav index 
* files, and the Excel spreadsheets. 
*
* It may be conducted by computing a variable, named
* wtcs, which is equal to ISCO-68 units .
*.
* It is then necessary to run the 
* recode below, for instance by running this file as an 'include' 
* file. 
************************************************************.




recode wtcs 
 (100 = 70.5) 
 (110 = 84.5) 
 (120 = 84.5) 
 (130 = 84.5) 
 (131 = 84.5) 
 (132 = 84.5) 
 (133 = 84.5) 
 (139 = 84.5) 
 (140 = 70.5) 
 (190 = 84.5) 
 (200 = 70.5) 
 (210 = 81.7) 
 (220 = 81.6) 
 (230 = 81.6) 
 (240 = 81.6) 
 (250 = 82.3) 
 (260 = 82.8) 
 (270 = 82.8) 
 (280 = 81.6) 
 (290 = 81.6) 
 (300 = 70.5) 
 (310 = 60.6) 
 (320 = 60.6) 
 (321 = 70.5) 
 (329 = 70.5) 
 (330 = 60.6) 
 (339 = 60.6) 
 (340 = 61.9) 
 (350 = 61.9) 
 (360 = 61.9) 
 (370 = 70.5) 
 (380 = 67.0) 
 (390 = 57.0) 
 (400 = 70.5) 
 (409 = 70.5) 
 (410 = 70.5) 
 (411 = 70.5) 
 (419 = 70.5) 
 (420 = 70.5) 
 (421 = 70.5) 
 (429 = 70.5) 
 (430 = 70.5) 
 (500 = 70.5) 
 (510 = 79.5) 
 (520 = 79.5) 
 (521 = 70.5) 
 (529 = 70.5) 
 (530 = 79.5) 
 (531 = 70.5) 
 (539 = 70.5) 
 (540 = 79.5) 
 (541 = 70.5) 
 (549 = 70.5) 
 (600 = 70.5) 
 (610 = 77.3) 
 (611 = 77.3) 
 (619 = 77.3) 
 (620 = 59.4) 
 (630 = 79.2) 
 (640 = 59.4) 
 (650 = 79.2) 
 (660 = 70.5) 
 (670 = 80.2) 
 (680 = 57.8) 
 (690 = 57.8) 
 (700 = 70.5) 
 (710 = 60.6) 
 (711 = 60.6) 
 (715 = 60.6) 
 (719 = 60.6) 
 (720 = 41.5) 
 (730 = 54.8) 
 (740 = 70.5) 
 (750 = 67.3) 
 (751 = 70.5) 
 (759 = 70.5) 
 (760 = 67.3) 
 (761 = 70.5) 
 (762 = 70.5) 
 (769 = 70.5) 
 (770 = 67.3) 
 (780 = 70.5) 
 (790 = 67.3) 
 (791 = 67.3) 
 (792 = 67.3) 
 (793 = 67.3) 
 (799 = 67.3) 
 (800 = 70.5) 
 (810 = 77.2) 
 (820 = 77.2) 
 (830 = 70.5) 
 (840 = 77.2) 
 (849 = 70.5) 
 (850 = 77.2) 
 (900 = 79.1) 
 (1100 = 70.5) 
 (1101 = 70.5) 
 (1109 = 70.5) 
 (1110 = 73.5) 
 (1120 = 73.5) 
 (1200 = 70.5) 
 (1210 = 81.5) 
 (1211 = 81.5) 
 (1219 = 81.5) 
 (1220 = 81.5) 
 (1221 = 70.5) 
 (1222 = 70.5) 
 (1229 = 70.5) 
 (1230 = 81.5) 
 (1240 = 81.5) 
 (1250 = 81.5) 
 (1260 = 70.5) 
 (1270 = 81.5) 
 (1290 = 70.5) 
 (1291 = 70.5) 
 (1299 = 70.5) 
 (1300 = 70.5) 
 (1304 = 70.5) 
 (1310 = 78.3) 
 (1311 = 78.3) 
 (1319 = 78.3) 
 (1320 = 73.0) 
 (1321 = 73.0) 
 (1329 = 73.0) 
 (1330 = 70.0) 
 (1340 = 61.4) 
 (1350 = 58.4) 
 (1360 = 58.4) 
 (1390 = 58.4) 
 (1391 = 58.4) 
 (1392 = 58.4) 
 (1393 = 58.4) 
 (1394 = 58.4) 
 (1399 = 58.4) 
 (1400 = 70.5) 
 (1410 = 64.9) 
 (1411 = 64.9) 
 (1412 = 64.9) 
 (1413 = 64.9) 
 (1414 = 64.9) 
 (1415 = 64.9) 
 (1416 = 64.9) 
 (1419 = 64.9) 
 (1490 = 64.9) 
 (1491 = 70.5) 
 (1499 = 70.5) 
 (1500 = 70.5) 
 (1510 = 76.8) 
 (1511 = 76.8) 
 (1519 = 76.8) 
 (1520 = 76.8) 
 (1530 = 76.8) 
 (1590 = 70.5) 
 (1591 = 70.5) 
 (1592 = 70.5) 
 (1593 = 70.5) 
 (1599 = 70.5) 
 (1600 = 70.5) 
 (1610 = 76.8) 
 (1620 = 63.0) 
 (1621 = 63.0) 
 (1622 = 63.0) 
 (1629 = 63.0) 
 (1630 = 63.0) 
 (1631 = 70.5) 
 (1639 = 70.5) 
 (1700 = 70.5) 
 (1710 = 71.8) 
 (1711 = 71.8) 
 (1712 = 71.8) 
 (1713 = 71.8) 
 (1719 = 71.8) 
 (1720 = 71.8) 
 (1721 = 70.5) 
 (1729 = 70.5) 
 (1730 = 71.8) 
 (1731 = 70.5) 
 (1732 = 70.5) 
 (1739 = 70.5) 
 (1740 = 71.8) 
 (1749 = 70.5) 
 (1750 = 70.5) 
 (1790 = 71.8) 
 (1791 = 70.5) 
 (1799 = 70.5) 
 (1800 = 70.5) 
 (1801 = 70.5) 
 (1809 = 70.5) 
 (1810 = 71.8) 
 (1820 = 70.5) 
 (1890 = 70.5) 
 (1900 = 70.5) 
 (1910 = 78.6) 
 (1920 = 78.6) 
 (1921 = 70.5) 
 (1922 = 70.5) 
 (1923 = 70.5) 
 (1924 = 70.5) 
 (1929 = 70.5) 
 (1930 = 64.9) 
 (1931 = 70.5) 
 (1939 = 70.5) 
 (1940 = 70.5) 
 (1941 = 70.5) 
 (1949 = 70.5) 
 (1950 = 73.7) 
 (1951 = 73.7) 
 (1959 = 73.7) 
 (1960 = 70.5) 
 (1990 = 58.4) 
 (1991 = 70.5) 
 (1992 = 70.5) 
 (1993 = 70.5) 
 (1994 = 70.5) 
 (1995 = 70.5) 
 (1999 = 70.5) 
 (2000 = 69.8) 
 (2010 = 69.8) 
 (2011 = 69.8) 
 (2012 = 69.8) 
 (2013 = 69.8) 
 (2014 = 69.8) 
 (2015 = 69.8) 
 (2019 = 69.8) 
 (2020 = 73.7) 
 (2021 = 73.7) 
 (2022 = 73.7) 
 (2023 = 73.7) 
 (2024 = 73.7) 
 (2029 = 73.7) 
 (2030 = 69.8) 
 (2031 = 69.8) 
 (2032 = 69.8) 
 (2033 = 69.8) 
 (2034 = 69.8) 
 (2035 = 69.8) 
 (2036 = 69.8) 
 (2039 = 69.8) 
 (2100 = 69.8) 
 (2110 = 64.9) 
 (2111 = 64.9) 
 (2112 = 64.9) 
 (2113 = 64.9) 
 (2114 = 64.9) 
 (2115 = 64.9) 
 (2116 = 64.9) 
 (2119 = 64.9) 
 (2120 = 73.2) 
 (2130 = 64.9) 
 (2140 = 69.8) 
 (2190 = 64.9) 
 (2191 = 69.8) 
 (2192 = 69.8) 
 (2193 = 69.8) 
 (2194 = 69.8) 
 (2195 = 69.8) 
 (2196 = 69.8) 
 (2197 = 69.8) 
 (2199 = 69.8) 
 (3000 = 66.3) 
 (3009 = 66.3) 
 (3100 = 60.9) 
 (3101 = 60.9) 
 (3102 = 60.9) 
 (3103 = 60.9) 
 (3104 = 60.9) 
 (3109 = 60.9) 
 (3200 = 60.9) 
 (3210 = 60.6) 
 (3211 = 60.6) 
 (3219 = 60.6) 
 (3220 = 60.6) 
 (3300 = 60.9) 
 (3310 = 61.6) 
 (3311 = 61.6) 
 (3312 = 61.6) 
 (3313 = 61.6) 
 (3314 = 61.6) 
 (3315 = 61.6) 
 (3319 = 61.6) 
 (3390 = 61.6) 
 (3391 = 60.9) 
 (3399 = 60.9) 
 (3400 = 60.9) 
 (3410 = 60.9) 
 (3420 = 61.5) 
 (3500 = 60.9) 
 (3510 = 60.9) 
 (3520 = 54.0) 
 (3590 = 54.0) 
 (3600 = 60.9) 
 (3601 = 60.9) 
 (3602 = 60.9) 
 (3609 = 60.9) 
 (3700 = 55.5) 
 (3701 = 60.9) 
 (3709 = 60.9) 
 (3800 = 54.0) 
 (3801 = 54.0) 
 (3802 = 54.0) 
 (3809 = 54.0) 
 (3900 = 60.9) 
 (3910 = 55.5) 
 (3911 = 60.9) 
 (3919 = 60.9) 
 (3920 = 60.9) 
 (3930 = 55.5) 
 (3931 = 60.9) 
 (3932 = 60.9) 
 (3939 = 60.9) 
 (3940 = 55.5) 
 (3941 = 60.9) 
 (3942 = 60.9) 
 (3943 = 60.9) 
 (3944 = 60.9) 
 (3949 = 60.9) 
 (3950 = 55.5) 
 (3951 = 60.9) 
 (3959 = 60.9) 
 (3990 = 55.5) 
 (3992 = 55.5) 
 (3993 = 55.5) 
 (3999 = 55.5) 
 (4000 = 64.1) 
 (4001 = 64.1) 
 (4002 = 64.1) 
 (4009 = 64.1) 
 (4100 = 57.2) 
 (4101 = 57.2) 
 (4102 = 57.2) 
 (4103 = 57.2) 
 (4104 = 57.2) 
 (4105 = 57.2) 
 (4106 = 57.2) 
 (4107 = 57.2) 
 (4108 = 57.2) 
 (4109 = 57.2) 
 (4200 = 56.1) 
 (4210 = 64.1) 
 (4220 = 64.1) 
 (4221 = 56.1) 
 (4222 = 56.1) 
 (4229 = 56.1) 
 (4300 = 56.1) 
 (4310 = 50.9) 
 (4311 = 50.9) 
 (4319 = 50.9) 
 (4320 = 54.1) 
 (4400 = 56.1) 
 (4410 = 64.9) 
 (4411 = 64.9) 
 (4412 = 64.9) 
 (4419 = 64.9) 
 (4420 = 64.9) 
 (4430 = 56.1) 
 (4431 = 56.1) 
 (4432 = 56.1) 
 (4439 = 56.1) 
 (4500 = 56.1) 
 (4510 = 54.1) 
 (4511 = 54.1) 
 (4512 = 54.1) 
 (4513 = 54.1) 
 (4514 = 54.1) 
 (4519 = 54.1) 
 (4520 = 54.1) 
 (4521 = 56.1) 
 (4522 = 56.1) 
 (4523 = 56.1) 
 (4524 = 56.1) 
 (4525 = 56.1) 
 (4529 = 56.1) 
 (4900 = 64.9) 
 (5000 = 67.4) 
 (5001 = 44.0) 
 (5002 = 44.0) 
 (5009 = 44.0) 
 (5100 = 67.4) 
 (5101 = 67.4) 
 (5102 = 67.4) 
 (5103 = 67.4) 
 (5104 = 67.4) 
 (5109 = 67.4) 
 (5200 = 44.0) 
 (5201 = 44.0) 
 (5209 = 44.0) 
 (5300 = 44.0) 
 (5310 = 40.4) 
 (5311 = 40.4) 
 (5312 = 40.4) 
 (5319 = 40.4) 
 (5320 = 49.0) 
 (5321 = 49.0) 
 (5322 = 49.0) 
 (5329 = 49.0) 
 (5330 = 49.0) 
 (5400 = 44.0) 
 (5401 = 44.0) 
 (5402 = 44.0) 
 (5403 = 44.0) 
 (5409 = 44.0) 
 (5410 = 41.0) 
 (5420 = 41.0) 
 (5430 = 32.9) 
 (5440 = 32.9) 
 (5500 = 44.0) 
 (5510 = 42.5) 
 (5511 = 42.5) 
 (5512 = 42.5) 
 (5519 = 42.5) 
 (5520 = 35.6) 
 (5521 = 35.6) 
 (5522 = 35.6) 
 (5529 = 35.6) 
 (5600 = 42.8) 
 (5700 = 54.8) 
 (5701 = 54.8) 
 (5702 = 54.8) 
 (5703 = 54.8) 
 (5709 = 54.8) 
 (5800 = 44.0) 
 (5810 = 44.0) 
 (5820 = 65.0) 
 (5821 = 65.0) 
 (5822 = 65.0) 
 (5823 = 65.0) 
 (5829 = 65.0) 
 (5830 = 65.0) 
 (5831 = 44.0) 
 (5832 = 44.0) 
 (5833 = 44.0) 
 (5840 = 65.0) 
 (5850 = 44.0) 
 (5870 = 44.0) 
 (5880 = 44.0) 
 (5890 = 44.0) 
 (5891 = 44.0) 
 (5892 = 44.0) 
 (5895 = 44.0) 
 (5899 = 44.0) 
 (5900 = 44.0) 
 (5910 = 42.5) 
 (5920 = 44.0) 
 (5930 = 32.9) 
 (5960 = 44.0) 
 (5990 = 32.9) 
 (5991 = 44.0) 
 (5992 = 44.0) 
 (5993 = 44.0) 
 (5994 = 44.0) 
 (5995 = 44.0) 
 (5996 = 44.0) 
 (5997 = 44.0) 
 (5998 = 44.0) 
 (5999 = 44.0) 
 (6000 = 35.7) 
 (6001 = 35.3) 
 (6009 = 35.3) 
 (6100 = 35.3) 
 (6110 = 35.7) 
 (6111 = 35.7) 
 (6112 = 35.7) 
 (6113 = 35.7) 
 (6114 = 35.7) 
 (6115 = 35.7) 
 (6116 = 35.7) 
 (6117 = 35.7) 
 (6119 = 35.7) 
 (6120 = 35.7) 
 (6130 = 35.7) 
 (6140 = 35.7) 
 (6150 = 35.7) 
 (6160 = 35.3) 
 (6200 = 35.3) 
 (6210 = 28.8) 
 (6211 = 28.8) 
 (6219 = 28.8) 
 (6220 = 28.8) 
 (6230 = 28.8) 
 (6239 = 35.3) 
 (6240 = 35.3) 
 (6250 = 28.8) 
 (6260 = 35.3) 
 (6270 = 28.8) 
 (6280 = 35.3) 
 (6290 = 28.8) 
 (6291 = 35.3) 
 (6299 = 35.3) 
 (6300 = 35.3) 
 (6310 = 35.3) 
 (6311 = 35.3) 
 (6319 = 35.3) 
 (6320 = 35.3) 
 (6321 = 35.3) 
 (6322 = 35.3) 
 (6329 = 35.3) 
 (6400 = 35.3) 
 (6410 = 35.3) 
 (6411 = 35.3) 
 (6419 = 35.3) 
 (6490 = 35.3) 
 (6491 = 35.3) 
 (6499 = 35.3) 
 (7000 = 48.2) 
 (7001 = 48.2) 
 (7009 = 48.2) 
 (7100 = 47.6) 
 (7110 = 47.6) 
 (7111 = 47.6) 
 (7112 = 47.6) 
 (7113 = 47.6) 
 (7119 = 47.6) 
 (7120 = 47.6) 
 (7130 = 47.6) 
 (7139 = 47.6) 
 (7140 = 47.6) 
 (7190 = 41.0) 
 (7200 = 47.6) 
 (7210 = 47.6) 
 (7220 = 47.6) 
 (7230 = 47.6) 
 (7240 = 47.6) 
 (7250 = 47.6) 
 (7260 = 47.6) 
 (7270 = 47.6) 
 (7280 = 47.6) 
 (7290 = 47.6) 
 (7300 = 47.6) 
 (7310 = 47.6) 
 (7320 = 41.0) 
 (7321 = 47.6) 
 (7329 = 47.6) 
 (7330 = 41.0) 
 (7340 = 41.0) 
 (7400 = 47.6) 
 (7410 = 47.6) 
 (7420 = 47.6) 
 (7430 = 41.0) 
 (7440 = 41.0) 
 (7450 = 47.6) 
 (7490 = 47.6) 
 (7491 = 47.6) 
 (7499 = 47.6) 
 (7500 = 47.6) 
 (7510 = 41.0) 
 (7520 = 41.6) 
 (7530 = 38.5) 
 (7540 = 42.4) 
 (7541 = 42.4) 
 (7549 = 42.4) 
 (7550 = 43.6) 
 (7560 = 35.0) 
 (7570 = 35.0) 
 (7580 = 35.0) 
 (7590 = 35.0) 
 (7600 = 47.6) 
 (7610 = 35.0) 
 (7620 = 35.0) 
 (7700 = 47.6) 
 (7710 = 41.1) 
 (7711 = 47.6) 
 (7719 = 47.6) 
 (7720 = 41.1) 
 (7730 = 41.1) 
 (7731 = 47.6) 
 (7732 = 47.6) 
 (7739 = 47.6) 
 (7740 = 41.1) 
 (7750 = 41.1) 
 (7760 = 41.1) 
 (7761 = 41.1) 
 (7769 = 41.1) 
 (7770 = 41.1) 
 (7780 = 41.1) 
 (7790 = 41.1) 
 (7799 = 47.6) 
 (7800 = 47.6) 
 (7810 = 47.3) 
 (7820 = 47.3) 
 (7830 = 47.3) 
 (7890 = 47.6) 
 (7899 = 47.6) 
 (7900 = 47.6) 
 (7910 = 50.4) 
 (7911 = 50.4) 
 (7919 = 50.4) 
 (7920 = 50.4) 
 (7930 = 47.5) 
 (7940 = 47.5) 
 (7950 = 47.5) 
 (7960 = 50.4) 
 (7970 = 50.4) 
 (7990 = 50.4) 
 (8000 = 47.6) 
 (8010 = 47.5) 
 (8020 = 47.6) 
 (8030 = 50.4) 
 (8100 = 47.6) 
 (8110 = 46.1) 
 (8120 = 47.6) 
 (8160 = 46.1) 
 (8190 = 47.6) 
 (8191 = 47.6) 
 (8199 = 47.6) 
 (8200 = 46.1) 
 (8300 = 47.6) 
 (8310 = 46.1) 
 (8311 = 47.6) 
 (8319 = 47.6) 
 (8320 = 46.1) 
 (8321 = 47.6) 
 (8329 = 47.6) 
 (8330 = 46.1) 
 (8331 = 47.6) 
 (8339 = 47.6) 
 (8340 = 46.1) 
 (8350 = 47.6) 
 (8351 = 47.6) 
 (8359 = 47.6) 
 (8360 = 47.6) 
 (8370 = 47.6) 
 (8380 = 46.1) 
 (8390 = 46.1) 
 (8400 = 47.6) 
 (8410 = 47.6) 
 (8411 = 47.6) 
 (8412 = 47.6) 
 (8419 = 47.6) 
 (8420 = 45.6) 
 (8421 = 47.6) 
 (8422 = 47.6) 
 (8429 = 47.6) 
 (8430 = 45.6) 
 (8431 = 45.6) 
 (8439 = 45.6) 
 (8440 = 45.6) 
 (8450 = 47.6) 
 (8490 = 48.0) 
 (8491 = 48.0) 
 (8492 = 48.0) 
 (8493 = 48.0) 
 (8494 = 48.0) 
 (8499 = 48.0) 
 (8500 = 47.6) 
 (8510 = 48.0) 
 (8520 = 48.0) 
 (8530 = 48.0) 
 (8540 = 48.0) 
 (8550 = 48.0) 
 (8551 = 47.6) 
 (8559 = 47.6) 
 (8560 = 48.0) 
 (8570 = 48.0) 
 (8590 = 48.0) 
 (8600 = 47.6) 
 (8610 = 48.0) 
 (8620 = 47.6) 
 (8700 = 47.6) 
 (8710 = 47.6) 
 (8711 = 47.6) 
 (8719 = 47.6) 
 (8720 = 45.6) 
 (8730 = 45.6) 
 (8731 = 47.6) 
 (8732 = 47.6) 
 (8733 = 47.6) 
 (8739 = 47.6) 
 (8740 = 47.6) 
 (8800 = 53.6) 
 (8801 = 47.6) 
 (8809 = 47.6) 
 (8900 = 47.6) 
 (8910 = 53.6) 
 (8911 = 47.6) 
 (8919 = 47.6) 
 (8920 = 53.6) 
 (8930 = 53.6) 
 (8940 = 47.6) 
 (8950 = 47.6) 
 (8960 = 53.6) 
 (8970 = 53.6) 
 (8980 = 47.6) 
 (8990 = 53.6) 
 (9000 = 47.6) 
 (9010 = 39.0) 
 (9020 = 39.0) 
 (9100 = 39.0) 
 (9200 = 47.6) 
 (9210 = 53.6) 
 (9211 = 47.6) 
 (9219 = 47.6) 
 (9220 = 53.6) 
 (9230 = 47.6) 
 (9240 = 47.6) 
 (9250 = 47.6) 
 (9260 = 47.6) 
 (9270 = 47.6) 
 (9290 = 47.6) 
 (9300 = 47.6) 
 (9310 = 47.6) 
 (9311 = 47.6) 
 (9319 = 47.6) 
 (9390 = 47.6) 
 (9400 = 47.6) 
 (9410 = 44.1) 
 (9420 = 47.6) 
 (9430 = 47.6) 
 (9440 = 44.1) 
 (9450 = 40.8) 
 (9490 = 40.8) 
 (9491 = 40.8) 
 (9492 = 40.8) 
 (9493 = 40.8) 
 (9499 = 40.8) 
 (9500 = 47.6) 
 (9510 = 47.6) 
 (9520 = 47.6) 
 (9530 = 47.6) 
 (9540 = 47.6) 
 (9541 = 47.6) 
 (9542 = 47.6) 
 (9549 = 47.6) 
 (9550 = 47.6) 
 (9551 = 47.6) 
 (9559 = 47.6) 
 (9560 = 47.6) 
 (9570 = 47.6) 
 (9580 = 47.6) 
 (9590 = 47.6) 
 (9591 = 47.6) 
 (9592 = 47.6) 
 (9593 = 47.6) 
 (9594 = 47.6) 
 (9595 = 47.6) 
 (9596 = 47.6) 
 (9599 = 47.6) 
 (9600 = 47.6) 
 (9610 = 47.6) 
 (9690 = 47.6) 
 (9700 = 47.6) 
 (9710 = 47.6) 
 (9711 = 47.6) 
 (9712 = 47.6) 
 (9713 = 47.6) 
 (9714 = 47.6) 
 (9719 = 47.6) 
 (9720 = 47.6) 
 (9730 = 47.6) 
 (9731 = 47.6) 
 (9739 = 47.6) 
 (9740 = 47.6) 
 (9790 = 47.6) 
 (9800 = 47.6) 
 (9810 = 47.6) 
 (9811 = 47.6) 
 (9819 = 47.6) 
 (9820 = 47.6) 
 (9830 = 47.6) 
 (9831 = 47.6) 
 (9832 = 47.6) 
 (9839 = 47.6) 
 (9840 = 47.6) 
 (9850 = 47.6) 
 (9851 = 47.6) 
 (9852 = 47.6) 
 (9853 = 47.6) 
 (9854 = 47.6) 
 (9855 = 47.6) 
 (9859 = 47.6) 
 (9860 = 47.6) 
 (9861 = 47.6) 
 (9869 = 47.6) 
 (9890 = 47.6) 
 (9891 = 47.6) 
 (9899 = 47.6) 
 (9900 = 47.6) 
 (9910 = 47.1) 
 (9920 = 52.3) 
 (9930 = 47.6) 
 (9940 = 47.6) 
 (9950 = 47.6) 
 (9951 = 47.6) 
 (9959 = 47.6) 
 (9970 = 47.6) 
 (9971 = 47.6) 
 (9979 = 47.6) 
 (9990 = 47.6) 
 (9991 = 47.6) 
 (9992 = 47.6) 
 (9993 = 47.6) 
 (9994 = 47.6) 
 (9995 = 47.6) 
 (9996 = 47.6) 
 (9997 = 47.6) 
 (9999 = 47.6) .




* EOF.
**********************************************.



 

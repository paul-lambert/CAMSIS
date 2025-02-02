*********************************************************.
* CAMSIS Ireland 1996.
*
* RECODE COMMAND IN SPSS FOR FEMALE TITLE ONLY CSO SCORES. 
*********************************************************.


*********************************************************.
* This SPSS recode applies to female title only Irish national 
* occupational ('CSO') units,
* and converts a CSO  variable into the 1996 CAMSIS scores.
* It uses the same info as is available from the .sav index 
* files, and the Excel spreadsheets. 
*
* It may be conducted by computing a variable, named
* wtcs, which is equal to CSO units.
* It is then necessary to run the 
* recode below, for instance by running this file as an 'include' 
* file. 
************************************************************.




recode wtcs
 (100 = 63.2) 
 (101 = 61.3) 
 (102 = 71.0) 
 (103 = 71.0) 
 (110 = 70.4) 
 (111 = 70.4) 
 (120 = 89.0) 
 (121 = 68.0) 
 (122 = 68.0) 
 (124 = 81.6) 
 (126 = 92.9) 
 (130 = 62.7) 
 (131 = 69.7) 
 (132 = 62.6) 
 (139 = 61.6) 
 (140 = 90.3) 
 (141 = 90.3) 
 (150 = 60.0) 
 (152 = 60.0) 
 (160 = 57.1) 
 (171 = 53.4) 
 (173 = 56.2) 
 (174 = 49.7) 
 (175 = 56.2) 
 (176 = 62.9) 
 (177 = 62.9) 
 (178 = 53.4) 
 (179 = 53.6) 
 (191 = 59.8) 
 (199 = 59.8) 
 (200 = 99.0) 
 (201 = 79.1) 
 (202 = 90.9) 
 (209 = 99.0) 
 (210 = 70.2) 
 (211 = 70.2) 
 (212 = 70.2) 
 (214 = 70.2) 
 (215 = 99.0) 
 (216 = 70.2) 
 (219 = 70.2) 
 (220 = 99.0) 
 (221 = 93.7) 
 (223 = 99.0) 
 (224 = 99.0) 
 (230 = 76.0) 
 (233 = 69.3) 
 (234 = 63.0) 
 (239 = 70.1) 
 (240 = 99.0) 
 (242 = 99.0) 
 (250 = 71.9) 
 (252 = 99.0) 
 (260 = 70.2) 
 (270 = 70.2) 
 (290 = 92.0) 
 (292 = 92.0) 
 (293 = 92.0) 
 (300 = 67.2) 
 (301 = 67.5) 
 (302 = 67.5) 
 (303 = 67.5) 
 (309 = 75.1) 
 (310 = 60.1) 
 (312 = 60.1) 
 (313 = 60.1) 
 (320 = 68.1) 
 (331 = 60.1) 
 (332 = 60.1) 
 (340 = 56.0) 
 (342 = 57.7) 
 (343 = 83.7) 
 (346 = 71.9) 
 (347 = 82.1) 
 (349 = 57.7) 
 (350 = 60.1) 
 (361 = 75.7) 
 (363 = 75.7) 
 (371 = 57.1) 
 (380 = 91.1) 
 (381 = 87.6) 
 (384 = 99.0) 
 (386 = 89.7) 
 (387 = 67.4) 
 (390 = 86.8) 
 (391 = 58.1) 
 (394 = 62.2) 
 (396 = 62.2) 
 (399 = 62.2) 
 (400 = 51.3) 
 (401 = 51.2) 
 (410 = 53.9) 
 (411 = 55.3) 
 (412 = 54.6) 
 (430 = 51.6) 
 (441 = 44.2) 
 (459 = 53.5) 
 (460 = 51.2) 
 (462 = 50.9) 
 (490 = 48.9) 
 (500 = 27.0) 
 (501 = 27.0) 
 (502 = 27.0) 
 (503 = 27.0) 
 (504 = 27.0) 
 (506 = 27.0) 
 (507 = 27.0) 
 (509 = 27.0) 
 (515 = 27.0) 
 (516 = 27.0) 
 (517 = 27.0) 
 (519 = 27.0) 
 (521 = 27.0) 
 (523 = 27.0) 
 (524 = 27.0) 
 (525 = 27.0) 
 (526 = 27.0) 
 (529 = 27.0) 
 (530 = 27.0) 
 (532 = 27.0) 
 (533 = 27.0) 
 (537 = 27.0) 
 (540 = 27.0) 
 (541 = 27.0) 
 (550 = 32.6) 
 (553 = 25.3) 
 (554 = 25.4) 
 (555 = 24.1) 
 (556 = 24.1) 
 (559 = 25.4) 
 (561 = 43.7) 
 (569 = 32.8) 
 (570 = 27.0) 
 (571 = 27.0) 
 (579 = 27.0) 
 (580 = 41.7) 
 (581 = 28.4) 
 (582 = 32.6) 
 (590 = 27.7) 
 (594 = 36.0) 
 (595 = 67.8) 
 (599 = 25.3) 
 (600 = 38.5) 
 (610 = 19.4) 
 (611 = 19.4) 
 (612 = 19.4) 
 (615 = 19.4) 
 (619 = 19.4) 
 (620 = 37.4) 
 (621 = 31.6) 
 (622 = 32.1) 
 (630 = 80.7) 
 (640 = 36.0) 
 (644 = 38.9) 
 (650 = 44.6) 
 (652 = 42.3) 
 (660 = 45.4) 
 (670 = 31.5) 
 (672 = 33.9) 
 (673 = 30.8) 
 (690 = 35.8) 
 (700 = 64.4) 
 (702 = 64.4) 
 (710 = 58.5) 
 (719 = 63.4) 
 (720 = 43.0) 
 (731 = 44.9) 
 (732 = 44.9) 
 (790 = 50.8) 
 (800 = 27.5) 
 (802 = 27.5) 
 (809 = 27.5) 
 (810 = 27.6) 
 (812 = 33.9) 
 (814 = 27.2) 
 (820 = 31.0) 
 (821 = 28.3) 
 (824 = 28.3) 
 (825 = 24.0) 
 (829 = 29.4) 
 (830 = 29.1) 
 (834 = 29.1) 
 (839 = 29.1) 
 (840 = 32.0) 
 (841 = 35.6) 
 (850 = 31.0) 
 (851 = 28.8) 
 (860 = 32.4) 
 (862 = 23.8) 
 (871 = 67.5) 
 (872 = 67.5) 
 (873 = 67.5) 
 (874 = 67.5) 
 (880 = 29.1) 
 (881 = 29.1) 
 (882 = 29.1) 
 (885 = 29.1) 
 (887 = 29.1) 
 (889 = 29.1) 
 (892 = 26.6) 
 (893 = 26.6) 
 (895 = 26.6) 
 (897 = 26.6) 
 (898 = 26.6) 
 (899 = 26.6) 
 (900 = 15.3) 
 (901 = 13.5) 
 (903 = 14.0) 
 (904 = 14.0) 
 (913 = 31.5) 
 (919 = 31.5) 
 (922 = 52.1) 
 (923 = 52.1) 
 (929 = 52.1) 
 (930 = 29.2) 
 (931 = 29.2) 
 (933 = 29.2) 
 (934 = 29.2) 
 (940 = 53.1) 
 (951 = 28.6) 
 (953 = 32.4) 
 (955 = 27.7) 
 (958 = 26.0) 
 (959 = 27.7) 
 (990 = 35.1) . 





* EOF.
*****************************************************.

 


*************************************************.
* This file shows how UK SOC 1990 categories could be recoded 
* into ISEI Ganzeboom et al Socio-economic status categories. 

* It uses the soc to ISCO-88 trnaslation provided by OIU, 
* assuming information only on occupational title, 
* followed by the ISCO-88 to ISEI translation provided by 
* the ISMF website, though for this case the intermittent recode
* is excluded for convenience.
* (Produced by Paul Lambert 16.6.02).


* Recommended file handling: run this file as an include 
* file thus defining the ssssocisei macro. 
* Then call the macro for variable(s) which have been 
* computed to be equal to uk90 socs, eg :.
**compute ownisei=ownsoc. 
**compute spisei=spsoc. 
**include file="uksoctoiseithruisco88v2.sps".
**ssssocisei {ownisei spisei}.

*********************************************************. 

* Note that there are 371 soc titles to recode, of which all 
* are successfully given an ISCO value under the OIU system, 
* but then only 364 get assigned an ISEI value under the ISMF recode, 
* missing values being denoted as -999. 


define socisei (occ=!enclose('{','}') ).
recode !occ 
 (100 = 77.00) 
 (101 = 70.00) 
 (102 = 77.00) 
 (103 = -999.00) 
 (110 = 67.00) 
 (111 = 67.00) 
 (112 = 45.00) 
 (113 = 67.00) 
 (120 = 69.00) 
 (121 = 56.00) 
 (122 = 69.00) 
 (123 = 69.00) 
 (124 = 69.00) 
 (125 = 69.00) 
 (126 = 69.00) 
 (127 = 69.00) 
 (130 = 69.00) 
 (131 = 87.00) 
 (132 = -999.00) 
 (139 = 69.00) 
 (140 = 59.00) 
 (141 = 59.00) 
 (142 = 59.00) 
 (150 = -999.00) 
 (151 = -999.00) 
 (152 = 56.00) 
 (153 = 67.00) 
 (154 = 67.00) 
 (155 = 67.00) 
 (160 = 23.00) 
 (169 = 43.00) 
 (170 = 59.00) 
 (171 = 49.00) 
 (172 = 51.00) 
 (173 = 44.00) 
 (174 = 44.00) 
 (175 = 44.00) 
 (176 = 51.00) 
 (177 = 56.00) 
 (178 = 49.00) 
 (179 = 49.00) 
 (190 = 58.00) 
 (191 = 67.00) 
 (199 = 59.00) 
 (200 = 74.00) 
 (201 = 77.00) 
 (202 = 74.00) 
 (209 = 74.00) 
 (210 = 69.00) 
 (211 = 67.00) 
 (212 = 68.00) 
 (213 = 68.00) 
 (214 = 71.00) 
 (215 = 71.00) 
 (216 = 69.00) 
 (217 = 69.00) 
 (218 = 69.00) 
 (219 = 69.00) 
 (220 = 88.00) 
 (221 = 74.00) 
 (222 = 60.00) 
 (223 = 85.00) 
 (224 = 83.00) 
 (230 = 77.00) 
 (231 = 77.00) 
 (232 = 70.00) 
 (233 = 69.00) 
 (234 = 66.00) 
 (235 = 66.00) 
 (239 = 65.00) 
 (240 = 90.00) 
 (241 = 85.00) 
 (242 = 85.00) 
 (250 = 69.00) 
 (251 = 69.00) 
 (252 = 71.00) 
 (253 = 69.00) 
 (260 = 69.00) 
 (261 = 69.00) 
 (262 = 56.00) 
 (270 = 65.00) 
 (271 = 65.00) 
 (290 = 71.00) 
 (291 = 71.00) 
 (292 = 53.00) 
 (293 = 51.00) 
 (300 = 45.00) 
 (301 = 54.00) 
 (302 = 46.00) 
 (303 = 53.00) 
 (304 = 45.00) 
 (309 = 53.00) 
 (310 = 51.00) 
 (311 = 50.00) 
 (312 = 69.00) 
 (313 = 56.00) 
 (320 = 71.00) 
 (330 = 69.00) 
 (331 = 69.00) 
 (332 = 52.00) 
 (340 = 43.00) 
 (341 = 43.00) 
 (342 = 57.00) 
 (343 = 60.00) 
 (344 = 60.00) 
 (345 = 60.00) 
 (346 = 51.00) 
 (347 = 51.00) 
 (348 = 51.00) 
 (349 = 51.00) 
 (350 = 59.00) 
 (360 = 56.00) 
 (361 = 54.00) 
 (362 = 57.00) 
 (363 = 69.00) 
 (364 = 69.00) 
 (370 = 43.00) 
 (371 = 43.00) 
 (380 = 65.00) 
 (381 = 53.00) 
 (382 = 53.00) 
 (383 = 53.00) 
 (384 = 64.00) 
 (385 = 64.00) 
 (386 = 48.00) 
 (387 = 54.00) 
 (390 = 65.00) 
 (391 = 65.00) 
 (392 = 69.00) 
 (393 = 38.00) 
 (394 = 50.00) 
 (395 = 50.00) 
 (396 = 50.00) 
 (399 = 54.00) 
 (400 = 39.00) 
 (401 = 39.00) 
 (410 = 51.00) 
 (411 = 46.00) 
 (412 = 40.00) 
 (420 = 39.00) 
 (421 = 39.00) 
 (430 = 39.00) 
 (440 = 32.00) 
 (441 = 32.00) 
 (450 = 53.00) 
 (451 = 53.00) 
 (452 = 51.00) 
 (459 = 53.00) 
 (460 = 52.00) 
 (461 = 52.00) 
 (462 = 52.00) 
 (463 = 57.00) 
 (490 = 50.00) 
 (491 = 39.00) 
 (500 = 29.00) 
 (501 = 19.00) 
 (502 = 31.00) 
 (503 = 26.00) 
 (504 = 29.00) 
 (505 = 30.00) 
 (506 = 30.00) 
 (507 = 29.00) 
 (509 = 30.00) 
 (510 = 34.00) 
 (511 = 34.00) 
 (512 = 34.00) 
 (513 = 34.00) 
 (514 = 34.00) 
 (515 = 40.00) 
 (516 = 34.00) 
 (517 = 38.00) 
 (518 = 38.00) 
 (519 = 34.00) 
 (520 = 40.00) 
 (521 = 40.00) 
 (522 = 40.00) 
 (523 = 40.00) 
 (524 = 38.00) 
 (525 = 39.00) 
 (526 = 39.00) 
 (529 = 39.00) 
 (530 = 33.00) 
 (531 = 29.00) 
 (532 = 33.00) 
 (533 = 33.00) 
 (534 = 30.00) 
 (535 = 30.00) 
 (536 = 30.00) 
 (537 = 30.00) 
 (540 = 34.00) 
 (541 = 33.00) 
 (542 = 33.00) 
 (543 = 40.00) 
 (544 = 34.00) 
 (550 = 29.00) 
 (551 = 29.00) 
 (552 = 24.00) 
 (553 = 33.00) 
 (554 = 28.00) 
 (555 = 31.00) 
 (556 = 45.00) 
 (557 = 36.00) 
 (559 = 33.00) 
 (560 = 40.00) 
 (561 = 40.00) 
 (562 = 37.00) 
 (563 = 38.00) 
 (569 = 40.00) 
 (570 = 29.00) 
 (571 = 33.00) 
 (572 = 33.00) 
 (573 = 33.00) 
 (579 = 33.00) 
 (580 = 31.00) 
 (581 = 30.00) 
 (582 = 30.00) 
 (590 = 28.00) 
 (591 = 29.00) 
 (592 = 38.00) 
 (593 = 38.00) 
 (594 = 23.00) 
 (595 = 23.00) 
 (596 = 29.00) 
 (597 = 30.00) 
 (598 = 33.00) 
 (599 = 29.00) 
 (600 = -999.00) 
 (601 = -999.00) 
 (610 = 50.00) 
 (611 = 42.00) 
 (612 = 40.00) 
 (613 = 56.00) 
 (614 = 40.00) 
 (615 = 40.00) 
 (619 = 40.00) 
 (620 = 30.00) 
 (621 = 34.00) 
 (622 = 34.00) 
 (630 = 34.00) 
 (631 = 34.00) 
 (640 = 38.00) 
 (641 = 25.00) 
 (642 = 25.00) 
 (643 = 25.00) 
 (644 = 25.00) 
 (650 = 38.00) 
 (651 = 25.00) 
 (652 = 25.00) 
 (659 = 25.00) 
 (660 = 29.00) 
 (661 = 29.00) 
 (670 = 30.00) 
 (671 = 30.00) 
 (672 = 23.00) 
 (673 = 16.00) 
 (690 = 54.00) 
 (691 = 40.00) 
 (699 = 27.00) 
 (700 = 50.00) 
 (701 = 50.00) 
 (702 = 55.00) 
 (703 = 55.00) 
 (710 = 56.00) 
 (719 = 54.00) 
 (720 = 43.00) 
 (721 = 53.00) 
 (722 = 43.00) 
 (730 = 29.00) 
 (731 = 29.00) 
 (732 = 43.00) 
 (733 = 43.00) 
 (790 = 53.00) 
 (791 = 53.00) 
 (792 = 29.00) 
 (800 = 29.00) 
 (801 = 29.00) 
 (802 = 29.00) 
 (809 = 29.00) 
 (810 = 32.00) 
 (811 = 29.00) 
 (812 = 29.00) 
 (813 = 29.00) 
 (814 = 32.00) 
 (820 = 35.00) 
 (821 = 27.00) 
 (822 = 38.00) 
 (823 = 22.00) 
 (824 = 30.00) 
 (825 = 30.00) 
 (826 = 29.00) 
 (829 = 35.00) 
 (830 = 31.00) 
 (831 = 30.00) 
 (832 = 30.00) 
 (833 = 28.00) 
 (834 = 30.00) 
 (839 = 30.00) 
 (840 = 36.00) 
 (841 = 36.00) 
 (842 = 24.00) 
 (843 = 30.00) 
 (844 = 30.00) 
 (850 = 31.00) 
 (851 = 31.00) 
 (859 = 31.00) 
 (860 = 30.00) 
 (861 = 32.00) 
 (862 = 20.00) 
 (863 = 30.00) 
 (864 = 30.00) 
 (869 = 20.00) 
 (870 = 34.00) 
 (871 = 34.00) 
 (872 = 34.00) 
 (873 = 30.00) 
 (874 = 30.00) 
 (875 = 34.00) 
 (880 = 32.00) 
 (881 = 34.00) 
 (882 = 41.00) 
 (883 = 32.00) 
 (884 = 32.00) 
 (885 = 26.00) 
 (886 = 28.00) 
 (887 = 28.00) 
 (889 = 28.00) 
 (890 = 35.00) 
 (891 = 38.00) 
 (892 = 33.00) 
 (893 = 32.00) 
 (894 = 33.00) 
 (895 = 33.00) 
 (896 = 30.00) 
 (897 = 29.00) 
 (898 = 30.00) 
 (899 = 36.00) 
 (900 = 16.00) 
 (901 = 26.00) 
 (902 = 16.00) 
 (903 = 28.00) 
 (904 = 22.00) 
 (910 = 21.00) 
 (911 = 20.00) 
 (912 = 20.00) 
 (913 = 21.00) 
 (919 = 20.00) 
 (920 = 20.00) 
 (921 = 21.00) 
 (922 = 21.00) 
 (923 = 21.00) 
 (924 = 29.00) 
 (929 = 21.00) 
 (930 = 29.00) 
 (931 = 29.00) 
 (932 = 29.00) 
 (933 = 23.00) 
 (934 = 29.00) 
 (940 = 39.00) 
 (941 = 25.00) 
 (950 = 16.00) 
 (951 = 27.00) 
 (952 = 16.00) 
 (953 = 34.00) 
 (954 = 43.00) 
 (955 = 27.00) 
 (956 = 23.00) 
 (957 = 23.00) 
 (958 = 16.00) 
 (959 = 27.00) 
 (990 = 20.00) 
 (999 = -999.00) 
  (else=-999).

!enddefine.

**************************************************.
***************************************************.
  

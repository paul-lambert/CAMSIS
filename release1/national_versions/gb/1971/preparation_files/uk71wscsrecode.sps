*********************************************************.
* CAMSIS UK 1971.
*
* RECODE COMMAND IN SPSS FOR FEMALE TITLE-BY-STATUS SOC SCORES. 
*********************************************************.

*********************************************************.
* This SPSS recode applies to female title-by-status UK SOC units,
* and converts a SOC-by-status  variable into the 1971 CAMSIS scores.
* It uses the same info as is available from the .sav index 
* files, and the Excel spreadsheets. 
*
* It may be conducted by computing a variable, named
* wscs, which is equal to (UK 1970 SOC units*10) + empst, 
* where empst is a 8 category employment status numeric indicator
* with the following values : 
*             1 - Self-employed gt 25 employees
              2 - Self-employed 1-25 employees
              3 - Self-employed 0 employees
              4 - Manager 25+ underlings
              5 - Manager 1-25 underlings
              6 - Supervisor
              7 - Employee
              9  - Unknown
* .
* It is then necessary to run the 
* recode below, for instance by running this file as an 'include' 
* file. 
************************************************************.




recode wscs
 (11 = 77.0) 
 (12 = 77.0) 
 (13 = 57.3) 
 (14 = 55.3) 
 (15 = 55.3) 
 (16 = 44.4) 
 (17 = 40.7) 
 (19 = 44.4) 
 (21 = 77.0) 
 (22 = 77.0) 
 (23 = 56.4) 
 (24 = 55.3) 
 (25 = 55.3) 
 (26 = 60.3) 
 (27 = 40.7) 
 (29 = 60.3) 
 (31 = 77.0) 
 (32 = 77.0) 
 (33 = 58.9) 
 (34 = 55.3) 
 (35 = 55.3) 
 (36 = 41.2) 
 (37 = 40.1) 
 (39 = 41.2) 
 (41 = 77.0) 
 (42 = 77.0) 
 (43 = 57.3) 
 (44 = 55.3) 
 (45 = 55.3) 
 (46 = 44.4) 
 (47 = 40.7) 
 (49 = 44.4) 
 (51 = 77.0) 
 (52 = 77.0) 
 (53 = 57.3) 
 (54 = 55.3) 
 (55 = 55.3) 
 (56 = 51.0) 
 (57 = 51.0) 
 (59 = 51.0) 
 (61 = 77.0) 
 (62 = 77.0) 
 (63 = 57.3) 
 (64 = 55.3) 
 (65 = 55.3) 
 (66 = 44.4) 
 (67 = 40.7) 
 (69 = 44.4) 
 (71 = 56.3) 
 (72 = 56.3) 
 (73 = 56.3) 
 (74 = 56.3) 
 (75 = 56.3) 
 (76 = 56.3) 
 (77 = 56.3) 
 (79 = 56.3) 
 (81 = 56.3) 
 (82 = 56.3) 
 (83 = 56.3) 
 (84 = 56.3) 
 (85 = 56.3) 
 (86 = 56.3) 
 (87 = 56.3) 
 (89 = 56.3) 
 (91 = 56.3) 
 (92 = 56.3) 
 (93 = 56.3) 
 (94 = 56.3) 
 (95 = 56.3) 
 (96 = 56.3) 
 (97 = 56.3) 
 (99 = 56.3) 
 (101 = 56.3) 
 (102 = 56.3) 
 (103 = 56.3) 
 (104 = 56.3) 
 (105 = 56.3) 
 (106 = 56.3) 
 (107 = 56.3) 
 (109 = 56.3) 
 (111 = 37.5) 
 (112 = 37.5) 
 (113 = 37.5) 
 (114 = 37.5) 
 (115 = 37.5) 
 (116 = 37.5) 
 (117 = 37.5) 
 (119 = 37.5) 
 (121 = 37.5) 
 (122 = 37.5) 
 (123 = 37.5) 
 (124 = 37.5) 
 (125 = 37.5) 
 (126 = 37.5) 
 (127 = 37.5) 
 (129 = 37.5) 
 (131 = 21.9) 
 (132 = 21.9) 
 (133 = 21.9) 
 (134 = 21.9) 
 (135 = 21.9) 
 (136 = 21.9) 
 (137 = 21.9) 
 (139 = 21.9) 
 (141 = 34.2) 
 (142 = 34.2) 
 (143 = 34.2) 
 (144 = 34.2) 
 (145 = 34.2) 
 (146 = 34.2) 
 (147 = 34.2) 
 (149 = 34.2) 
 (151 = 29.0) 
 (152 = 29.0) 
 (153 = 29.0) 
 (154 = 29.0) 
 (155 = 29.0) 
 (156 = 29.0) 
 (157 = 29.0) 
 (159 = 29.0) 
 (161 = 31.5) 
 (162 = 31.5) 
 (163 = 31.5) 
 (164 = 31.5) 
 (165 = 31.5) 
 (166 = 31.5) 
 (167 = 31.5) 
 (169 = 31.5) 
 (171 = 27.2) 
 (172 = 27.2) 
 (173 = 27.2) 
 (174 = 27.2) 
 (175 = 27.2) 
 (176 = 27.2) 
 (177 = 27.2) 
 (179 = 27.2) 
 (181 = 32.3) 
 (182 = 32.3) 
 (183 = 32.3) 
 (184 = 32.3) 
 (185 = 32.3) 
 (186 = 32.3) 
 (187 = 32.3) 
 (189 = 32.3) 
 (191 = 32.3) 
 (192 = 32.3) 
 (193 = 32.3) 
 (194 = 32.3) 
 (195 = 32.3) 
 (196 = 32.3) 
 (197 = 32.3) 
 (199 = 32.3) 
 (201 = 28.2) 
 (202 = 28.2) 
 (203 = 28.2) 
 (204 = 28.2) 
 (205 = 28.2) 
 (206 = 28.2) 
 (207 = 28.2) 
 (209 = 28.2) 
 (211 = 32.3) 
 (212 = 32.3) 
 (213 = 32.3) 
 (214 = 32.3) 
 (215 = 32.3) 
 (216 = 32.3) 
 (217 = 32.3) 
 (219 = 32.3) 
 (221 = 32.3) 
 (222 = 32.3) 
 (223 = 32.3) 
 (224 = 32.3) 
 (225 = 32.3) 
 (226 = 32.3) 
 (227 = 32.3) 
 (229 = 32.3) 
 (231 = 35.5) 
 (232 = 35.5) 
 (233 = 35.5) 
 (234 = 35.5) 
 (235 = 35.5) 
 (236 = 35.5) 
 (237 = 35.5) 
 (239 = 35.5) 
 (241 = 39.4) 
 (242 = 39.4) 
 (243 = 39.4) 
 (244 = 39.4) 
 (245 = 39.4) 
 (246 = 39.4) 
 (247 = 39.4) 
 (249 = 39.4) 
 (251 = 25.3) 
 (252 = 25.3) 
 (253 = 25.3) 
 (254 = 25.3) 
 (255 = 25.3) 
 (256 = 25.3) 
 (257 = 25.3) 
 (259 = 25.3) 
 (261 = 39.4) 
 (262 = 39.4) 
 (263 = 39.4) 
 (264 = 39.4) 
 (265 = 39.4) 
 (266 = 39.4) 
 (267 = 39.4) 
 (269 = 39.4) 
 (271 = 42.0) 
 (272 = 42.0) 
 (273 = 42.0) 
 (274 = 42.0) 
 (275 = 42.0) 
 (276 = 42.0) 
 (277 = 42.0) 
 (279 = 42.0) 
 (281 = 39.6) 
 (282 = 39.6) 
 (283 = 39.6) 
 (284 = 39.6) 
 (285 = 39.6) 
 (286 = 39.6) 
 (287 = 39.6) 
 (289 = 39.6) 
 (291 = 39.2) 
 (292 = 39.2) 
 (293 = 39.2) 
 (294 = 39.2) 
 (295 = 39.2) 
 (296 = 39.2) 
 (297 = 39.2) 
 (299 = 39.2) 
 (301 = 39.4) 
 (302 = 39.4) 
 (303 = 39.4) 
 (304 = 39.4) 
 (305 = 39.4) 
 (306 = 39.4) 
 (307 = 39.4) 
 (309 = 39.4) 
 (311 = 44.2) 
 (312 = 44.2) 
 (313 = 44.2) 
 (314 = 44.2) 
 (315 = 44.2) 
 (316 = 44.2) 
 (317 = 33.1) 
 (319 = 44.2) 
 (321 = 33.6) 
 (322 = 33.6) 
 (323 = 33.6) 
 (324 = 33.6) 
 (325 = 33.6) 
 (326 = 44.2) 
 (327 = 33.1) 
 (329 = 33.6) 
 (331 = 33.6) 
 (332 = 33.6) 
 (333 = 33.6) 
 (334 = 33.6) 
 (335 = 33.6) 
 (336 = 44.2) 
 (337 = 33.1) 
 (339 = 33.6) 
 (341 = 33.6) 
 (342 = 33.6) 
 (343 = 33.6) 
 (344 = 33.6) 
 (345 = 33.6) 
 (346 = 44.2) 
 (347 = 33.1) 
 (349 = 33.6) 
 (351 = 30.8) 
 (352 = 30.8) 
 (353 = 30.8) 
 (354 = 30.8) 
 (355 = 30.8) 
 (356 = 44.2) 
 (357 = 30.8) 
 (359 = 30.8) 
 (361 = 28.6) 
 (362 = 28.6) 
 (363 = 28.6) 
 (364 = 28.6) 
 (365 = 28.6) 
 (366 = 44.2) 
 (367 = 28.6) 
 (369 = 28.6) 
 (371 = 33.6) 
 (372 = 33.6) 
 (373 = 33.6) 
 (374 = 33.6) 
 (375 = 33.6) 
 (376 = 44.2) 
 (377 = 33.1) 
 (379 = 33.6) 
 (381 = 33.1) 
 (382 = 33.1) 
 (383 = 33.1) 
 (384 = 33.1) 
 (385 = 33.1) 
 (386 = 44.2) 
 (387 = 33.1) 
 (389 = 33.1) 
 (391 = 32.9) 
 (392 = 32.9) 
 (393 = 32.9) 
 (394 = 32.9) 
 (395 = 32.9) 
 (396 = 44.2) 
 (397 = 32.9) 
 (399 = 32.9) 
 (401 = 33.6) 
 (402 = 33.6) 
 (403 = 33.6) 
 (404 = 33.6) 
 (405 = 33.6) 
 (406 = 44.2) 
 (407 = 33.1) 
 (409 = 33.6) 
 (411 = 33.6) 
 (412 = 33.6) 
 (413 = 33.6) 
 (414 = 33.6) 
 (415 = 33.6) 
 (416 = 44.2) 
 (417 = 33.1) 
 (419 = 33.6) 
 (421 = 33.6) 
 (422 = 33.6) 
 (423 = 33.6) 
 (424 = 33.6) 
 (425 = 33.6) 
 (426 = 44.2) 
 (427 = 33.1) 
 (429 = 33.6) 
 (431 = 43.7) 
 (432 = 43.7) 
 (433 = 43.7) 
 (434 = 43.7) 
 (435 = 43.7) 
 (436 = 44.2) 
 (437 = 43.7) 
 (439 = 43.7) 
 (441 = 16.4) 
 (442 = 16.4) 
 (443 = 16.4) 
 (444 = 16.4) 
 (445 = 16.4) 
 (446 = 44.2) 
 (447 = 16.4) 
 (449 = 16.4) 
 (451 = 33.6) 
 (452 = 33.6) 
 (453 = 33.6) 
 (454 = 33.6) 
 (455 = 33.6) 
 (456 = 44.2) 
 (457 = 33.1) 
 (459 = 33.6) 
 (461 = 33.6) 
 (462 = 33.6) 
 (463 = 33.6) 
 (464 = 33.6) 
 (465 = 33.6) 
 (466 = 44.2) 
 (467 = 33.1) 
 (469 = 33.6) 
 (471 = 28.6) 
 (472 = 28.6) 
 (473 = 28.6) 
 (474 = 28.6) 
 (475 = 28.6) 
 (476 = 44.2) 
 (477 = 28.6) 
 (479 = 28.6) 
 (481 = 31.8) 
 (482 = 31.8) 
 (483 = 31.8) 
 (484 = 31.8) 
 (485 = 31.8) 
 (486 = 44.2) 
 (487 = 31.8) 
 (489 = 31.8) 
 (491 = 33.6) 
 (492 = 33.6) 
 (493 = 33.6) 
 (494 = 33.6) 
 (495 = 33.6) 
 (496 = 44.2) 
 (497 = 33.1) 
 (499 = 33.6) 
 (501 = 41.2) 
 (502 = 41.2) 
 (503 = 41.2) 
 (504 = 41.2) 
 (505 = 41.2) 
 (506 = 44.2) 
 (507 = 41.2) 
 (509 = 41.2) 
 (511 = 51.4) 
 (512 = 51.4) 
 (513 = 51.4) 
 (514 = 51.4) 
 (515 = 51.4) 
 (516 = 44.2) 
 (517 = 51.4) 
 (519 = 51.4) 
 (521 = 33.6) 
 (522 = 33.6) 
 (523 = 33.6) 
 (524 = 33.6) 
 (525 = 33.6) 
 (526 = 44.2) 
 (527 = 33.1) 
 (529 = 33.6) 
 (531 = 35.4) 
 (532 = 35.4) 
 (533 = 35.4) 
 (534 = 35.4) 
 (535 = 35.4) 
 (536 = 44.2) 
 (537 = 35.4) 
 (539 = 35.4) 
 (541 = 32.9) 
 (542 = 32.9) 
 (543 = 32.9) 
 (544 = 32.9) 
 (545 = 32.9) 
 (546 = 44.2) 
 (547 = 32.9) 
 (549 = 32.9) 
 (551 = 24.7) 
 (552 = 24.7) 
 (553 = 24.7) 
 (554 = 24.7) 
 (555 = 24.7) 
 (556 = 24.7) 
 (557 = 24.7) 
 (559 = 24.7) 
 (561 = 34.7) 
 (562 = 34.7) 
 (563 = 34.7) 
 (564 = 34.7) 
 (565 = 34.7) 
 (566 = 34.7) 
 (567 = 34.7) 
 (569 = 34.7) 
 (571 = 34.2) 
 (572 = 34.2) 
 (573 = 34.2) 
 (574 = 34.2) 
 (575 = 34.2) 
 (576 = 34.2) 
 (577 = 34.2) 
 (579 = 34.2) 
 (581 = 34.7) 
 (582 = 34.7) 
 (583 = 34.7) 
 (584 = 34.7) 
 (585 = 34.7) 
 (586 = 34.7) 
 (587 = 34.7) 
 (589 = 34.7) 
 (591 = 38.4) 
 (592 = 38.4) 
 (593 = 38.4) 
 (594 = 38.4) 
 (595 = 38.4) 
 (596 = 38.4) 
 (597 = 38.4) 
 (599 = 38.4) 
 (601 = 27.5) 
 (602 = 27.5) 
 (603 = 27.5) 
 (604 = 27.5) 
 (605 = 27.5) 
 (606 = 34.7) 
 (607 = 27.5) 
 (609 = 27.5) 
 (611 = 32.9) 
 (612 = 32.9) 
 (613 = 32.9) 
 (614 = 32.9) 
 (615 = 32.9) 
 (616 = 34.7) 
 (617 = 32.9) 
 (619 = 32.9) 
 (621 = 32.6) 
 (622 = 32.6) 
 (623 = 32.6) 
 (624 = 32.6) 
 (625 = 32.6) 
 (626 = 34.7) 
 (627 = 32.6) 
 (629 = 32.6) 
 (631 = 35.4) 
 (632 = 35.4) 
 (633 = 35.4) 
 (634 = 35.4) 
 (635 = 35.4) 
 (636 = 34.7) 
 (637 = 35.6) 
 (639 = 35.4) 
 (641 = 17.1) 
 (642 = 17.1) 
 (643 = 17.1) 
 (644 = 17.1) 
 (645 = 17.1) 
 (646 = 42.2) 
 (647 = 17.1) 
 (649 = 17.1) 
 (651 = 10.9) 
 (652 = 10.9) 
 (653 = 10.9) 
 (654 = 10.9) 
 (655 = 10.9) 
 (656 = 42.2) 
 (657 = 10.9) 
 (659 = 10.9) 
 (661 = 21.5) 
 (662 = 21.5) 
 (663 = 21.5) 
 (664 = 21.5) 
 (665 = 21.5) 
 (666 = 42.2) 
 (667 = 21.5) 
 (669 = 21.5) 
 (671 = 32.8) 
 (672 = 32.8) 
 (673 = 32.8) 
 (674 = 32.8) 
 (675 = 32.8) 
 (676 = 42.2) 
 (677 = 32.8) 
 (679 = 32.8) 
 (681 = 28.9) 
 (682 = 28.9) 
 (683 = 28.9) 
 (684 = 28.9) 
 (685 = 28.9) 
 (686 = 42.2) 
 (687 = 28.9) 
 (689 = 28.9) 
 (691 = 34.1) 
 (692 = 34.1) 
 (693 = 34.1) 
 (694 = 34.1) 
 (695 = 34.1) 
 (696 = 42.2) 
 (697 = 34.1) 
 (699 = 34.1) 
 (701 = 34.0) 
 (702 = 34.0) 
 (703 = 34.0) 
 (704 = 34.0) 
 (705 = 34.0) 
 (706 = 42.2) 
 (707 = 34.0) 
 (709 = 34.0) 
 (711 = 27.6) 
 (712 = 27.6) 
 (713 = 27.6) 
 (714 = 27.6) 
 (715 = 27.6) 
 (716 = 42.2) 
 (717 = 27.2) 
 (719 = 27.6) 
 (721 = 34.3) 
 (722 = 34.3) 
 (723 = 34.3) 
 (724 = 34.3) 
 (725 = 34.3) 
 (726 = 42.2) 
 (727 = 33.2) 
 (729 = 34.3) 
 (731 = 27.3) 
 (732 = 27.3) 
 (733 = 27.3) 
 (734 = 27.3) 
 (735 = 27.3) 
 (736 = 42.2) 
 (737 = 27.3) 
 (739 = 27.3) 
 (741 = 45.0) 
 (742 = 45.0) 
 (743 = 54.5) 
 (744 = 45.0) 
 (745 = 45.0) 
 (746 = 42.1) 
 (747 = 44.0) 
 (749 = 45.0) 
 (751 = 41.9) 
 (752 = 41.9) 
 (753 = 50.3) 
 (754 = 41.9) 
 (755 = 41.9) 
 (756 = 42.1) 
 (757 = 41.9) 
 (759 = 41.9) 
 (761 = 36.5) 
 (762 = 36.5) 
 (763 = 48.4) 
 (764 = 36.5) 
 (765 = 36.5) 
 (766 = 42.1) 
 (767 = 36.0) 
 (769 = 36.5) 
 (771 = 39.8) 
 (772 = 39.8) 
 (773 = 50.3) 
 (774 = 39.8) 
 (775 = 39.8) 
 (776 = 42.1) 
 (777 = 39.4) 
 (779 = 39.8) 
 (781 = 33.3) 
 (782 = 33.3) 
 (783 = 33.3) 
 (784 = 33.3) 
 (785 = 33.3) 
 (786 = 31.3) 
 (787 = 33.3) 
 (789 = 33.3) 
 (791 = 22.8) 
 (792 = 22.8) 
 (793 = 22.8) 
 (794 = 22.8) 
 (795 = 22.8) 
 (796 = 31.3) 
 (797 = 22.8) 
 (799 = 22.8) 
 (801 = 32.2) 
 (802 = 32.2) 
 (803 = 32.2) 
 (804 = 32.2) 
 (805 = 32.2) 
 (806 = 31.3) 
 (807 = 32.3) 
 (809 = 32.2) 
 (811 = 31.5) 
 (812 = 31.5) 
 (813 = 31.5) 
 (814 = 31.5) 
 (815 = 31.5) 
 (816 = 31.3) 
 (817 = 31.5) 
 (819 = 31.5) 
 (821 = 39.9) 
 (822 = 39.9) 
 (823 = 39.9) 
 (824 = 39.9) 
 (825 = 39.9) 
 (826 = 31.3) 
 (827 = 39.9) 
 (829 = 39.9) 
 (831 = 28.6) 
 (832 = 28.6) 
 (833 = 28.6) 
 (834 = 28.6) 
 (835 = 28.6) 
 (836 = 34.4) 
 (837 = 28.6) 
 (839 = 28.6) 
 (841 = 36.4) 
 (842 = 36.4) 
 (843 = 36.4) 
 (844 = 36.4) 
 (845 = 36.4) 
 (846 = 34.4) 
 (847 = 36.4) 
 (849 = 36.4) 
 (851 = 38.3) 
 (852 = 38.3) 
 (853 = 38.3) 
 (854 = 38.3) 
 (855 = 38.3) 
 (856 = 34.4) 
 (857 = 38.5) 
 (859 = 38.3) 
 (861 = 44.8) 
 (862 = 44.8) 
 (863 = 44.8) 
 (864 = 44.8) 
 (865 = 44.8) 
 (866 = 34.4) 
 (867 = 44.8) 
 (869 = 44.8) 
 (871 = 37.8) 
 (872 = 37.8) 
 (873 = 37.8) 
 (874 = 37.8) 
 (875 = 37.8) 
 (876 = 34.4) 
 (877 = 37.8) 
 (879 = 37.8) 
 (881 = 39.8) 
 (882 = 39.8) 
 (883 = 39.8) 
 (884 = 39.8) 
 (885 = 39.8) 
 (886 = 34.4) 
 (887 = 40.2) 
 (889 = 39.8) 
 (891 = 51.8) 
 (892 = 51.8) 
 (893 = 45.3) 
 (894 = 26.9) 
 (895 = 26.9) 
 (896 = 47.1) 
 (897 = 26.9) 
 (899 = 26.9) 
 (901 = 51.8) 
 (902 = 51.8) 
 (903 = 45.3) 
 (904 = 34.7) 
 (905 = 34.7) 
 (906 = 47.1) 
 (907 = 34.7) 
 (909 = 34.7) 
 (911 = 51.8) 
 (912 = 51.8) 
 (913 = 45.3) 
 (914 = 45.4) 
 (915 = 45.4) 
 (916 = 47.1) 
 (917 = 45.4) 
 (919 = 45.4) 
 (921 = 51.8) 
 (922 = 51.8) 
 (923 = 45.3) 
 (924 = 38.2) 
 (925 = 38.2) 
 (926 = 47.1) 
 (927 = 35.4) 
 (929 = 38.2) 
 (931 = 58.3) 
 (932 = 58.3) 
 (933 = 55.7) 
 (934 = 53.8) 
 (935 = 53.8) 
 (936 = 43.6) 
 (937 = 36.5) 
 (939 = 37.3) 
 (941 = 58.3) 
 (942 = 58.3) 
 (943 = 55.7) 
 (944 = 53.8) 
 (945 = 53.8) 
 (946 = 43.6) 
 (947 = 36.5) 
 (949 = 37.3) 
 (951 = 58.3) 
 (952 = 58.3) 
 (953 = 55.7) 
 (954 = 53.8) 
 (955 = 53.8) 
 (956 = 43.6) 
 (957 = 36.5) 
 (959 = 37.3) 
 (961 = 58.3) 
 (962 = 58.3) 
 (963 = 55.7) 
 (964 = 53.8) 
 (965 = 53.8) 
 (966 = 43.6) 
 (967 = 36.5) 
 (969 = 37.3) 
 (971 = 58.3) 
 (972 = 58.3) 
 (973 = 55.7) 
 (974 = 53.8) 
 (975 = 53.8) 
 (976 = 43.6) 
 (977 = 36.5) 
 (979 = 37.3) 
 (981 = 58.3) 
 (982 = 58.3) 
 (983 = 55.7) 
 (984 = 53.8) 
 (985 = 53.8) 
 (986 = 43.6) 
 (987 = 26.1) 
 (989 = 37.3) 
 (991 = 28.8) 
 (992 = 28.8) 
 (993 = 28.8) 
 (994 = 28.8) 
 (995 = 28.8) 
 (996 = 28.8) 
 (997 = 28.8) 
 (999 = 28.8) 
 (1001 = 31.8) 
 (1002 = 31.8) 
 (1003 = 31.8) 
 (1004 = 31.8) 
 (1005 = 31.8) 
 (1006 = 31.8) 
 (1007 = 31.8) 
 (1009 = 31.8) 
 (1011 = 30.5) 
 (1012 = 30.5) 
 (1013 = 30.5) 
 (1014 = 30.5) 
 (1015 = 30.5) 
 (1016 = 30.5) 
 (1017 = 30.5) 
 (1019 = 30.5) 
 (1021 = 31.8) 
 (1022 = 31.8) 
 (1023 = 31.8) 
 (1024 = 31.8) 
 (1025 = 31.8) 
 (1026 = 31.8) 
 (1027 = 31.8) 
 (1029 = 31.8) 
 (1031 = 31.8) 
 (1032 = 31.8) 
 (1033 = 31.8) 
 (1034 = 31.8) 
 (1035 = 31.8) 
 (1036 = 31.8) 
 (1037 = 31.8) 
 (1039 = 31.8) 
 (1041 = 31.8) 
 (1042 = 31.8) 
 (1043 = 31.8) 
 (1044 = 31.8) 
 (1045 = 31.8) 
 (1046 = 31.8) 
 (1047 = 31.8) 
 (1049 = 31.8) 
 (1051 = 31.8) 
 (1052 = 31.8) 
 (1053 = 31.8) 
 (1054 = 31.8) 
 (1055 = 31.8) 
 (1056 = 31.8) 
 (1057 = 31.8) 
 (1059 = 31.8) 
 (1061 = 28.2) 
 (1062 = 28.2) 
 (1063 = 28.2) 
 (1064 = 28.2) 
 (1065 = 28.2) 
 (1066 = 28.2) 
 (1067 = 28.2) 
 (1069 = 28.2) 
 (1071 = 27.1) 
 (1072 = 27.1) 
 (1073 = 27.1) 
 (1074 = 27.1) 
 (1075 = 27.1) 
 (1076 = 27.1) 
 (1077 = 27.1) 
 (1079 = 27.1) 
 (1081 = 28.9) 
 (1082 = 28.9) 
 (1083 = 28.9) 
 (1084 = 28.9) 
 (1085 = 28.9) 
 (1086 = 28.9) 
 (1087 = 28.9) 
 (1089 = 28.9) 
 (1091 = 28.2) 
 (1092 = 28.2) 
 (1093 = 28.2) 
 (1094 = 28.2) 
 (1095 = 28.2) 
 (1096 = 28.2) 
 (1097 = 28.2) 
 (1099 = 28.2) 
 (1101 = 21.1) 
 (1102 = 21.1) 
 (1103 = 21.1) 
 (1104 = 21.1) 
 (1105 = 21.1) 
 (1106 = 21.1) 
 (1107 = 21.1) 
 (1109 = 21.1) 
 (1111 = 28.2) 
 (1112 = 28.2) 
 (1113 = 28.2) 
 (1114 = 28.2) 
 (1115 = 28.2) 
 (1116 = 28.2) 
 (1117 = 28.2) 
 (1119 = 28.2) 
 (1121 = 19.0) 
 (1122 = 19.0) 
 (1123 = 19.0) 
 (1124 = 19.0) 
 (1125 = 19.0) 
 (1126 = 19.0) 
 (1127 = 19.0) 
 (1129 = 19.0) 
 (1131 = 26.1) 
 (1132 = 26.1) 
 (1133 = 26.1) 
 (1134 = 26.1) 
 (1135 = 26.1) 
 (1136 = 26.1) 
 (1137 = 26.1) 
 (1139 = 26.1) 
 (1141 = 29.7) 
 (1142 = 29.7) 
 (1143 = 29.7) 
 (1144 = 29.7) 
 (1145 = 29.7) 
 (1146 = 29.7) 
 (1147 = 29.7) 
 (1149 = 29.7) 
 (1151 = 52.4) 
 (1152 = 52.4) 
 (1153 = 52.4) 
 (1154 = 52.4) 
 (1155 = 52.4) 
 (1156 = 63.5) 
 (1157 = 51.9) 
 (1159 = 52.4) 
 (1161 = 52.4) 
 (1162 = 52.4) 
 (1163 = 52.4) 
 (1164 = 52.4) 
 (1165 = 52.4) 
 (1166 = 63.5) 
 (1167 = 51.9) 
 (1169 = 52.4) 
 (1171 = 52.4) 
 (1172 = 52.4) 
 (1173 = 52.4) 
 (1174 = 52.4) 
 (1175 = 52.4) 
 (1176 = 63.5) 
 (1177 = 51.9) 
 (1179 = 52.4) 
 (1181 = 52.4) 
 (1182 = 52.4) 
 (1183 = 52.4) 
 (1184 = 52.4) 
 (1185 = 52.4) 
 (1186 = 63.5) 
 (1187 = 51.9) 
 (1189 = 52.4) 
 (1191 = 52.4) 
 (1192 = 52.4) 
 (1193 = 52.4) 
 (1194 = 52.4) 
 (1195 = 52.4) 
 (1196 = 63.5) 
 (1197 = 51.9) 
 (1199 = 52.4) 
 (1201 = 52.4) 
 (1202 = 52.4) 
 (1203 = 52.4) 
 (1204 = 52.4) 
 (1205 = 52.4) 
 (1206 = 63.5) 
 (1207 = 51.9) 
 (1209 = 52.4) 
 (1211 = 53.4) 
 (1212 = 53.4) 
 (1213 = 53.4) 
 (1214 = 53.4) 
 (1215 = 53.4) 
 (1216 = 63.5) 
 (1217 = 53.4) 
 (1219 = 53.4) 
 (1221 = 52.1) 
 (1222 = 52.1) 
 (1223 = 52.1) 
 (1224 = 52.1) 
 (1225 = 52.1) 
 (1226 = 63.5) 
 (1227 = 52.1) 
 (1229 = 52.1) 
 (1231 = 52.4) 
 (1232 = 52.4) 
 (1233 = 52.4) 
 (1234 = 52.4) 
 (1235 = 52.4) 
 (1236 = 63.5) 
 (1237 = 51.9) 
 (1239 = 52.4) 
 (1241 = 52.4) 
 (1242 = 52.4) 
 (1243 = 52.4) 
 (1244 = 52.4) 
 (1245 = 52.4) 
 (1246 = 63.5) 
 (1247 = 51.9) 
 (1249 = 52.4) 
 (1251 = 52.4) 
 (1252 = 52.4) 
 (1253 = 52.4) 
 (1254 = 52.4) 
 (1255 = 52.4) 
 (1256 = 63.5) 
 (1257 = 51.9) 
 (1259 = 52.4) 
 (1261 = 52.4) 
 (1262 = 52.4) 
 (1263 = 52.4) 
 (1264 = 52.4) 
 (1265 = 52.4) 
 (1266 = 63.5) 
 (1267 = 51.9) 
 (1269 = 52.4) 
 (1271 = 57.4) 
 (1272 = 57.4) 
 (1273 = 57.4) 
 (1274 = 57.4) 
 (1275 = 57.4) 
 (1276 = 63.5) 
 (1277 = 57.0) 
 (1279 = 57.4) 
 (1281 = 54.1) 
 (1282 = 54.1) 
 (1283 = 54.1) 
 (1284 = 54.1) 
 (1285 = 54.1) 
 (1286 = 63.5) 
 (1287 = 54.1) 
 (1289 = 54.1) 
 (1291 = 33.9) 
 (1292 = 33.9) 
 (1293 = 33.9) 
 (1294 = 33.9) 
 (1295 = 33.9) 
 (1296 = 63.5) 
 (1297 = 33.9) 
 (1299 = 33.9) 
 (1301 = 38.9) 
 (1302 = 38.9) 
 (1303 = 38.9) 
 (1304 = 38.9) 
 (1305 = 38.9) 
 (1306 = 63.5) 
 (1307 = 38.9) 
 (1309 = 38.9) 
 (1311 = 29.7) 
 (1312 = 29.7) 
 (1313 = 29.7) 
 (1314 = 29.7) 
 (1315 = 29.7) 
 (1316 = 63.5) 
 (1317 = 29.7) 
 (1319 = 29.7) 
 (1321 = 52.4) 
 (1322 = 52.4) 
 (1323 = 52.4) 
 (1324 = 52.4) 
 (1325 = 52.4) 
 (1326 = 63.5) 
 (1327 = 51.9) 
 (1329 = 52.4) 
 (1331 = 52.4) 
 (1332 = 52.4) 
 (1333 = 52.4) 
 (1334 = 52.4) 
 (1335 = 52.4) 
 (1336 = 63.5) 
 (1337 = 51.9) 
 (1339 = 52.4) 
 (1341 = 52.4) 
 (1342 = 52.4) 
 (1343 = 52.4) 
 (1344 = 52.4) 
 (1345 = 52.4) 
 (1346 = 63.5) 
 (1347 = 51.9) 
 (1349 = 52.4) 
 (1351 = 41.4) 
 (1352 = 41.4) 
 (1353 = 41.4) 
 (1354 = 41.4) 
 (1355 = 41.4) 
 (1356 = 63.5) 
 (1357 = 41.4) 
 (1359 = 41.4) 
 (1361 = 42.7) 
 (1362 = 42.7) 
 (1363 = 42.7) 
 (1364 = 42.7) 
 (1365 = 42.7) 
 (1366 = 44.4) 
 (1367 = 42.6) 
 (1369 = 42.7) 
 (1371 = 34.6) 
 (1372 = 34.6) 
 (1373 = 34.6) 
 (1374 = 34.6) 
 (1375 = 34.6) 
 (1376 = 44.4) 
 (1377 = 34.6) 
 (1379 = 34.6) 
 (1381 = 72.7) 
 (1382 = 72.7) 
 (1383 = 71.8) 
 (1384 = 66.9) 
 (1385 = 66.9) 
 (1386 = 63.6) 
 (1387 = 62.8) 
 (1389 = 66.9) 
 (1391 = 72.7) 
 (1392 = 72.7) 
 (1393 = 64.1) 
 (1394 = 66.9) 
 (1395 = 66.9) 
 (1396 = 59.5) 
 (1397 = 61.0) 
 (1399 = 61.1) 
 (1401 = 72.7) 
 (1402 = 72.7) 
 (1403 = 71.8) 
 (1404 = 66.9) 
 (1405 = 66.9) 
 (1406 = 63.6) 
 (1407 = 57.4) 
 (1409 = 57.8) 
 (1411 = 72.7) 
 (1412 = 72.7) 
 (1413 = 80.5) 
 (1414 = 66.9) 
 (1415 = 66.9) 
 (1416 = 66.9) 
 (1417 = 67.3) 
 (1419 = 67.5) 
 (1421 = 72.7) 
 (1422 = 72.7) 
 (1423 = 71.8) 
 (1424 = 66.9) 
 (1425 = 66.9) 
 (1426 = 73.5) 
 (1427 = 62.8) 
 (1429 = 73.5) 
 (1431 = 62.3) 
 (1432 = 61.8) 
 (1433 = 55.5) 
 (1434 = 57.5) 
 (1435 = 59.2) 
 (1436 = 51.4) 
 (1437 = 50.4) 
 (1439 = 57.6) 
 (1441 = 62.3) 
 (1442 = 62.3) 
 (1443 = 56.8) 
 (1444 = 59.2) 
 (1445 = 59.2) 
 (1446 = 51.4) 
 (1447 = 50.1) 
 (1449 = 50.2) 
 (1451 = 62.3) 
 (1452 = 62.3) 
 (1453 = 56.8) 
 (1454 = 59.2) 
 (1455 = 59.2) 
 (1456 = 51.4) 
 (1457 = 42.4) 
 (1459 = 42.4) 
 (1461 = 62.3) 
 (1462 = 62.3) 
 (1463 = 58.0) 
 (1464 = 59.2) 
 (1465 = 59.2) 
 (1466 = 51.4) 
 (1467 = 47.3) 
 (1469 = 49.8) 
 (1471 = 62.3) 
 (1472 = 62.3) 
 (1473 = 56.8) 
 (1474 = 59.2) 
 (1475 = 59.2) 
 (1476 = 51.4) 
 (1477 = 50.4) 
 (1479 = 52.0) 
 (1481 = 62.3) 
 (1482 = 62.3) 
 (1483 = 56.8) 
 (1484 = 59.2) 
 (1485 = 59.2) 
 (1486 = 51.4) 
 (1487 = 63.6) 
 (1489 = 63.6) 
 (1491 = 62.3) 
 (1492 = 62.3) 
 (1493 = 56.8) 
 (1494 = 59.2) 
 (1495 = 59.2) 
 (1496 = 51.4) 
 (1497 = 50.4) 
 (1499 = 52.0) 
 (1501 = 62.3) 
 (1502 = 75.5) 
 (1503 = 72.3) 
 (1504 = 78.4) 
 (1505 = 59.2) 
 (1506 = 51.4) 
 (1507 = 57.5) 
 (1509 = 67.1) 
 (1511 = 58.2) 
 (1512 = 58.2) 
 (1513 = 59.7) 
 (1514 = 53.8) 
 (1515 = 53.8) 
 (1516 = 43.7) 
 (1517 = 37.2) 
 (1519 = 38.3) 
 (1521 = 58.2) 
 (1522 = 58.2) 
 (1523 = 59.7) 
 (1524 = 53.8) 
 (1525 = 53.8) 
 (1526 = 43.7) 
 (1527 = 37.2) 
 (1529 = 38.3) 
 (1531 = 58.2) 
 (1532 = 58.2) 
 (1533 = 59.7) 
 (1534 = 53.8) 
 (1535 = 53.8) 
 (1536 = 43.7) 
 (1537 = 45.5) 
 (1539 = 45.5) 
 (1541 = 58.2) 
 (1542 = 58.2) 
 (1543 = 59.7) 
 (1544 = 48.7) 
 (1545 = 53.8) 
 (1546 = 43.7) 
 (1547 = 37.2) 
 (1549 = 48.7) 
 (1551 = 58.2) 
 (1552 = 58.2) 
 (1553 = 59.7) 
 (1554 = 53.8) 
 (1555 = 53.8) 
 (1556 = 28.5) 
 (1557 = 41.9) 
 (1559 = 41.4) 
 (1561 = 58.2) 
 (1562 = 58.2) 
 (1563 = 57.5) 
 (1564 = 68.4) 
 (1565 = 53.8) 
 (1566 = 43.7) 
 (1567 = 37.2) 
 (1569 = 63.0) 
 (1571 = 58.2) 
 (1572 = 58.2) 
 (1573 = 59.7) 
 (1574 = 58.8) 
 (1575 = 53.8) 
 (1576 = 43.7) 
 (1577 = 57.2) 
 (1579 = 58.2) 
 (1581 = 58.2) 
 (1582 = 58.2) 
 (1583 = 59.7) 
 (1584 = 53.8) 
 (1585 = 53.8) 
 (1586 = 43.7) 
 (1587 = 43.7) 
 (1589 = 43.7) 
 (1591 = 58.2) 
 (1592 = 54.1) 
 (1593 = 56.2) 
 (1594 = 50.6) 
 (1595 = 53.8) 
 (1596 = 43.7) 
 (1597 = 37.2) 
 (1599 = 51.5) 
 (1601 = 58.2) 
 (1602 = 58.2) 
 (1603 = 59.7) 
 (1604 = 53.8) 
 (1605 = 53.8) 
 (1606 = 43.7) 
 (1607 = 43.4) 
 (1609 = 43.4) 
 (1611 = 58.2) 
 (1612 = 58.2) 
 (1613 = 59.7) 
 (1614 = 53.8) 
 (1615 = 53.8) 
 (1616 = 50.1) 
 (1617 = 43.1) 
 (1619 = 43.3) 
 (1621 = 58.2) 
 (1622 = 58.2) 
 (1623 = 59.7) 
 (1624 = 53.8) 
 (1625 = 53.8) 
 (1626 = 43.5) 
 (1627 = 40.0) 
 (1629 = 40.3) 
 (1631 = 58.2) 
 (1632 = 58.2) 
 (1633 = 59.7) 
 (1634 = 53.8) 
 (1635 = 53.8) 
 (1636 = 43.7) 
 (1637 = 39.1) 
 (1639 = 39.1) 
 (1641 = 58.2) 
 (1642 = 58.2) 
 (1643 = 59.7) 
 (1644 = 53.8) 
 (1645 = 53.8) 
 (1646 = 43.7) 
 (1647 = 34.6) 
 (1649 = 34.6) 
 (1651 = 58.2) 
 (1652 = 58.2) 
 (1653 = 59.7) 
 (1654 = 53.8) 
 (1655 = 53.8) 
 (1656 = 43.7) 
 (1657 = 38.3) 
 (1659 = 38.3) 
 (1661 = 58.2) 
 (1662 = 58.2) 
 (1663 = 59.7) 
 (1664 = 53.8) 
 (1665 = 53.8) 
 (1666 = 39.1) 
 (1667 = 28.4) 
 (1669 = 28.5) 
 (1671 = 58.2) 
 (1672 = 57.2) 
 (1673 = 55.0) 
 (1674 = 64.0) 
 (1675 = 53.8) 
 (1676 = 43.7) 
 (1677 = 57.2) 
 (1679 = 57.0) 
 (1681 = 58.2) 
 (1682 = 58.2) 
 (1683 = 59.7) 
 (1684 = 45.0) 
 (1685 = 53.8) 
 (1686 = 28.6) 
 (1687 = 31.7) 
 (1689 = 32.4) 
 (1691 = 58.2) 
 (1692 = 58.2) 
 (1693 = 59.7) 
 (1694 = 53.8) 
 (1695 = 53.8) 
 (1696 = 43.7) 
 (1697 = 37.2) 
 (1699 = 38.3) 
 (1701 = 58.2) 
 (1702 = 58.2) 
 (1703 = 59.7) 
 (1704 = 53.8) 
 (1705 = 53.8) 
 (1706 = 43.7) 
 (1707 = 42.2) 
 (1709 = 42.2) 
 (1711 = 58.2) 
 (1712 = 64.9) 
 (1713 = 68.2) 
 (1714 = 64.4) 
 (1715 = 53.8) 
 (1716 = 43.7) 
 (1717 = 37.2) 
 (1719 = 66.3) 
 (1721 = 58.2) 
 (1722 = 58.2) 
 (1723 = 59.7) 
 (1724 = 53.8) 
 (1725 = 53.8) 
 (1726 = 51.1) 
 (1727 = 53.3) 
 (1729 = 53.2) 
 (1731 = 80.6) 
 (1732 = 80.6) 
 (1733 = 80.6) 
 (1734 = 80.6) 
 (1735 = 65.8) 
 (1736 = 80.6) 
 (1737 = 80.6) 
 (1739 = 80.6) 
 (1741 = 70.9) 
 (1742 = 70.9) 
 (1743 = 70.9) 
 (1744 = 70.9) 
 (1745 = 65.8) 
 (1746 = 70.9) 
 (1747 = 70.9) 
 (1749 = 70.9) 
 (1751 = 61.1) 
 (1752 = 61.1) 
 (1753 = 61.1) 
 (1754 = 61.1) 
 (1755 = 65.8) 
 (1756 = 61.1) 
 (1757 = 61.1) 
 (1759 = 61.1) 
 (1761 = 65.8) 
 (1762 = 65.8) 
 (1763 = 65.8) 
 (1764 = 65.8) 
 (1765 = 65.8) 
 (1766 = 65.8) 
 (1767 = 65.8) 
 (1769 = 65.8) 
 (1771 = 62.6) 
 (1772 = 62.6) 
 (1773 = 62.6) 
 (1774 = 62.6) 
 (1775 = 65.8) 
 (1776 = 62.6) 
 (1777 = 62.6) 
 (1779 = 62.6) 
 (1781 = 63.9) 
 (1782 = 63.9) 
 (1783 = 63.9) 
 (1784 = 63.9) 
 (1785 = 65.8) 
 (1786 = 63.9) 
 (1787 = 63.9) 
 (1789 = 63.9) 
 (1791 = 66.0) 
 (1792 = 66.0) 
 (1793 = 66.0) 
 (1794 = 66.0) 
 (1795 = 65.8) 
 (1796 = 66.0) 
 (1797 = 66.0) 
 (1799 = 66.0) 
 (1801 = 65.5) 
 (1802 = 65.5) 
 (1803 = 65.5) 
 (1804 = 65.5) 
 (1805 = 65.8) 
 (1806 = 65.5) 
 (1807 = 65.5) 
 (1809 = 65.5) 
 (1811 = 82.0) 
 (1812 = 90.2) 
 (1813 = 78.8) 
 (1814 = 73.9) 
 (1815 = 73.9) 
 (1816 = 65.7) 
 (1817 = 96.4) 
 (1819 = 94.7) 
 (1821 = 82.0) 
 (1822 = 82.0) 
 (1823 = 78.8) 
 (1824 = 73.9) 
 (1825 = 73.9) 
 (1826 = 65.7) 
 (1827 = 69.6) 
 (1829 = 69.8) 
 (1831 = 82.0) 
 (1832 = 82.0) 
 (1833 = 73.6) 
 (1834 = 69.2) 
 (1835 = 73.9) 
 (1836 = 65.7) 
 (1837 = 56.6) 
 (1839 = 57.9) 
 (1841 = 82.0) 
 (1842 = 82.0) 
 (1843 = 78.8) 
 (1844 = 73.9) 
 (1845 = 73.9) 
 (1846 = 65.7) 
 (1847 = 85.6) 
 (1849 = 85.6) 
 (1851 = 82.0) 
 (1852 = 82.0) 
 (1853 = 78.8) 
 (1854 = 73.9) 
 (1855 = 73.9) 
 (1856 = 65.7) 
 (1857 = 80.1) 
 (1859 = 80.1) 
 (1861 = 82.0) 
 (1862 = 82.0) 
 (1863 = 78.8) 
 (1864 = 73.9) 
 (1865 = 73.9) 
 (1866 = 65.7) 
 (1867 = 69.6) 
 (1869 = 69.8) 
 (1871 = 82.0) 
 (1872 = 82.0) 
 (1873 = 83.0) 
 (1874 = 73.9) 
 (1875 = 73.9) 
 (1876 = 65.7) 
 (1877 = 69.6) 
 (1879 = 83.0) 
 (1881 = 82.0) 
 (1882 = 82.0) 
 (1883 = 78.8) 
 (1884 = 73.9) 
 (1885 = 73.9) 
 (1886 = 65.7) 
 (1887 = 85.0) 
 (1889 = 85.0) 
 (1891 = 82.0) 
 (1892 = 82.0) 
 (1893 = 78.8) 
 (1894 = 73.9) 
 (1895 = 73.9) 
 (1896 = 65.7) 
 (1897 = 79.0) 
 (1899 = 79.0) 
 (1901 = 82.0) 
 (1902 = 82.0) 
 (1903 = 78.8) 
 (1904 = 73.9) 
 (1905 = 73.9) 
 (1906 = 65.7) 
 (1907 = 69.6) 
 (1909 = 69.8) 
 (1911 = 82.0) 
 (1912 = 82.0) 
 (1913 = 78.8) 
 (1914 = 73.9) 
 (1915 = 73.9) 
 (1916 = 65.7) 
 (1917 = 72.6) 
 (1919 = 72.6) 
 (1921 = 82.0) 
 (1922 = 82.0) 
 (1923 = 78.8) 
 (1924 = 73.9) 
 (1925 = 73.9) 
 (1926 = 65.7) 
 (1927 = 69.6) 
 (1929 = 69.8) 
 (1931 = 82.0) 
 (1932 = 82.0) 
 (1933 = 78.8) 
 (1934 = 76.0) 
 (1935 = 73.9) 
 (1936 = 65.7) 
 (1937 = 81.0) 
 (1939 = 80.8) 
 (1941 = 82.0) 
 (1942 = 82.0) 
 (1943 = 81.6) 
 (1944 = 73.9) 
 (1945 = 73.9) 
 (1946 = 65.7) 
 (1947 = 77.1) 
 (1949 = 77.1) 
 (1951 = 82.0) 
 (1952 = 82.0) 
 (1953 = 78.8) 
 (1954 = 73.9) 
 (1955 = 73.9) 
 (1956 = 65.7) 
 (1957 = 69.6) 
 (1959 = 69.8) 
 (1961 = 82.0) 
 (1962 = 82.0) 
 (1963 = 78.8) 
 (1964 = 73.9) 
 (1965 = 73.9) 
 (1966 = 65.7) 
 (1967 = 69.6) 
 (1969 = 69.8) 
 (1971 = 82.0) 
 (1972 = 82.0) 
 (1973 = 78.8) 
 (1974 = 73.9) 
 (1975 = 73.9) 
 (1976 = 65.7) 
 (1977 = 69.6) 
 (1979 = 69.8) 
 (1981 = 82.0) 
 (1982 = 82.0) 
 (1983 = 78.8) 
 (1984 = 73.9) 
 (1985 = 73.9) 
 (1986 = 65.7) 
 (1987 = 69.6) 
 (1989 = 69.8) 
 (1991 = 82.0) 
 (1992 = 82.0) 
 (1993 = 78.8) 
 (1994 = 73.9) 
 (1995 = 73.9) 
 (1996 = 65.7) 
 (1997 = 69.6) 
 (1999 = 69.8) 
 (2001 = 82.0) 
 (2002 = 82.0) 
 (2003 = 78.8) 
 (2004 = 73.9) 
 (2005 = 73.9) 
 (2006 = 65.7) 
 (2007 = 69.6) 
 (2009 = 69.8) 
 (2011 = 82.0) 
 (2012 = 82.0) 
 (2013 = 78.8) 
 (2014 = 73.9) 
 (2015 = 73.9) 
 (2016 = 65.7) 
 (2017 = 69.6) 
 (2019 = 69.8) 
 (2021 = 82.0) 
 (2022 = 82.0) 
 (2023 = 78.8) 
 (2024 = 73.9) 
 (2025 = 73.9) 
 (2026 = 65.7) 
 (2027 = 69.6) 
 (2029 = 69.8) 
 (2031 = 82.0) 
 (2032 = 82.0) 
 (2033 = 78.8) 
 (2034 = 73.9) 
 (2035 = 73.9) 
 (2036 = 65.7) 
 (2037 = 69.6) 
 (2039 = 69.8) 
 (2041 = 82.0) 
 (2042 = 82.0) 
 (2043 = 78.8) 
 (2044 = 73.9) 
 (2045 = 73.9) 
 (2046 = 65.7) 
 (2047 = 69.6) 
 (2049 = 69.8) 
 (2051 = 82.0) 
 (2052 = 82.0) 
 (2053 = 78.8) 
 (2054 = 73.9) 
 (2055 = 73.9) 
 (2056 = 65.7) 
 (2057 = 80.2) 
 (2059 = 80.2) 
 (2061 = 82.0) 
 (2062 = 82.0) 
 (2063 = 89.2) 
 (2064 = 73.9) 
 (2065 = 73.9) 
 (2066 = 65.7) 
 (2067 = 87.8) 
 (2069 = 88.3) 
 (2071 = 82.0) 
 (2072 = 82.0) 
 (2073 = 50.8) 
 (2074 = 73.9) 
 (2075 = 73.9) 
 (2076 = 65.7) 
 (2077 = 73.6) 
 (2079 = 68.2) 
 (2081 = 82.0) 
 (2082 = 82.0) 
 (2083 = 84.2) 
 (2084 = 73.9) 
 (2085 = 73.9) 
 (2086 = 65.7) 
 (2087 = 58.6) 
 (2089 = 64.1) 
 (2091 = 82.0) 
 (2092 = 82.0) 
 (2093 = 78.8) 
 (2094 = 73.9) 
 (2095 = 73.9) 
 (2096 = 65.7) 
 (2097 = 69.6) 
 (2099 = 69.8) 
 (2101 = 82.0) 
 (2102 = 82.0) 
 (2103 = 78.8) 
 (2104 = 73.9) 
 (2105 = 73.9) 
 (2106 = 65.7) 
 (2107 = 78.2) 
 (2109 = 78.2) 
 (2111 = 82.0) 
 (2112 = 82.0) 
 (2113 = 78.8) 
 (2114 = 73.9) 
 (2115 = 73.9) 
 (2116 = 65.7) 
 (2117 = 69.6) 
 (2119 = 69.8) 
 (2121 = 82.0) 
 (2122 = 82.0) 
 (2123 = 78.8) 
 (2124 = 73.9) 
 (2125 = 73.9) 
 (2126 = 65.7) 
 (2127 = 69.6) 
 (2129 = 69.8) 
 (2131 = 82.0) 
 (2132 = 82.0) 
 (2133 = 78.8) 
 (2134 = 73.9) 
 (2135 = 73.9) 
 (2136 = 65.7) 
 (2137 = 69.6) 
 (2139 = 69.8) 
 (2141 = 82.0) 
 (2142 = 82.0) 
 (2143 = 78.8) 
 (2144 = 73.9) 
 (2145 = 73.9) 
 (2146 = 65.7) 
 (2147 = 94.1) 
 (2149 = 94.1) 
 (2151 = 82.0) 
 (2152 = 82.0) 
 (2153 = 78.8) 
 (2154 = 73.9) 
 (2155 = 73.9) 
 (2156 = 65.7) 
 (2157 = 71.8) 
 (2159 = 71.8) 
 (2161 = 82.0) 
 (2162 = 82.0) 
 (2163 = 78.8) 
 (2164 = 73.9) 
 (2165 = 73.9) 
 (2166 = 65.7) 
 (2167 = 69.6) 
 (2169 = 69.8) 
 (2171 = 82.0) 
 (2172 = 78.3) 
 (2173 = 87.0) 
 (2174 = 73.9) 
 (2175 = 73.9) 
 (2176 = 65.7) 
 (2177 = 80.9) 
 (2179 = 80.8) 
 (2181 = 82.0) 
 (2182 = 82.0) 
 (2183 = 78.8) 
 (2184 = 73.9) 
 (2185 = 73.9) 
 (2186 = 65.7) 
 (2187 = 71.4) 
 (2189 = 71.4) 
 (2191 = 82.0) 
 (2192 = 82.0) 
 (2193 = 78.8) 
 (2194 = 73.9) 
 (2195 = 73.9) 
 (2196 = 65.7) 
 (2197 = 66.6) 
 (2199 = 66.6) 
 (2201 = 82.0) 
 (2202 = 82.0) 
 (2203 = 78.8) 
 (2204 = 73.9) 
 (2205 = 73.9) 
 (2206 = 65.7) 
 (2207 = 72.3) 
 (2209 = 72.3) 
 (2211 = 58.3) 
 (2212 = 58.3) 
 (2213 = 55.7) 
 (2214 = 53.8) 
 (2215 = 53.8) 
 (2216 = 43.6) 
 (2217 = 36.5) 
 (2219 = 37.3) 
 (2221 = 58.3) 
 (2222 = 58.3) 
 (2223 = 55.7) 
 (2224 = 53.8) 
 (2225 = 53.8) 
 (2226 = 43.6) 
 (2227 = 36.5) 
 (2229 = 37.3) .



* EOF.
*********************************************************.




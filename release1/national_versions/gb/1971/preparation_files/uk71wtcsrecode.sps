*********************************************************.
* CAMSIS UK 1971.
*
* RECODE COMMAND IN SPSS FOR FEMALE TITLE-ONLY SOC SCORES. 
*********************************************************.

*********************************************************.
* This SPSS recode applies to female title only UK SOC units,
* and converts a SOC variable into the 1971 CAMSIS scores.
* It uses the same info as is available from the .sav index 
* files, and the Excel spreadsheets. 
*
* It may be conducted by computing a variable, named
* wtcs, which is equal to UK 1970 SOC units.
* It is then necessary to run the 
* recode below, for instance by running this file as an 'include' 
* file. 
************************************************************.




recode wtcs  
 (1 = 44.8) 
 (2 = 62.2) 
 (3 = 41.7) 
 (4 = 44.8) 
 (5 = 41.7) 
 (6 = 44.8) 
 (7 = 37.2) 
 (8 = 37.2) 
 (9 = 37.2) 
 (10 = 40.0) 
 (11 = 36.4) 
 (12 = 36.4) 
 (13 = 29.4) 
 (14 = 35.0) 
 (15 = 32.2) 
 (16 = 34.6) 
 (17 = 28.5) 
 (18 = 35.7) 
 (19 = 35.7) 
 (20 = 28.8) 
 (21 = 35.7) 
 (22 = 35.7) 
 (23 = 40.0) 
 (24 = 39.2) 
 (25 = 38.6) 
 (26 = 39.2) 
 (27 = 42.2) 
 (28 = 39.5) 
 (29 = 38.6) 
 (30 = 39.2) 
 (31 = 43.8) 
 (32 = 33.5) 
 (33 = 33.5) 
 (34 = 33.5) 
 (35 = 32.1) 
 (36 = 28.2) 
 (37 = 33.5) 
 (38 = 32.4) 
 (39 = 33.1) 
 (40 = 33.5) 
 (41 = 33.5) 
 (42 = 33.5) 
 (43 = 43.6) 
 (44 = 18.6) 
 (45 = 33.5) 
 (46 = 33.5) 
 (47 = 28.6) 
 (48 = 31.4) 
 (49 = 33.5) 
 (50 = 41.5) 
 (51 = 52.5) 
 (52 = 33.5) 
 (53 = 35.4) 
 (54 = 32.6) 
 (55 = 31.2) 
 (56 = 34.4) 
 (57 = 31.2) 
 (58 = 34.4) 
 (59 = 37.8) 
 (60 = 27.2) 
 (61 = 32.4) 
 (62 = 32.0) 
 (63 = 35.1) 
 (64 = 15.3) 
 (65 = 10.1) 
 (66 = 12.2) 
 (67 = 30.8) 
 (68 = 23.7) 
 (69 = 32.4) 
 (70 = 32.1) 
 (71 = 23.7) 
 (72 = 30.6) 
 (73 = 26.2) 
 (74 = 44.9) 
 (75 = 42.7) 
 (76 = 36.2) 
 (77 = 38.8) 
 (78 = 32.2) 
 (79 = 22.6) 
 (80 = 32.1) 
 (81 = 31.8) 
 (82 = 40.1) 
 (83 = 26.9) 
 (84 = 36.4) 
 (85 = 38.3) 
 (86 = 44.4) 
 (87 = 38.2) 
 (88 = 39.8) 
 (89 = 27.3) 
 (90 = 34.4) 
 (91 = 44.7) 
 (92 = 38.2) 
 (93 = 37.2) 
 (94 = 37.2) 
 (95 = 37.2) 
 (96 = 37.2) 
 (97 = 37.2) 
 (98 = 38.2) 
 (99 = 30.0) 
 (100 = 33.8) 
 (101 = 32.1) 
 (102 = 32.4) 
 (103 = 32.4) 
 (104 = 32.4) 
 (105 = 32.4) 
 (106 = 28.8) 
 (107 = 27.6) 
 (108 = 30.3) 
 (109 = 28.8) 
 (110 = 23.8) 
 (111 = 28.8) 
 (112 = 24.6) 
 (113 = 24.6) 
 (114 = 29.3) 
 (115 = 53.1) 
 (116 = 53.1) 
 (117 = 53.1) 
 (118 = 53.1) 
 (119 = 53.1) 
 (120 = 53.1) 
 (121 = 53.3) 
 (122 = 52.8) 
 (123 = 53.1) 
 (124 = 53.1) 
 (125 = 53.1) 
 (126 = 53.1) 
 (127 = 58.2) 
 (128 = 54.6) 
 (129 = 32.4) 
 (130 = 39.2) 
 (131 = 30.6) 
 (132 = 53.1) 
 (133 = 53.1) 
 (134 = 53.1) 
 (135 = 39.2) 
 (136 = 42.5) 
 (137 = 35.0) 
 (138 = 66.5) 
 (139 = 61.2) 
 (140 = 58.2) 
 (141 = 67.2) 
 (142 = 73.2) 
 (143 = 58.2) 
 (144 = 50.0) 
 (145 = 43.2) 
 (146 = 51.2) 
 (147 = 52.0) 
 (148 = 62.3) 
 (149 = 52.0) 
 (150 = 68.2) 
 (151 = 38.3) 
 (152 = 38.3) 
 (153 = 43.6) 
 (154 = 50.2) 
 (155 = 41.5) 
 (156 = 66.0) 
 (157 = 56.8) 
 (158 = 45.1) 
 (159 = 51.9) 
 (160 = 43.1) 
 (161 = 43.1) 
 (162 = 40.2) 
 (163 = 38.7) 
 (164 = 34.6) 
 (165 = 38.3) 
 (166 = 28.7) 
 (167 = 57.9) 
 (168 = 32.5) 
 (169 = 38.3) 
 (170 = 42.8) 
 (171 = 68.1) 
 (172 = 53.5) 
 (173 = 73.1) 
 (174 = 73.1) 
 (175 = 61.4) 
 (176 = 62.6) 
 (177 = 62.6) 
 (178 = 65.8) 
 (179 = 66.3) 
 (180 = 66.1) 
 (181 = 94.4) 
 (182 = 70.1) 
 (183 = 58.4) 
 (184 = 83.0) 
 (185 = 80.2) 
 (186 = 70.1) 
 (187 = 78.3) 
 (188 = 84.2) 
 (189 = 77.0) 
 (190 = 70.1) 
 (191 = 73.5) 
 (192 = 89.0) 
 (193 = 80.9) 
 (194 = 77.6) 
 (195 = 70.1) 
 (196 = 70.1) 
 (197 = 70.1) 
 (198 = 70.1) 
 (199 = 70.1) 
 (200 = 70.1) 
 (201 = 70.1) 
 (202 = 70.1) 
 (203 = 70.1) 
 (204 = 70.1) 
 (205 = 80.8) 
 (206 = 87.4) 
 (207 = 67.8) 
 (208 = 64.8) 
 (209 = 70.1) 
 (210 = 78.1) 
 (211 = 70.1) 
 (212 = 70.1) 
 (213 = 70.1) 
 (214 = 89.0) 
 (215 = 72.4) 
 (216 = 70.1) 
 (217 = 80.6) 
 (218 = 71.5) 
 (219 = 66.8) 
 (220 = 73.8) 
 (221 = 37.2) 
 (222 = 37.2) .




* EOF.
*****************************************************.






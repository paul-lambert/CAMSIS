

* SPSS syntax for obtaining major, submajor and minor groups
* from the 1991 German KdlB occupational title units.


********.
** Recommended usage :.
* include file="KldBunitsubgroupsv1.sps".
*
* kkkkkbgps occ=currentvar 
      majgp=newvar1 submaj=newvar2 minor=newvar3.
********.

define kbgps ( occ=!tokens(1) 
                /majgp=!tokens(1) /submaj=!tokens(1) 
                /minor=!tokens(1) ).

************.

************************************************.

* Major groups :.

compute !majgp=!occ. 
recode !majgp
   (1 thru 69=1) (70 thru 99=2) (100 thru 599=3)
   (600 thru 659=4) (660 thru 969=5) (970 thru 999=6).
add value labels !majgp
   1 "1 Agricultural (farming, forrestry, fishing, gardening)" 
   2 "2 Mining and quarrywork" 
   3 "3 Manufacturing"
   4 "4 Technicians"
   5 "5 Services and Professionals"
   6 "6 Other (misc)".
variable label !majgp "Major group (G 1991 KB occs)".

**********.

*************************************************.

* Sub-major groups. 

compute !submaj=!occ.
recode !submaj 
   (1 thru 69=101) (70 thru 99=201)
   (100 thru 119=301) (120 thru 139=302) (140 thru 159=303)
   (160 thru 179=304) (180 thru 189=305) (190 thru 249=306)
   (250 thru 309=307) (310 thru 319=308) (320 thru 329=309)
   (330 thru 369=310) (370 thru 389=311) (390 thru 439=312)
   (440 thru 479=313) (480 thru 499=314) (500 thru 509=315)
   (510 thru 519=316) (520 thru 529=317) (530 thru 539=318)
   (540 thru 599=319) 
   (600 thru 619=401) (620 thru 659=402)
   (660 thru 689=501) (690 thru 709=502) (710 thru 749=503)
   (750 thru 789=504) (790 thru 819=505) (820 thru 839=506)
   (840 thru 859=507) (860 thru 899=508) (900 thru 969=509)
   (970 thru 999=601).

add value labels !submaj
  101 "101 Farming, forestry, gardening, fishing"
  201 "201 Mining and quarrywork"
  301 "301 Stone, jewelery, brickwork"
  302 "302 Glass and ceramics"
  303 "303 Chemicals, plastics and rubber"
  304 "304 Paper and printing"
  305 "305 Woodwork"
  306 "306 Metalworkers, primary product"
  307 "307 Skilled metal work and related"
  308 "308 Electrical"
  309 "309 Metal and assembly / installation"
  310 "310 Textiles"
  311 "311 Leather goods"
  312 "312 Food, drink and tobacco"
  313 "313 Construction"
  314 "314 Building (insulators, installers, glaziers)"
  315 "315 Carpenters"
  316 "316 Painters"
  317 "317 Goods sorters, packagers"
  318 "318 Assistants (nec)"
  319 "319 Machine operators"
  401 "401 Technicians - engineers and related"
  402 "402 Technicians - manufacturing and science"
  501 "501 Buying and selling"
  502 "502 Banking, insurance, agents"
  503 "503 Travel and transport"
  504 "504 Administration and bureaucracy"
  505 "505 Public order, safety and security"
  506 "506 Arts, creative and recreational"
  507 "507 Health services"
  508 "508 Teaching and social employment"
  509 "509 Other services, personal and leisure services"
  601 "601 Other occupations" .
variable label !submaj "Sub-Major group (G 1991 KB occs)".

************.

***************************************************.

* Minor groups. 

compute !minor=trunc(!occ/10).
add value labels !minor 99 "Other nec".
variable label !minor "Minor group (G 1991 KB occs)".

************.

!enddefine.

*************************************************.

* EOF.

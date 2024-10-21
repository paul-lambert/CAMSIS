


**************************************************************
**************************************************************


** Defines Stata label items for UK SOC90 unit groups, major groups, sub-major groups and minor groups
** Defines Stata macro that can calculate derived versions of major, sub-major, minor groups and skill levels based on soc90 unit group codes


** Illustrative usage (existing variable with soc90 codes on it: 'qmrjsoc': 

/* 
do soc90_labels_and_codes.do /* run the file to define the labels and macro */

label values qmrjsoc soc90l    /* attach value labels to the original variable for soc90 unit groups */

mksocgps   qmrjsoc   qsoc /* invoke the macro to generate new variables - input variable is unit group soc90 variable called 'qmrjsoc', new variables will be generated called 'qsocmaj', 'qsocskl', 'qsocsmj' and 'qsocmin'  */

label values qsocmaj soc90majl /* attach value labels to the new variable for major groups */
label values qsocsmj soc90smjl /* attach value labels to the new variable for sub-major groups */
label values qsocskl soc90skll /* attach value labels to the new variable for skill levels */ 
label values qsocmin soc90minl /* attach value labels to the new variable for minor groups */
*/




* [Original version prepared by Paul Lambert, Univ. Stirling, 2009, for the DAMES project, www.dames.org.uk] 
* [Updates by Paul Lambert, Univ. Stirling, 16 August 2013] 

**************************************************************
**************************************************************




**************************************************************
**************************************************************
*** VALUE LABEL DEFINITIONS 

#delimit; 

capture label drop soc90l;
 
label define soc90l  
 100 "General administrators; national government (Assistant Secretary/Grade 5 and above)"
 101 "General Managers; large companies and organisations"
 102 "Local government officers (administrative and executive functions)"
 103 "General administrators; national government (HEO to Senior Principal/Grade 6)"
 110 "Production, works and maintenance managers"
 111 "Managers in building and contracting"
 112 "Clerks of works"
 113 "Managers in mining and energy industries"
 120 "Treasurers and company financial managers"
 121 "Marketing and sales managers"
 122 "Purchasing managers"
 123 "Advertising and public relations managers"
 124 "Personnel, training and industrial relations managers"
 125 "Organisation and methods and work study managers"
 126 "Computer systems and data processing managers"
 127 "Company secretaries"
 130 "Credit controllers"
 131 "Bank, Building Society and Post Office managers (except self-employed)"
 132 "Civil service executive officers"
 139 "Other financial institutions and office managers n.e.c."
 140 "Transport managers n.e.c."
 141 "Stores controllers"
 142 "Managers in warehousing and other materials handling"
 150 "Officers in UK armed forces"
 151 "Officers in foreign and Commonwealth armed forces"
 152 "Police officer (inspector and above)"
 153 "Fire service officers (station officer and above)"
 154 "Prison officers (principal officer and above)"
 155 "Customs and excise, immigration service officers (customs: chief preventive officer and above; exise: surveyor and above)"
 160 "Farm owners and managers, horticulturists"
 169 "Other managers in farming, forestry and fishing n.e.c."
 170 "Property and estate managers"
 171 "Garage managers and proprietors"
 172 "Hairdressers' and barbers' managers and proprietors"
 173 "Hotel and accommodation managers"
 174 "Restaurant and catering managers"
 175 "Publicans, innkeepers and club stewards"
 176 "Entertainment and sports managers"
 177 "Travel agency managers"
 178 "Managers and proprietors of butchers and fishmongers"
 179 "Managers and proprietors in service industries n.e.c."
 190 "Officials of trade associations, trade unions, professional bodies and charities"
 191 "Registrars and administrators of educational establishments"
 199 "Other managers and administrators n.e.c."
 200 "Chemists"
 201 "Biological scientists and biochemists"
 202 "Physicists, geologists and meteorologists"
 209 "Other natural scientists n.e.c."
 210 "Civil, structural, municipal, mining and quarrying engineers"
 211 "Mechanical engineers"
 212 "Electrical engineers"
 213 "Electronic engineers"
 214 "Software engineers"
 215 "Chemical engineers"
 216 "Design and development engineers"
 217 "Process and production engineers"
 218 "Planning and quality control engineers"
 219 "Other engineers and technologists n.e.c."
 220 "Medical practitioners"
 221 "Pharmacists/pharmacologists"
 222 "Ophthalmic opticians"
 223 "Dental practitioners"
 224 "Veterinarians"
 230 "University and polytechnic teaching professionals"
 231 "Higher and Further education teaching professionals"
 232 "Education officer, school inspectors"
 233 "Secondary (and middle school deemed secondary) education teaching professionals"
 234 "Primary (and middle school deemed primary) and nursery education teaching professionals"
 235 "Special education teaching professionals"
 239 "Other teaching professionals n.e.c."
 240 "Judges and officers of the court"
 241 "Barristers and advocates"
 242 "Solicitors"
 250 "Chartered and certified accountants"
 251 "Management accountants"
 252 "Actuaries, economists and statisticians"
 253 "Management consultants, business analysts"
 260 "Architects"
 261 "Town planners"
 262 "Building, land, mining and 'general practice' surveyors"
 270 "Librarians"
 271 "Archivists and curators"
 290 "Psychologists"
 291 "Other social and behavioural scientists"
 292 "Clergy"
 293 "Social workers, probation officers"
 300 "Laboratory technicians"
 301 "Engineering technicians"
 302 "Electrical/electronic technicians"
 303 "Architectural and town planning technicians"
 304 "Building and civil engineering technicians"
 309 "Other scientific technicians n.e.c."
 310 "Draughtspersons"
 311 "Building inspectors"
 312 "Quantity surveyors"
 313 "Marine, insurance and other surveyors"
 320 "Computer analyst/programmers"
 330 "Air traffic planners and controllers"
 331 "Aircraft flight deck officers"
 332 "Ship and hovercraft officers"
 340 "Nurses"
 341 "Midwives"
 342 "Medical radiographers"
 343 "Physiotherapists"
 344 "Chiropodists"
 345 "Dispensing opticians"
 346 "Medical technicians, dental auxiliaries"
 347 "Occupational and speech therapists, psychotherapists, therapists n.e.c."
 348 "Environmental health officers"
 349 "Other health associate professionals n.e.c."
 350 "Legal service and related occupations"
 360 "Estimators, valuers"
 361 "Underwriters, claims assessors, brokers, investment analysts"
 362 "Taxation experts"
 363 "Personnel and industrial relations officers"
 364 "Organisation and methods and work study officers"
 370 "Matrons, houseparents"
 371 "Welfare, community and youth workers"
 380 "Authors, writers, journalists"
 381 "Artists, commercial artists, graphic designers"
 382 "Industrial designers"
 383 "Clothing designers"
 384 "Actors, entertainers, stage managers, producers and directors"
 385 "Musicians"
 386 "Photographers, camera, sound and video equipment operators"
 387 "Professional athletes, sports officials"
 390 "Information officers"
 391 "Vocational and industrial trainers"
 392 "Careers advisers and vocational guidance specialists"
 393 "Driving instructors (excluding HGV)"
 394 "Inspectors of factories, utilities and trading standards"
 395 "Other statutory similar inspectors n.e.c."
 396 "Occupational hygienists and safety officers (health and safety)"
 399 "Other associate professional and technical occupations n.e.c."
 400 "Civil Service administrative officers and assistants"
 401 "Local government clerical officers and assistants"
 410 "Accounts and wages clerks, book-keepers, other financial clerks"
 411 "Counter clerks and cashiers"
 412 "Debt, rent and other cash collectors"
 420 "Filing, computer and other records clerks (inc. legal conveyancing)"
 421 "Library assistants/clerks"
 430 "Clerks (n.o.s.)"
 440 "Stores, despatch and production control clerks"
 441 "Storekeepers, warehousemen/women"
 450 "Medical secretaries"
 451 "Legal secretaries"
 452 "Typists and word processor operators"
 459 "Other secretaries, personal assistants, typists, word processor operators n.e.c."
 460 "Receptionists"
 461 "Receptionists/telephonists"
 462 "Telephone operators exchange"
 463 "Radio and telegraph operators, other office communication system operators"
 490 "Computer operators, data processing operators, other office machine operators"
 491 "Tracers, drawing officer assistants"
 500 "Bricklayers, masons"
 501 "Roofers, slaters, tilers, sheeters, cladders"
 502 "Plasterers"
 503 "Glaziers"
 504 "Builders, building contractors"
 505 "Scaffolders, stagers, steeplejacks, riggers"
 506 "Floorers, floor coverers, carpet fitters and planners, floor and wall tilers"
 507 "Painters and decorators"
 509 "Other construction trades n.e.c."
 510 "Centre, capstan, turret and other lathe setters and setter-operators"
 511 "Boring and drilling machine setters and setter-operators"
 512 "Grinding machine setters and setter-operators"
 513 "Milling machine setters and setter-operators"
 514 "Press setters and setter-operators"
 515 "Tool makers, tool fitters and markers out"
 516 "Metal working production and maintenance fitters"
 517 "Precision instrument makers and repairers"
 518 "Goldsmiths, silversmiths, precious stone workers"
 519 "Other machine tool setters and setter operators n.e.c. (incl. CNC setter-operators)"
 520 "Production fitters (electrical/electronic)"
 521 "Electricians, electrical maintenance fitters"
 522 "Electrical engineers (not professional)"
 523 "Telephone fitters"
 524 "Cable jointers, lines repairers"
 525 "Radio, TV and video engineers"
 526 "Computer engineers, installation and maintenance"
 529 "Other electrical/electronic trades n.e.c."
 530 "Smiths and forge workers"
 531 "Moulders, core makers, die casters"
 532 "Plumbers, heating and ventilating engineers and related trades"
 533 "Sheet metal workers"
 534 "Metal plate workers, shipwrights, riveters"
 535 "Steel erectors"
 536 "Barbenders, steel fixers"
 537 "Welding trades"
 540 "Motor mechanics, auto engineers (inc. road patrol engineers)"
 541 "Coach and vehicle body builders"
 542 "Vehicle body repairers, panel beaters"
 543 "Auto electricians"
 544 "Tyre and exhaust fitters"
 550 "Weavers"
 551 "Knitters"
 552 "Warp preparers, bleachers, dyers and finishers"
 553 "Sewing machinists, menders, darners and embroiderers"
 554 "Coach trimmers, upholsterers and mattress makers"
 555 "Shoe repairers, leather cutters and sewers, footwear lasters, makers and finishers, other leath making and repairing"
 556 "Tailors and dressmakers"
 557 "Clothing cutters, milliners, furriers"
 559 "Other textiles, garments and related trades n.e.c."
 560 "Originators, compositors and print preparers"
 561 "Printers"
 562 "Book binders and print finishers"
 563 "Screen printers"
 569 "Other printing and related trades n.e.c."
 570 "Carpenters and joiners"
 571 "Cabinet makers"
 572 "Case and box makers"
 573 "Pattern makers (moulds)"
 579 "Other woodworking trades n.e.c."
 580 "Bakers, flour confectioners"
 581 "Butchers, meat cutters"
 582 "Fishmongers, poultry dressers"
 590 "Glass product and ceramics makers"
 591 "Glass product and ceramics finishers and decorators"
 592 "Dental technicians"
 593 "Musical instrument makers, piano tuners"
 594 "Gardeners, groundsmen/women"
 595 "Horticultural trades"
 596 "Coach painters, other spray painters"
 597 "Face trained coalmining workers, shotfirers and deputies"
 598 "Office machinery mechanics"
 599 "Other craft and related occupations n.e.c."
 600 "NCOs and other ranks, UK armed forces"
 601 "NCOs and other ranks, foreign and commonwealth armed forces"
 610 "Police officers (sergeant and below)"
 611 "Fire service officers (leading fire officer and below)"
 612 "Prison service officers (below principal officer)"
 613 "Customs and excise officers, immigration officers (customs: below chief preventive officer; excise: below surveyor)"
 614 "Traffic wardens"
 615 "Security guards and related occupations"
 619 "Other security protective service occupations n.e.c."
 620 "Chefs, cooks"
 621 "Waiters, waitresses"
 622 "Bar staff"
 630 "Travel and flight attendants"
 631 "Railway station staff"
 640 "Assistant nurses, nursing auxiliaries"
 641 "Hospital ward assistants"
 642 "Ambulance staff"
 643 "Dental nurses"
 644 "Care assistants and attendants"
 650 "Nursery nurses"
 651 "Playgroup leaders"
 652 "Educational assistants"
 659 "Other childcare and related occupations n.e.c."
 660 "Hairdressers, barbers"
 661 "Beauticians and related occupations"
 670 "Domestic housekeepers and related occupations"
 671 "Housekeepers (non-domestic)"
 672 "Caretakers"
 673 "Launderers, dry cleaners, pressers"
 690 "Undertakers"
 691 "Bookmakers"
 699 "Other personal and protective service occupations n.e.c."
 700 "Buyers (retail trade)"
 701 "Buyers and purchasing officers (not retail)"
 702 "Importers and exporters"
 703 "Air, commodity and ship brokers"
 710 "Technical and wholesale sales representatives"
 719 "Other sales representatives n.e.c."
 720 "Sales assistants"
 721 "Retail cash desk and check-out operators"
 722 "Petrol pump forecourt attendants"
 730 "Collector salespersons and credit agents"
 731 "Roundsmen/women and van salespersons"
 732 "Market and street traders and assistants"
 733 "Scrap dealers, scrap metal merchants"
 790 "Merchandisers"
 791 "Window dressers, floral arrangers"
 792 "Telephone salespersons"
 800 "Bakery and confectionery process operatives"
 801 "Brewery and vinery process operatives"
 802 "Tobacco process operatives"
 809 "Other food, drink and tobacco process operatives n.e.c."
 810 "Tannery production operatives"
 811 "Preparatory fibre processors"
 812 "Spinners, doublers, twisters"
 813 "Winders, reelers"
 814 "Other textiles processing operatives"
 820 "Chemical, gas and petroleum process plant operatives"
 821 "Paper, wood and related process plant operatives"
 822 "Cutting and slitting machine operatives (paper products etc)"
 823 "Glass and ceramics furnace operatives, kilnsetters"
 824 "Rubber process operatives, moulding machine operatives, tyre builders"
 825 "Plastic process operatives, moulders and extruders"
 826 "Synthetic fibre makers"
 829 "Other chemicals, paper, plastics and related operatives n.e.c."
 830 "Furnace operatives (metal)"
 831 "Metal drawers"
 832 "Rollers"
 833 "Annealers, hardeners, temperers (metal)"
 834 "Electroplaters, galvanisers, colour coaters"
 839 "Other metal making and treating process operatives n.e.c."
 840 "Machine tool operatives (inc. CNC machine tool operatives)"
 841 "Press stamping and automatic machine operatives"
 842 "Metal polishers"
 843 "Metal dressing operatives"
 844 "Shot blasters"
 850 "Assemblers/lineworkers (electrical/electronic goods)"
 851 "Assemblers/lineworkers (vehicles and other metal goods)"
 859 "Other assemblers/lineworkers n.e.c."
 860 "Inspectors, viewers and testers (metal and electrical goods)"
 861 "Inspectors, viewers, testers and examiners (other manufactured goods)"
 862 "Packers, bottlers, canners, fillers"
 863 "Weighers, graders, sorters"
 864 "Routine laboratory testers"
 869 "Other routine process operatives n.e.c."
 870 "Bus inspectors"
 871 "Road transport depot inspectors and related occupations"
 872 "Drivers of road goods vehicles"
 873 "Bus and coach drivers"
 874 "Taxi, cab drivers and chauffeurs"
 875 "Bus conductors"
 880 "Seafarers (merchant navy); barge, lighter and boat operatives"
 881 "Rail transport inspectors, supervisors and guards"
 882 "Rail engine drivers and assistants"
 883 "Rail signal operatives and crossing keepers"
 884 "Shunters and point operatives"
 885 "Mechanical plant drivers and operatives (earth moving and civil engineering)"
 886 "Crane drivers"
 887 "Fork lift and mechanical truck drivers"
 889 "Other transport machinery operatives n.e.c."
 890 "Washers, screeners and crushers in mines and quarries"
 891 "Printing machine minders and assistants"
 892 "Water and sewerage plant attendants"
 893 "Electrical energy, boiler and related plant operatives and attendants"
 894 "Oilers, greasers, lubricators"
 895 "Mains and service pipe layers, pipe joiners"
 896 "Construction and related operatives"
 897 "Woodworking machine operatives"
 898 "Mine (excluding coal) and quarry workers"
 899 "Other plant and machine operatives n.e.c."
 900 "Farm workers"
 901 "Agricultural machinery drivers and operatives"
 902 "All other occupations in farming and related"
 903 "Fishing and related workers"
 904 "Forestry workers"
 910 "Coal mine labourers"
 911 "Labourers in foundries"
 912 "Labourers in engineering and allied trades"
 913 "Mates to metal/electrical and related fitters"
 919 "Other labourers in making and processing industries n.e.c."
 920 "Mates to woodworking trades workers"
 921 "Mates to building trades workers"
 922 "Rail construction and maintenance workers"
 923 "Road construction and maintenance workers"
 924 "Paviors, kerb layers"
 929 "Other building and civil engineering labourers n.e.c."
 930 "Stevedores, dockers"
 931 "Goods porters"
 932 "Slingers"
 933 "Refuse and salvage collectors"
 934 "Driver's mates"
 940 "Postal workers, mail sorters"
 941 "Messengers, couriers"
 950 "Hospital porters"
 951 "Hotel porters"
 952 "Kitchen porters, hands"
 953 "Counterhands, catering assistants"
 954 "Shelf fillers"
 955 "Lift and car park attendants"
 956 "Window cleaners"
 957 "Road sweepers"
 958 "Cleaners, domestics"
 959 "Other occupations in sales and services n.e.c."
 990 "All other labourers and related workers"
 999 "All others in miscellaneous occupations n.e.c.";




*****************;

* Major group labels; 

capture label drop soc90majl;
 
label define soc90majl  
  1 "Managers and Administrators"
  2 "Professional"
  3 "Associate professional and technical"
  4 "Clerical and secretarial"
  5 "Craft and related" 
  6 "Personal and protective services"
  7 "Sales"
  8 "Plant and machine operatives"
  9 "Other occupations"; 





*****************;

* Skill group labels; 


capture label drop soc90skll;
 
label define soc90skll  
 1 "Level 1: Elementary" 
 2 "Level 2: Working" 
 3 "Level 3: Middle" 
 4 "Level 4: Professional/managerial" ; 





*****************;

* Sub-major group labels; 


capture label drop soc90smjl;
 
label define soc90smjl  
 1 "1a Corporate managers and administrators" 
 2 "1b Managers/proprietors in agriculture and services" 
 3 "2a Science and engineering professionals" 
 4 "2b Health professionals" 
 5 "2c Teaching professionals" 
 6 "2d Other professional occupations" 
 7 "3a Science and engineering associate professionals" 
 8 "3b Health associate professionals" 
 9 "3c Other associate professional occupations" 
 10 "4a Clerical occupations" 
 11 "4b Secretarial occupations" 
 12 "5a Skilled construction trades" 
 13 "5b Skilled engineering trades" 
 14 "5c Other skilled trades" 
 15 "6a Protective services occupations" 
 16 "6b Personal service occupations" 
 17 "7a Buyers, brokers and sales representatives" 
 18 "7b Other sales occupations" 
 19 "8a Industrial plant and machine operators, assemblers" 
 20 "8b Drivers and mobile machine operators" 
 21 "9a Other occupations in agriculture, forestry and fishing " 
 22 "9b Other occupations" ; 

*****************;


* Minor group labels; 

capture label drop soc90minl;
 
label define soc90minl  
 10 "General managers and administrators in national and local government, large companies and organisations"
 11 "Production managers in manufacturing, construciton, mining and energy industries"
 12 "Specialist managers"
 13 "Financial institution and office managers, civil service executive officers"
 14 "Managers in transport and storing"
 15 "Protective service officers"
 16 "Managers in farming, horticulture, forestry and fishing"
 17 "Manager and proprietors in service industries"
 19 "Managers and administrators nec"
 20 "Natural scientists"
 21 "Engineers and technologists"
 22 "Health professional"
 23 "Teaching professionals"
 24 "Legal professionals"
 25 "Business and financial professionals"
 26 "Architects and surveyors"
 27 "Librarians and related professionals"
 29 "Professional occupations nec"
 30 "Scientific technicians"
 31 "Draughtspersons, quantity surveyors and other surveyors"
 32 "Computer analysts /programmers"
 33 "Ship and aircraft officers, air traffic planners and controllers"
 34 "Health associate professionals"
 35 "Legal associate professionals"
 36 "Business and financial associate professionals"
 37 "Social welfare associate professionals"
 38 "Literary, artistic and sports professionals"
 39 "Associate professional occupations nec"
 40 "Administrative /clerical officers and assistants in civil service and local government"
 41 "Numerical clerks and cashiers"
 42 "Filing and record clerks"
 43 "Clerks (not otherwise specified)"
 44 "Stores and despatch clerks, storekeepers"
 45 "Secretaries, personal assistants, typists, word processor operators"
 46 "Receptionists, telephonists and related occupations"
 49 "Clerical and secretarial occupations nec"
 50 "Construction trades"
 51 "Metal machining, fitting and instrument making trades"
 52 "Electrical/electronic trades"
 53 "Metal forming, welding and related trades"
 54 "Vehicle trades"
 55 "Textiles, garments and related trades"
 56 "Printing and related trades"
 57 "Woodworking trades"
 58 "Food preparation trades"
 59 "Other craft and related occupations nec"
 60 "NCOs and other ranks, armed forces"
 61 "Security and protective service occupations"
 62 "Catering occupations"
 63 "Travel attendants and related occupations"
 64 "Health and related occupations"
 65 "Childcare and related occupations"
 66 "Hairdressers, beauticians and related occupations"
 67 "Domestic staff and related occupations"
 69 "Personal and protective service occupations nec"
 70 "Buyers brokers and related agents"
 71 "Sales representatives"
 72 "Sales assistants and check-our operators"
 73 "Mobile, market and door-to-door salespersons and agents"
 79 "Sales occupations nec"
 80 "Food, drink and tobacco process operatives"
 81 "Textiles and tannery process operatives"
 82 "Chemicals, paper, plastics and related process operatives"
 83 "Metal making and treating process opeeratives"
 84 "Metal working process operatives"
 85 "Assemblers/lineworkers"
 86 "Other routine process operatives"
 87 "Road transport operatives"
 88 "Other transport and machinery operatives"
 89 "Plant and machine operatives nec"
 90 "Other occupations in agriculture, forestry and fishing"
 91 "Other occupations in mining and manufacturing"
 92 "Other occupations in construction"
 93 "Other occupations in transport"
 94 "Other occpations in communication"
 95 "Other occupations in sales and service"
 99 "Other occupations nec"  ;

* Online source of codes: https://www.iser.essex.ac.uk/bhps/documentation/pdf_versions/volumes/bhpsvola.pdf (Appendix C) ; 

*****************;


#delimit cr







**************************************************************
**************************************************************
*** MACRO FOR CALCULATING SUB-GROUPS  


capture program drop mksocgps
program define mksocgps
 version 10
 args soc90 stub

 capture drop `stub'maj
 gen `stub'maj=floor(`soc90'/100) if `soc90' >= 100 & `soc90' <= 999 
 
 capture drop `stub'min
 gen `stub'min=floor(`soc90'/10) if `soc90' >= 100 & `soc90' <= 999
 
 capture drop `stub'smj 
 gen `stub'smj=`soc90'  if `soc90' >= 100 & `soc90' <= 999 
 recode `stub'smj  100/155  190/199 = 1  160/179 = 2  200/219 = 3  220/224 = 4  230/239 = 5  240/293 = 6 ///
     300/320 = 7  340/349 = 8  330/332 350/399 = 9  400/441 490/491 = 10  450/463 = 11  500/509 = 12  510/529 = 13 ///
     530/599 = 14  600/619 = 15  620/699 = 16  700/719 = 17  720/792 = 18  800/869 890/899 = 19  870/889 = 20  ///
        900/909 = 21 910/999 = 22  *=.m 
 
 capture drop `stub'skl 
 gen `stub'skl=`soc90' if `soc90' >= 100 & `soc90' <= 999 
 recode `stub'skl  100/159 190/293=4 160/179 300/399 500/599 700/719=3 400/491 600/699 720/909=2 910/999=1 *=.m 

 sum `soc90' `stub'*

end 


** Notes: 
**  'Skill level' measure use Elias 1995 recommendations (not identical to Elias and McKnight 2001, in which minor group 90 is place in skill level 3 rather than skill level 2 as above)  
**  'Sub-major groups' are based upon a table published by Stansfeld et al 2003, and checked with  
**   evaluation of titles for groups and skill codes as reported in Elias and McKnight 2001 and Elias 1995; 

/* References: 

Elias, P. (1995). Social Class and the Standard Occupational Classification. In D. Rose (Ed.), ESRC Review of OPCS Social Classifications : A report on phase 1 to the Office for Population Censuses and Surveys (pp. 40-64). Swindon: ESRC.

Elias, P., & McKnight, A. (2001). Skill measurement in official statistics: recent developments in the UK and the rest of Europe. Oxford Economic Papers, New Series, 53(3), 508-540.

Stansfeld, S. A., Head, J., Rasul, F., Singleton, N., & Lee, A. (2003). Occupation and Mental Health: Secondary Analysis of the ONS Psychiatric Morbidity Survey of Great Britain. London: Queen Mary School of Medicine and Dentistry and Office for National Statistics, Health and Safety Executive. (http://www.hse.gov.uk/research/rrpdf/rr168.pdf)

*/ 
 


**************************************************************
**************************************************************

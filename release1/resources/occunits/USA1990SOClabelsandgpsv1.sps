

** SPSS code for deriving USA SOC 1990 subgroup variables, and 
** adding text value labels to the base units and the subgroup units. 


***********.
** Recommended usage :.
*include file="USA1990SOClabelsandgpsv1.sps".
*oooocclab occ={occ unit vars}.
*compute newvars1=occunit./*repeat to multiple vars.
*compute newvars2=occunit./*repeat to multiple vars.
*compute newvars3=occunit. /*repeat to multiple vars.
*ssssubgps maj={newvars1} smj={newvars2} min={newvars3}.
**************.


*.

*******************************************.

* Macro 1 : adds text value units to a base title unit. 


define occlab (occ=!enclose('{','}') ).

add value labels !occ
 3 "3 Legislators"
 4 "4 Chief executives and general administrators, public administration"
 5 "5 Administrators and officials, public administration"
 6 "6 Administrators, protective services"
 7 "7 Financial managers"
 8 "8 Personnel and labor relations managers"
 9 "9 Purchasing managers"
 13 "13 Managers, marketing, advertising, and public relations"
 14 "14 Administrators, education and related fields"
 15 "15 Managers, medicine and health"
 16 "16 Postmasters and mail superintendents"
 17 "17 Managers, food serving and lodging establishments"
 18 "18 Managers, properties and real estate"
 19 "19 Funeral directors"
 21 "21 Managers, service organizations, n.e.c."
 22 "22 Managers and administrators, n.e.c."
 23 "23 Accountants and auditors"
 24 "24 Underwriters"
 25 "25 Other financial officers"
 26 "26 Management analysts"
 27 "27 Personnel, training, and labor relations specialists"
 28 "28 Purchasing agents and buyers, farm products"
 29 "29 Buyers, wholesale and retail trade, except farm products"
 33 "33 Purchasing agents and buyers, n.e.c."
 34 "34 Business and promotion agents"
 35 "35 Construction inspectors"
 36 "36 Inspectors and compliance officers, except construction"
 37 "37 Management related occupations, n.e.c."
 43 "43 Architects"
 44 "44 Aerospace"
 45 "45 Metallurgical and materials"
 46 "46 Mining"
 47 "47 Petroleum"
 48 "48 Chemical"
 49 "49 Nuclear"
 53 "53 Civil"
 54 "54 Agricultural"
 55 "55 Electrical and electronic"
 56 "56 Industrial"
 57 "57 Mechanical"
 58 "58 Marine and naval architects"
 59 "59 Engineers, n.e.c."
 63 "63 Surveyors and mapping scientists"
 64 "64 Computer systems analysts and scientists"
 65 "65 Operations and systems researchers and analysts"
 66 "66 Actuaries"
 67 "67 Statisticians"
 68 "68 Mathematical scientists, n.e.c."
 69 "69 Physicists and astronomers"
 73 "73 Chemists, except biochemists"
 74 "74 Atmospheric and space scientists"
 75 "75 Geologists and geodesists"
 76 "76 Physical scientists, n.e.c."
 77 "77 Agricultural and food scientists"
 78 "78 Biological and life scientists"
 79 "79 Forestry and conservation scientists"
 83 "83 Medical scientists"
 84 "84 Physicians"
 85 "85 Dentists"
 86 "86 Veterinarians"
 87 "87 Optometrists"
 88 "88 Podiatrists"
 89 "89 Health diagnosing practitioners, n.e.c."
 95 "95 Registered nurses"
 96 "96 Pharmacists"
 97 "97 Dietitians"
 98 "98 Respiratory therapists"
 99 "99 Occupational therapists"
 103 "103 Physical therapists"
 104 "104 Speech therapists"
 105 "105 Therapists, n.e.c."
 106 "106 Physicians' assistants"
 113 "113 Earth, environmental, and marine science teachers"
 114 "114 Biological science teachers"
 115 "115 Chemistry teachers"
 116 "116 Physics teachers"
 117 "117 Natural science teachers, n.e.c."
 118 "118 Psychology teachers"
 119 "119 Economics teachers"
 123 "123 History teachers"
 124 "124 Political science teachers"
 125 "125 Sociology teachers"
 126 "126 Social science teachers, n.e.c."
 127 "127 Engineering teachers"
 128 "128 Mathematical science teachers"
 129 "129 Computer science teachers"
 133 "133 Medical science teachers"
 134 "134 Health specialties teachers"
 135 "135 Business, commerce, and marketing teachers"
 136 "136 Agriculture and forestry teachers"
 137 "137 Art, drama, and music teachers"
 138 "138 Physical education teachers"
 139 "139 Education teachers"
 143 "143 English teachers"
 144 "144 Foreign language teachers"
 145 "145 Law teachers"
 146 "146 Social work teachers"
 147 "147 Theology teachers"
 148 "148 Trade and industrial teachers"
 149 "149 Home economics teachers"
 153 "153 Teachers, postsecondary, n.e.c."
 154 "154 Postsecondary teachers, subject n.s."
 155 "155 Teachers, prekindergarten and kindergarten"
 156 "156 Teachers, elementary school"
 157 "157 Teachers, secondary school"
 158 "158 Teachers, special education"
 159 "159 Teachers, n.e.c."
 163 "163 Counselors, educational and vocational"
 164 "164 Librarians"
 165 "165 Archivists and curators"
 166 "166 Economists"
 167 "167 Psychologists"
 168 "168 Sociologists"
 169 "169 Social scientists, n.e.c."
 173 "173 Urban planners"
 174 "174 Social workers"
 175 "175 Recreation workers"
 176 "176 Clergy"
 177 "177 Religious workers, n.e.c."
 178 "178 Lawyers"
 179 "179 Judges"
 183 "183 Authors"
 184 "184 Technical writers"
 185 "185 Designers"
 186 "186 Musicians and composers"
 187 "187 Actors and directors"
 188 "188 Painters, sculptors, craft-artists, and artist printmakers"
 189 "189 Photographers"
 193 "193 Dancers"
 194 "194 Artists, performers, and related workers, n.e.c."
 195 "195 Editors and reporters"
 197 "197 Public relations specialists"
 198 "198 Announcers"
 199 "199 Athletes"
 203 "203 Clinical laboratory technologists and technicians"
 204 "204 Dental hygienists"
 205 "205 Health record technologists and technicians"
 206 "206 Radiologic technicians"
 207 "207 Licensed practical nurses"
 208 "208 Health technologists and technicians, n.e.c."
 213 "213 Electrical and electronic technicians"
 214 "214 Industrial engineering technicians"
 215 "215 Mechanical engineering technicians"
 216 "216 Engineering technicians, n.e.c."
 217 "217 Drafting occupations"
 218 "218 Surveying and mapping technicians"
 223 "223 Biological technicians"
 224 "224 Chemical technicians"
 225 "225 Science technicians n.e.c."
 226 "226 Airplane pilots and navigators"
 227 "227 Air traffic controllers"
 228 "228 Broadcast equipment operators"
 229 "229 Computer programmers"
 233 "233 Tool programmers, numerical control"
 234 "234 Legal assistants"
 235 "235 Technician, n.e.c."
 243 "243 Supervisors and proprietors, sales occupations"
 253 "253 Insurance sales occupations"
 254 "254 Real estate sales occupations"
 255 "255 Securities and financial services sales occupations"
 256 "256 Advertising and related sales occupations"
 257 "257 Sales occupations, other business services"
 258 "258 Sales engineers"
 259 "259 Sales representatives, mining, manufacturing, and wholesale"
 263 "263 Sales workers, motor vehicles and boats"
 264 "264 Sales workers, apparel"
 265 "265 Sales workers, shoes"
 266 "266 Sales workers, furniture and home furnishings"
 267 "267 Sales workers, radio, TV, hi-fi, and appliances"
 268 "268 Sales workers, hardware and building supplies"
 269 "269 Sales workers, parts"
 274 "274 Sales workers, other commodities"
 275 "275 Sales counter clerks"
 276 "276 Cashiers"
 277 "277 Street and door-to-door sales workers"
 278 "278 News vendors"
 283 "283 Demonstrators, promoters and models, sales"
 284 "284 Auctioneers"
 285 "285 Sales support occupations, n.e.c."
 303 "303 Supervisors, general office"
 304 "304 Supervisors, computer equipment operators"
 305 "305 Supervisors, financial records processing"
 306 "306 Chief communications operators"
 307 "307 Supervisors; distribution, scheduling, and adjusting clerks"
 308 "308 Computer operators"
 309 "309 Peripheral equipment operators"
 313 "313 Secretaries"
 314 "314 Stenographers"
 315 "315 Typists"
 316 "316 Interviewers"
 317 "317 Hotel clerks"
 318 "318 Transportation ticket and reservation agents"
 319 "319 Receptionists"
 323 "323 Information clerks, n.e.c."
 325 "325 Classified-ad clerks"
 326 "326 Correspondence clerks"
 327 "327 Order clerks"
 328 "328 Personnel clerks, except payroll and timekeeping"
 329 "329 Library clerks"
 335 "335 File clerks"
 336 "336 Records clerks"
 337 "337 Bookkeepers, accounting, and auditing clerks"
 338 "338 Payroll and timekeeping clerks"
 339 "339 Billing clerks"
 343 "343 Cost and rate clerks"
 344 "344 Billing, posting, and calculating machine operators"
 345 "345 Duplicating machine operators"
 346 "346 Mail preparing and paper handling machine operators"
 347 "347 Office machine operators, n.e.c."
 348 "348 Telephone operators"
 353 "353 Communications equipment operators, n.e.c."
 354 "354 Postal clerks except mail carriers"
 355 "355 Mail carriers, postal service"
 356 "356 Mail clerks, except postal service"
 357 "357 Messengers"
 359 "359 Dispatchers"
 363 "363 Production coordinators"
 364 "364 Traffic, shipping, and receiving clerks"
 365 "365 Stock and inventory clerks"
 366 "366 Meter readers"
 368 "368 Weighers, measurers, checkers, and samplers"
 373 "373 Expediters"
 374 "374 Material recording, scheduling, and distributing clerks, n.e.c."
 375 "375 Insurance adjusters, examiners, and investigators"
 376 "376 Investigators and adjusters, except insurance"
 377 "377 Eligibility clerks, social welfare"
 378 "378 Bill and account collectors"
 379 "379 General office clerks"
 383 "383 Bank tellers"
 384 "384 Proofreaders"
 385 "385 Data-entry keyers"
 386 "386 Statistical clerks"
 387 "387 Teachers' aides"
 389 "389 Administrative support occupations, n.e.c."
 403 "403 Launderers and ironers"
 404 "404 Cooks, private household"
 405 "405 Housekeepers and butlers"
 406 "406 Child care workers, private household"
 407 "407 Private household cleaners and servants"
 413 "413 Supervisors, firefighting and fire prevention occupations"
 414 "414 Supervisors, police and detectives"
 415 "415 Supervisors, guards"
 416 "416 Fire inspection and fire prevention occupations"
 417 "417 Firefighting occupations"
 418 "418 Police and detectives, public service"
 423 "423 Sheriffs, bailiffs, and other law enforcement officers"
 424 "424 Correctional institution officers"
 425 "425 Crossing guards"
 426 "426 Guards and police, except public service"
 427 "427 Protective service occupations, n.e.c."
 433 "433 Supervisors, food preparation and service occupations"
 434 "434 Bartenders"
 435 "435 Waiters and waitresses"
 436 "436 Cooks"
 438 "438 Food counter, fountain and related occupations"
 439 "439 Kitchen workers, food preparation"
 443 "443 Waiters'/waitresses' assistants"
 444 "444 Miscellaneous food preparation occupations"
 445 "445 Dental assistants"
 446 "446 Health aides, except nursing"
 447 "447 Nursing aides, orderlies, and attendants"
 448 "448 Supervisors, cleaning and building service workers"
 449 "449 Maids and housemen"
 453 "453 Janitors and cleaners"
 454 "454 Elevator operators"
 455 "455 Pest control occupations"
 456 "456 Supervisors, personal service occupations"
 457 "457 Barbers"
 458 "458 Hairdressers and cosmetologists"
 459 "459 Attendants, amusement and recreation facilities"
 461 "461 Guides"
 462 "462 Ushers"
 463 "463 Public transportation attendants"
 464 "464 Baggage porters and bellhops"
 465 "465 Welfare service aides"
 466 "466 Family child care providers"
 467 "467 Early childhood teachers' assistants"
 468 "468 Child care workers, n.e.c."
 469 "469 Personal service occupations, n.e.c."
 473 "473 Farmers, except horticultural"
 474 "474 Horticultural specialty farmers"
 475 "475 Managers, farms, except horticultural"
 476 "476 Managers, horticultural specialty farms"
 477 "477 Supervisors, farm workers"
 479 "479 Farm workers"
 483 "483 Marine life cultivation workers"
 484 "484 Nursery workers"
 485 "485 Supervisors, related agricultural occupations"
 486 "486 Groundskeepers and gardeners, except farm"
 487 "487 Animal caretakers, except farm"
 488 "488 Graders and sorters, agricultural products"
 489 "489 Inspectors, agricultural products"
 494 "494 Supervisors, forestry, and logging workers"
 495 "495 Forestry workers except logging"
 496 "496 Timber cutting and logging occupations"
 497 "497 Captains and other officers, fishing vessels"
 498 "498 Fishers"
 499 "499 Hunters and trappers"
 503 "503 Supervisors, mechanics and repairers"
 505 "505 Automobile mechanics"
 506 "506 Automobile mechanic apprentices"
 507 "507 Bus, truck, and stationary engine mechanics"
 508 "508 Aircraft engine mechanics"
 509 "509 Small engine repairers"
 514 "514 Automobile body and related repairers"
 515 "515 Aircraft mechanics, except engine"
 516 "516 Heavy equipment mechanics"
 517 "517 Farm equipment mechanics"
 518 "518 Industrial machinery repairers"
 519 "519 Machinery maintenance occupations"
 523 "523 Electronic repairers, communications and industrial equipment"
 525 "525 Data processing equipment repairers"
 526 "526 Household appliance and power tool repairers"
 527 "527 Telephone line installers and repairers"
 529 "529 Telephone installers and repairers"
 533 "533 Misc. electrical and electronic equipment repairers"
 534 "534 Heating, air conditioning, and refrigeration mechanics"
 535 "535 Camera, watch, and musical instrument repairers"
 536 "536 Locksmiths and safe repairers"
 538 "538 Office machine repairers"
 539 "539 Mechanical controls and valve repairers"
 543 "543 Elevator installers and repairers"
 544 "544 Millwrights"
 547 "547 Mechanics and repairers, n.e.c."
 549 "549 Mechanics and repairers, n.s."
 553 "553 Supervisors, brickmasons, stonemasons, and tile setters"
 554 "554 Supervisors, carpenters and related workers"
 555 "555 Supervisors, electricians and power transmission installers"
 556 "556 Supervisors, painters, paperhangers, and plasterers"
 557 "557 Supervisors, plumbers, pipefitters, and steamfitters"
 558 "558 Supervisors, construction, n.e.c."
 563 "563 Brickmasons and stonemasons"
 564 "564 Brickmason and stonemason apprentices"
 565 "565 Tile setters, hard and soft"
 566 "566 Carpet installers"
 567 "567 Carpenters"
 569 "569 Carpenter apprentices"
 573 "573 Drywall installers"
 575 "575 Electricians"
 576 "576 Electrician apprentices"
 577 "577 Electrical power installers and repairers"
 579 "579 Painters, construction and maintenance"
 583 "583 Paperhangers"
 584 "584 Plasterers"
 585 "585 Plumbers, pipefitters, and steamfitters"
 587 "587 Plumber, pipe fitter, and steamfitter apprentices"
 588 "588 Concrete and terrazzo finishers"
 589 "589 Glaziers"
 593 "593 Insulation workers"
 594 "594 Paving, surfacing, and tamping equipment operators"
 595 "595 Roofers"
 596 "596 Sheetmetal duct installers"
 597 "597 Structural metal workers"
 598 "598 Drillers, earth"
 599 "599 Construction trades, n.e.c."
 613 "613 Supervisors, extractive occupations"
 614 "614 Drillers, oil well"
 615 "615 Explosives workers"
 616 "616 Mining machine operators"
 617 "617 Mining occupations, n.e.c."
 628 "628 Supervisors, production occupations"
 634 "634 Tool and die makers"
 635 "635 Tool and die maker apprentices"
 636 "636 Precision assemblers, metal"
 637 "637 Machinists"
 639 "639 Machinist apprentices"
 643 "643 Boilermakers"
 644 "644 Precision grinders, filers, and tool sharpeners"
 645 "645 Patternmakers and model makers, metal"
 646 "646 Lay-out workers"
 647 "647 Precious stones and metals workers (jewelers)"
 649 "649 Engravers, metal"
 653 "653 Sheet metal workers"
 654 "654 Sheet metal worker apprentices"
 655 "655 Miscellaneous precision metal workers"
 656 "656 Patternmakers and model makers, wood"
 657 "657 Cabinet makers and bench carpenters"
 658 "658 Furniture and wood finishers"
 659 "659 Miscellaneous precision woodworkers"
 666 "666 Dressmakers"
 667 "667 Tailors"
 668 "668 Upholsterers"
 669 "669 Shoe repairers"
 674 "674 Miscellaneous precision apparel and fabric workers"
 675 "675 Hand molders and shapers, except jewelers"
 676 "676 Patternmakers, lay-out workers, and cutters"
 677 "677 Optical goods workers"
 678 "678 Dental laboratory and medical appliance technicians"
 679 "679 Bookbinders"
 683 "683 Electrical and electronic equipment assemblers"
 684 "684 Miscellaneous precision workers, n.e.c."
 686 "686 Butchers and meat cutters"
 687 "687 Bakers"
 688 "688 Food batchmakers"
 689 "689 Inspectors, testers, and graders"
 693 "693 Adjusters and calibrators"
 694 "694 Water and sewage treatment plant operators"
 695 "695 Power plant operators"
 696 "696 Stationary engineers"
 699 "699 Miscellaneous plant and system operators"
 703 "703 Lathe and turning machine set-up operators"
 704 "704 Lathe and turning machine operators"
 705 "705 Milling and planing machine operators"
 706 "706 Punching and stamping press machine operators"
 707 "707 Rolling machine operators"
 708 "708 Drilling and boring machine operators"
 709 "709 Grinding, abrading, buffing, and polishing machine operators"
 713 "713 Forging machine operators"
 714 "714 Numerical control machine operators"
 715 "715 Miscellaneous metal, plastic, stone, and glass working machine operators"
 717 "717 Fabricating machine operators, n.e.c."
 719 "719 Molding and casting machine operators"
 723 "723 Metal plating machine operators"
 724 "724 Heat treating equipment operators"
 725 "725 Miscellaneous metal and plastic processing machine operators"
 726 "726 Wood lathe, routing, and planing machine operators"
 727 "727 Sawing machine operators"
 728 "728 Shaping and joining machine operators"
 729 "729 Nailing and tacking machine operators"
 733 "733 Miscellaneous woodworking machine operators"
 734 "734 Printing press operators"
 735 "735 Photoengravers and lithographers"
 736 "736 Typesetters and compositors"
 737 "737 Miscellaneous printing machine operators"
 738 "738 Winding and twisting machine operators"
 739 "739 Knitting, looping, taping, and weaving machine operators"
 743 "743 Textile cutting machine operators"
 744 "744 Textile sewing machine operators"
 745 "745 Shoe machine operators"
 747 "747 Pressing machine operators"
 748 "748 Laundering and dry cleaning machine operators"
 749 "749 Miscellaneous textile machine operators"
 753 "753 Cementing and gluing machine operators"
 754 "754 Packaging and filling machine operators"
 755 "755 Extruding and forming machine operators"
 756 "756 Mixing and blending machine operators"
 757 "757 Separating, filtering, and clarifying machine operators"
 758 "758 Compressing and compacting machine operators"
 759 "759 Painting and paint spraying machine operators"
 763 "763 Roasting and baking machine operators, food"
 764 "764 Washing, cleaning, and pickling machine operators"
 765 "765 Folding machine operators"
 766 "766 Furnace, kiln, and oven operators, except food"
 768 "768 Crushing and grinding machine operators"
 769 "769 Slicing and cutting machine operators"
 773 "773 Motion picture projectionists"
 774 "774 Photographic process machine operators"
 777 "777 Miscellaneous machine operators, n.e.c."
 779 "779 Machine operators, n.s."
 783 "783 Welders and cutters"
 784 "784 Solderers and brazers"
 785 "785 Assemblers"
 786 "786 Hand cutting and trimming occupations"
 787 "787 Hand molding, casting, and forming occupations"
 789 "789 Hand painting, coating, and decorating occupations"
 793 "793 Hand engraving and printing occupations"
 795 "795 Miscellaneous hand working occupations"
 796 "796 Production inspectors, checkers, and examiners"
 797 "797 Production testers"
 798 "798 Production samplers and weighers"
 799 "799 Graders and sorters, except agricultural"
 803 "803 Supervisors, motor vehicle operators"
 804 "804 Truck drivers"
 806 "806 Driver-sales workers"
 808 "808 Bus drivers"
 809 "809 Taxicab drivers and chauffeurs"
 813 "813 Parking lot attendants"
 814 "814 Motor transportation occupations, n.e.c."
 823 "823 Railroad conductors and yardmasters"
 824 "824 Locomotive operating occupations"
 825 "825 Railroad brake, signal, and switch operators"
 826 "826 Rail vehicle operators, n.e.c."
 828 "828 Ship captains and mates, except fishing boats"
 829 "829 Sailors and deckhands"
 833 "833 Marine engineers"
 834 "834 Bridge, lock, and lighthouse tenders"
 843 "843 Supervisors, material moving equipment operators"
 844 "844 Operating engineers"
 845 "845 Longshore equipment operators"
 848 "848 Hoist and winch operators"
 849 "849 Crane and tower operators"
 853 "853 Excavating and loading machine operators"
 855 "855 Grader, dozer, and scraper operators"
 856 "856 Industrial truck and tractor equipment operators"
 859 "859 Miscellaneous material moving equipment operators"
 864 "864 Supervisors, handlers, equipment cleaners, and laborers, n.e.c."
 865 "865 Helpers, mechanics and repairers"
 866 "866 Helpers, construction trades"
 867 "867 Helpers, surveyor"
 868 "868 Helpers, extractive occupations"
 869 "869 Construction laborers"
 874 "874 Production helpers"
 875 "875 Garbage collectors"
 876 "876 Stevedores"
 877 "877 Stock handlers and baggers"
 878 "878 Machine feeders and offbearers"
 883 "883 Freight, stock, and material handlers, n.e.c."
 885 "885 Garage and service station related occupations"
 887 "887 Vehicle washers and equipment cleaners"
 888 "888 Hand packers and packagers"
 889 "889 Laborers, except construction"
 903 "903 Commissioned Officers and Warrant Officers"
 904 "904 Non-commissioned Officers and Other Enlisted Personnel"
 905 "905 Military occupation, rank not specified".

!enddefine. 

******************************************************.


** Macro 2 : defines occupational unit subgroups and adds value labels. 


define subgps (maj=!enclose('{','}')
              /smj=!enclose('{','}') /min=!enclose('{','}') ).

* assumes have computed vars which equal soc value. 

recode !maj 
  (3 thru 199=1) (203 thru 389=2) (403 thru 469=3) 
  (473 thru 499=4)  (503 thru 699=5) (703 thru 889=6) 
   (903 thru 905=7) (909=8). 

add value labels !maj 
   1 "Managerial and professional speciality occupations"
   2 "Technical, Sales and administrative support occupations"
   3 "Service Occupations"
   4 "Farming, forestry and fishing occupations"
   5 "Precision production, craft and repair occupations" 
   6 "Operators, fabricators and labourers"
   7 "Military occupations"
   8 "Experienced unemployed, not classified by occupation" .



*******************************************.



recode !smj (3 thru 37=11) (43 thru 199=12)
  (203 thru 208=21) (213 thru 235=22) (243 thru 285=23) 
  (303 thru 389=24)  
  (403 thru 407=31) (413 thru 427=32) (433 thru 469=33) 
  (473 thru 476=41) (477 thru 499=42)  
  (503=51) (505 thru 549=52) (553 thru 599=53) 
  (613 thru 617=54) (628 thru 699=55) 
  (703 thru 779=61) (783 thru 795=62) (796 thru 799=63) 
  (803 thru 814=64) (823 thru 889=65)  
  (903 thru 905=71)
  (909=81) .

add value labels !smj 
 11 "11 Executive, Administrative, and Managerial Occupations"
 12 "12 Professional Specialty Occupations"
 21 "21 Technicians and Related Support Occupations"
 22 "22 Technologists and Technicians, Except Health:"
 23 "23 Sales Occupations"
 24 "24 Administrative Support Occupations, Including Clerical"
 31 "31 Private Household Services Occupations"
 32 "32 Protective Service Occupations"
 33 "33 Service Occupations, Except Protective and Household"
 41 "41 Farm Operators and Managers:"
 42 "42 Other Agricultural and Related Occupations:"
 51 "51 Mechanics and Repairers"
 52 "52 Mechanics and Repairers, Except Supervisors:"
 53 "53 Construction Trades"
 54 "54 Extractive Occupations"
 55 "55 Precision Production Occupations"
 61 "61 Machine Operators, Assemblers, and Inspectors Machine Operators and Tenders, Except Precision"
 62 "62 Fabricators, Assemblers, and Hand Working Occupations:"
 63 "63 Production Inspectors, Testers, Samplers, and Weighers:"
 64 "64 Transportation and Material Moving Occupations:"
 65 "65 Transportation Occupations, Except Motor Vehicles:"
 71 "71 Military Occupations"
 81 "81 Experienced unemployed not classified by occupation"  . 



***********************************.


recode !min (3 thru 22=111) (23 thru 37=112)
  (43=121) (44 thru 63=122) (64 thru 68=123) 
  (69 thru 83=124) (84 thru 89=125) (95 thru 97=126) 
  (98 thru 106=127) (113 thru 154=128) (155 thru 163=129) 
  (164 thru 165=130) (166 thru 173=131) (174 thru 177=132) 
  (178 thru 179=133) (183 thru 199=134)  
  (203 thru 208=211) (213 thru 218=221) (223 thru 225=222)
  (226 thru 235=223) 
  (243=231) (253 thru 257=232) (258 thru 259=233) 
  (263 thru 278=234) (283 thru 285=235) (303 thru 307=241) 
  (308 thru 309=242) (313 thru 315=243) (316 thru 323=244) 
  (325 thru 336=245) (337 thru 344=246) (345 thru 347=247) 
  (348 thru 353=248) (354 thru 357=249) (359 thru 374=250) 
  (375 thru 378=251) (379 thru 389=252)  
  (403 thru 407=311) (413 thru 415=321) (416 thru 417=322) 
  (418 thru 424=323) (425 thru 427=324) (433 thru 444=331) 
  (445 thru 447=332) (448 thru 455=333) (456 thru 469=334) 
  (473 thru 476=411) (477 thru 484=421) (485 thru 489=422) 
  (494 thru 496=423) (497 thru 499=424)    
  (503=511) (505 thru 519=521) (523 thru 534=522) 
  (535 thru 549=523) (553 thru 558=531) (563 thru 599=532)
  (613 thru 617=541) (628=551) (634 thru 655=552) 
  (656 thru 659=553) (666 thru 674=554) (675 thru 684=555)
  (686 thru 688=556) (689 thru 693=557) (694 thru 699=558) 
  (703 thru 717=611) (719 thru 725=612) (726 thru 733=613) 
  (734 thru 737=614) (738 thru 749=615) (753 thru 779=616) 
  (783 thru 795=621) (796 thru 799=631) (803 thru 814=641) 
  (823 thru 826=651) (828 thru 834=652) (843 thru 865=653) 
  (866 thru 874=654) (875 thru 889=655)  
  (903 thru 905=711) 
  (909=811)  .

add value labels !min 
 111 "111 Executive, Administrative, and Managerial Occupations"
 112 "112 Management Related Occupations:"
 121 "121 Engineers, Architects, and Surveyors:"
 122 "122 Engineers:"
 123 "123 Mathematical and Computer Scientists:"
 124 "124 Natural Scientists:"
 125 "125 Health Diagnosing Occupations:"
 126 "126 Health Assessment and Treating Occupations:"
 127 "127 Therapists:"
 128 "128 Teachers, Postsecondary:"
 129 "129 Teachers, Except Postsecondary:"
 130 "130 Librarians, Archivists, and Curators:"
 131 "131 Social Scientists and Urban Planners:"
 132 "132 Social, Recreation, and Religious Workers"
 133 "133 Lawyers and Judges:"
 134 "134 Writers, Artists, Entertainers, and Athletes:"
 211 "211 Health Technologists and Technicians:"
 221 "221 Engineering and Related Technologists and Technicians:"
 222 "222 Science Technicians:"
 223 "223 Technicians, Except Health, Engineering, and Science:"
 231 "231 Sales Occupations"
 232 "232 Sales Representatives, Finance and Business Services:"
 233 "233 Sales Representatives, Commodities Except Retail:"
 234 "234 Sales Workers, Retail and Personal Services:"
 235 "235 Sales Related Occupations:"
 241 "241 Supervisors, Administrative Support Occupations:"
 242 "242 Computer Equipment Operators:"
 243 "243 Secretaries, Stenographers, and Typists:"
 244 "244 Information Clerks:"
 245 "245 Records Processing Occupations, Except Financial:"
 246 "246 Financial Records Processing Occupations:"
 247 "247 Duplicating, Mail, and Other Office Machine Operators:"
 248 "248 Communications Equipment Operators:"
 249 "249 Mail and Message Distributing Occupations:"
 250 "250 Material Recording, Scheduling, and Distributing Clerks:"
 251 "251 Adjusters and Investigators:"
 252 "252 Miscellaneous Administrative Support Occupations:"
 311 "311 Private Household Occupations"
 321 "321 Supervisors, Protective Service Occupations:"
 322 "322 Firefighting and Fire Prevention Occupations:"
 323 "323 Police and Detectives:"
 324 "324 Guards:"
 331 "331 Food Preparation and Service Occupations:"
 332 "332 Health Service Occupations:"
 333 "333 Cleaning and Building Service Occupations, Except Household:"
 334 "334 Personal Service Occupations:"
 411 "411 Farm Operators and Managers:"
 421 "421 Farm Occupations, Except Managerial:"
 422 "422 Related Agricultural Occupations:"
 423 "423 Forestry and Logging Occupations:"
 424 "424 Fishers, Hunters, and Trappers:"
 511 "511 Mechanics and Repairers"
 521 "521 Vehicle and Mobile Equipment Mechanics and Repairers:"
 522 "522 Electrical and Electronic Equipment Repairers:"
 523 "523 Miscellaneous Mechanics and Repairers:"
 531 "531 Supervisors, Construction Occupations:"
 532 "532 Construction Trades, Except Supervisors:"
 541 "541 Extractive Occupations"
 551 "551 Precision Production Occupations"
 552 "552 Precision Metal Working Occupations:"
 553 "553 Precision Woodworking Occupations:"
 554 "554 Precision Textile, Apparel, and Furnishings Machine Workers:"
 555 "555 Precision Workers, Assorted Materials:"
 556 "556 Precision Food Production Occupations:"
 557 "557 Precision Inspectors, Testers, and Related Workers:"
 558 "558 Plant and System Operators:"
 611 "611 Metalworking and Plastic Working Machine Operators:"
 612 "612 Metal and Plastic Processing Machine Operators:"
 613 "613 Woodworking Machine Operators:"
 614 "614 Printing Machine Operators:"
 615 "615 Textile, Apparel, and Furnishings Machine Operators:"
 616 "616 Machine Operators, Assorted Materials:"
 621 "621 Fabricators, Assemblers, and Hand Working Occupations:"
 631 "631 Production Inspectors, Testers, Samplers, and Weighers:"
 641 "641 Transportation and Material Moving Occupations:"
 651 "651 Rail Transportation Occupations:"
 652 "652 Water Transportation Occupations:"
 653 "653 Material Moving Equipment Operators:"
 654 "654 Helpers, Construction and Extractive Occupations:"
 655 "655 Freight, Stock, and Material Handlers:"
 711 "711 Military Occupations"
 811 "811 Experienced unemployed not classified by occupation" . 

!enddefine.


*********************************************.

* EOF.

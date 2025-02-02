


** SPSS syntax for adding value labels to German KldB occupational units. 

**********************************.

******.
** Recommended usage:.
*include file="KldBunitlabelsv1.sps".
*kkkkkkblab occ={title unit vars}. 
******************.



define kblab (occ=!enclose('{','}')) .

add value labels !occ
 11 "11 Farmers"
 12 "12 Winegrowers"
 21 "21 Animal breeders"
 22 "22 Fishermen"
 31 "31 Managers in agriculture and animal breeding"
 32 "32 Agricultural engineers, agriculture advisors"
 41 "41 Land workers"
 42 "42 Milkers"
 43 "43 Family-member land workers, n.e.c."
 44 "44 Animal keepers and related occupations"
 51 "51 Gardeners, garden workers"
 52 "52 Garden architects, garden managers"
 53 "53 Florists"
 61 "61 Forestry managers, foresters, hunters"
 62 "62 Forest workers, forest cultivators"
 71 "71 Miners"
 72 "72 Mechanical, electrical, face workers, shot firers"
 81 "81 Stone crushers"
 82 "82 Earth, gravel, sand quarriers"
 83 "83 Oil, natural gas quarriers"
 91 "91 Mineral preparers, mineral burners"
 101 "101 Stone preparers"
 102 "102 Jewel preparers"
 111 "111 Stoneware, earthenware makers"
 112 "112 Shaped brick, concrete block makers"
 121 "121 Ceramics workers"
 131 "131 Frit makers"
 132 "132 Hollow glassware makers"
 133 "133 Flat glass makers"
 134 "134 Glass blowers (lamps)"
 135 "135 Glass processors, glass finishers"
 141 "141 Chemical plant operatives"
 142 "142 Chemical laboratory workers"
 143 "143 Rubber makers, processors"
 144 "144 Vulcanisers"
 151 "151 Plastics processors"
 161 "161 Paper, cellulose makers"
 162 "162 Packaging makers"
 163 "163 Book binding occupations"
 164 "164 Other paper products makers"
 171 "171 Type setters, compositors"
 172 "172 Printed goods makers"
 173 "173 Printers (letterpress)"
 174 "174 Printers (flat, gravure)"
 175 "175 Special printers, screeners"
 176 "176 Copiers"
 177 "177 Printer's assistants"
 181 "181 Wood preparers"
 182 "182 Wood moulders and related occupations"
 183 "183 Wood products makers"
 184 "184 Basket and wicker products makers"
 191 "191 Iron, metal producer, melters"
 192 "192 Rollers"
 193 "193 Metal drawers"
 201 "201 Moulders, coremakers"
 202 "202 Mould casters"
 203 "203 Semi-finished product fettlers and other mould casting occupations"
 211 "211 Sheet metal pressers, drawers, stampers"
 212 "212 Wire moulders, processors"
 213 "213 Other metal moulders (non-cutting deformation)"
 221 "221 Turners"
 222 "222 Drillers"
 223 "223 Planers"
 224 "224 Borers"
 225 "225 Metal grinders"
 226 "226 Other metal-cutting occupations"
 231 "231 Metal polishers"
 232 "232 Engravers, chasers"
 233 "233 Metal finishers"
 234 "234 Galvanisers, metal colourers"
 235 "235 Enamellers, zinc platers and other metal surface finishers"
 241 "241 Welders, oxy-acetylene cutters"
 242 "242 Solderers"
 243 "243 Riveters"
 244 "244 Metal bonders and other metal connectors"
 251 "251 Steel smiths"
 252 "252 Container builders, coppersmiths and related occupations"
 261 "261 Sheet metal workers"
 262 "262 Plumbers"
 263 "263 Pipe, tubing fitters"
 271 "271 Building fitters"
 272 "272 Sheet metal, plastics fitters"
 273 "273 Fitters"
 274 "274 Plant fitters, maintenance fitters"
 275 "275 Steel structure fitters, metal shipbuilders"
 281 "281 Motor vehicle repairers"
 282 "282 Agricultural machinery repairers"
 283 "283 Aircraft mechanics"
 284 "284 Precision mechanics"
 285 "285 Other mechanics"
 286 "286 Watch-, clockmakers"
 291 "291 Toolmakers"
 301 "301 Precision fitters n.e.c."
 302 "302 Precious metal smiths"
 303 "303 Dental technicians"
 304 "304 Opthalmic opticians"
 305 "305 Musical instrument makers"
 306 "306 Doll makers, model makers, taxidermists"
 311 "311 Electrical fitters, mechanics"
 312 "312 Telecommunications mechanics, craftsmen"
 313 "313 Electric motor, transformer fitters"
 314 "314 Electrical appliance fitters"
 315 "315 Radio, sound equipment mechanics"
 321 "321 Electrical appliance, electrical parts assemblers"
 322 "322 Other assemblers"
 323 "323 Metal workers, n.m.i."
 331 "331 Spinners, fibre preparers"
 332 "332 Spoolers, twisters, ropemakers"
 341 "341 Weaving preparers"
 342 "342 Weavers"
 343 "343 Tufted goods makers"
 344 "344 Machined goods makers"
 345 "345 Felt makers, hat body makers"
 351 "351 Cutters"
 352 "352 Clothing sewers"
 353 "353 Laundry cutters, sewers"
 354 "354 Embroiderers"
 355 "355 Hat, cap makers"
 356 "356 Sewers, n.e.c."
 357 "357 Other textile processing operatives"
 361 "361 Textile dyers"
 362 "362 Textile finishers"
 371 "371 Leather makers, catgut string makers"
 372 "372 Shoemakers"
 373 "373 Footwear makers"
 374 "374 Coarse leather goods finishers, truss makers"
 375 "375 Fine leather goods makers"
 376 "376 Leather clothing makers and other leather processing operatives"
 377 "377 Hand shoemakers"
 378 "378 Skin processing operatives"
 391 "391 Bakery goods makers"
 392 "392 Confectioners (pastry)"
 401 "401 Butchers"
 402 "402 Meat, sausage goods makers"
 403 "403 Fish processing operatives"
 411 "411 Cooks"
 412 "412 Ready-to-serve meals, fruit, vegetable preservers, preparers"
 421 "421 Wine coopers"
 422 "422 Brewers, maltsters"
 423 "423 Other beverage makers, tasters"
 424 "424 Tobacco goods makers"
 431 "431 Milk, fat processing operatives"
 432 "432 Flour, food processors"
 433 "433 Sugar, sweets, ice-cream makers"
 441 "441 Bricklayers"
 442 "442 Concrete workers"
 451 "451 Carpenters"
 452 "452 Roofers"
 453 "453 Scaffolders"
 461 "461 Paviors"
 462 "462 Road makers"
 463 "463 Tracklayers"
 464 "464 Explosives men (except shotfirers)"
 465 "465 Land improvement, hydraulic engineering workers"
 466 "466 Other civil engineering workers"
 471 "471 Earth movers"
 472 "472 Other building laborers, building assistants, n.e.c."
 481 "481 Stucco workers, plasterers, rough casters"
 482 "482 Insulators, proofers"
 483 "483 Tile setters"
 484 "484 Furnace setter, air heating installers"
 485 "485 Glaziers"
 486 "486 Screed, terrazzo layers"
 491 "491 Room equippers"
 492 "492 Upholsterers, mattress makers"
 501 "501 Carpenters"
 502 "502 Model, form carpenters"
 503 "503 Cartwrights, wheelwrights, coopers"
 504 "504 Other wood and sports equipment makers"
 511 "511 Painters, lacquerers (construction)"
 512 "512 Goods painters, lacquerers"
 513 "513 Wood surface finishers, veneerers"
 514 "514 Ceramics, glass painters"
 521 "521 Goods examiners, sorters, n.e.c."
 522 "522 Packagers, goods receivers, despatchers"
 531 "531 Assistants (no further specification)"
 541 "541 Generator machinists"
 542 "542 Winding engine drivers, aerial ropeway machinists"
 543 "543 Other machinists"
 544 "544 Crane drivers"
 545 "545 Earthmoving plant drivers"
 546 "546 Construction machine attendants"
 547 "547 Machine attendants, machinists' helpers"
 548 "548 Stokers"
 549 "549 Machine setters, n.m.i."
 601 "601 Mechanical, motor engineers"
 602 "602 Electrical engineers"
 603 "603 Architects, civil engineers"
 604 "604 Survey engineers"
 605 "605 Mechanical, motor engineers"
 606 "606 Other manufacturing engineers"
 607 "607 Other engineers"
 611 "611 Chemists, chemical engineers"
 612 "612 Physicists, physics engineers, mathematicians"
 621 "621 Mechanical engineering technicians"
 622 "622 Electrical engineering technicians"
 623 "623 Building technicians"
 624 "624 Measurement technicians"
 625 "625 Mining, metallurgy, foundry technicians"
 626 "626 Chemistry, physics technicians"
 627 "627 Remaining manufacturing technicians"
 628 "628 Other technicians"
 629 "629 Foremen, master mechanics"
 631 "631 Biological specialists"
 632 "632 Physical and mathematical specialists"
 633 "633 Chemical laboratory assistants"
 634 "634 Photo laboratory assistants"
 635 "635 Technical draughtspersons"
 681 "681 Wholesale and retail trade buyers, buyers"
 682 "682 Salespersons"
 683 "683 Publishing house dealers, booksellers"
 684 "684 Druggists/chemists (pharmacy)"
 685 "685 Pharmacy aids"
 686 "686 Service-station attendants"
 687 "687 Commercial agents, travellers"
 688 "688 Mobile traders"
 691 "691 Bank specialists"
 692 "692 Building society specialists"
 693 "693 Health insurance specialists (not social security)"
 694 "694 Life, property insurance specialists"
 701 "701 Forwarding business dealers"
 702 "702 Tourism specialists"
 703 "703 Publicity occupations"
 704 "704 Brokers, property managers"
 705 "705 Landlords, agents, auctioneers"
 706 "706 Cash collectors, cashiers, ticket sellers, inspectors"
 711 "711 Railway engine drivers"
 712 "712 Railway controllers, conductors"
 713 "713 Other traffic controllers, conductors"
 714 "714 Motor vehicle drivers"
 715 "715 Coachmen"
 716 "716 Street attendants"
 721 "721 Navigating ships officers"
 722 "722 Technical ships officers, ships engineers"
 723 "723 Deck seamen"
 724 "724 Inland boatmen"
 725 "725 Other water transport occupations"
 726 "726 Air transport occupations"
 731 "731 Post masters"
 732 "732 Postal deliverers"
 733 "733 Radio operators"
 734 "734 Telephonists"
 741 "741 Warehouse managers, warehousemen"
 742 "742 Transportation equipment drivers"
 743 "743 Stowers, furniture packers"
 744 "744 Stores, transport workers"
 751 "751 Entrepreneurs, managing directors, divisional managers"
 752 "752 Management consultants, organisors"
 753 "753 Chartered accountants, tax advisers"
 761 "761 Members of Parliament, Ministers, elected officials"
 762 "762 Senior government officials"
 763 "763 Association leaders, officials"
 771 "771 Cost accountants, valuers"
 772 "772 Accountants"
 773 "773 Cashiers"
 774 "774 Data processing specialists"
 781 "781 Office specialists"
 782 "782 Stenographers, shorthand-typists, typists"
 783 "783 Data typists"
 784 "784 Office auxiliary workers"
 791 "791 Factory guards, detectives"
 792 "792 Watchmen, custodians"
 793 "793 Doormen, caretakers"
 794 "794 Domestic and non-domestic servants"
 801 "801 Soldiers, border guards, police officers"
 802 "802 Firefighters"
 803 "803 Safety testers"
 804 "804 Chimney sweeps"
 805 "805 Health-protecting occupations"
 811 "811 Arbitrators"
 812 "812 Judicial administrators"
 813 "813 Legal representatives, advisors"
 814 "814 Judicial enforcers"
 821 "821 Journalists"
 822 "822 Interpreters, translators"
 823 "823 Librarians, archivists, museum specialists"
 831 "831 Musicians"
 832 "832 Artists' agents"
 833 "833 Visual, commercial artists"
 834 "834 Scenery, sign painters"
 835 "835 Artistic and assisting occupations (stage, video and audio)"
 836 "836 Interior, exhibition designers, window dressers"
 837 "837 Photographers"
 838 "838 Performers, professional sportsmen, auxiliary artistic occupations"
 841 "841 Physicians"
 842 "842 Dentists"
 843 "843 Veterinary surgeons"
 844 "844 Pharmacists"
 851 "851 Non-medical practitioners"
 852 "852 Masseurs, physiotherapists and related occupations"
 853 "853 Nurses, midwives"
 854 "854 Nursing assistants"
 855 "855 Dietary assistants, pharmaceutical assistants"
 856 "856 Medical receptionists"
 857 "857 Medical laboratory assistants"
 861 "861 Social workers, care workers"
 862 "862 Home wardens, social work teachers"
 863 "863 Work, vocational advisers"
 864 "864 Nursery teachers, child nurses"
 871 "871 University teachers, lecturers at higher technical schools and academies"
 872 "872 Gymnasium teachers"
 873 "873 Primary, secondary (basic), special school teachers"
 874 "874 Technical, vocational, factory instructors"
 875 "875 Music teachers, n.e.c."
 876 "876 Sports teachers"
 877 "877 Other teachers"
 881 "881 Economic and social scientists, statisticians"
 882 "882 Humanities specialists, n.e.c."
 883 "883 Scientists n.e.c."
 891 "891 Ministers of religion"
 892 "892 Members of religious orders without specific occupation"
 893 "893 Religious care helpers"
 901 "901 Hairdressers"
 902 "902 Other body care occupations"
 911 "911 Restaurant, inn, bar keepers, hotel proprietors, catering trade dealers"
 912 "912 Waiters, stewards"
 913 "913 Others attending on guests"
 921 "921 Housekeeping managers"
 922 "922 Consumer advisors"
 923 "923 Other housekeeping attendants"
 931 "931 Laundry workers, pressers"
 932 "932 Textile cleaners, dyers and dry cleaners"
 933 "933 Household cleaners"
 934 "934 Glass, buildings cleaners"
 935 "935 Street cleaners, refuse disposers"
 936 "936 Vehicle cleaners, servicers"
 937 "937 Machinery, container cleaners and related occupations"
 971 "971 Mithelfende Fanilien"
 981 "981 Lehrlinge mit noch n"
 982 "982 Praktikanten, Volont"
 991 "991 Arbeitskraefte ohne"
 999 "999 Entfaellt".
 
!enddefine.
 

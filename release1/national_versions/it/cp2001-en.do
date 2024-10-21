

** Value labels in English for the Italian National Statistics (ISAT), Occupatonal Classification 2001 (CP2001) 

** Three and two-digit levels

** (Supplemented by two unofficial codes, 991 and 992, used in the CAMSIS-IT scale) 



** English translation from: Deborah de Luca, Cinzia Meraviglia, Harry Ganzeboom

** Stata formatting: Paul Lambert, October 2010




#delimit ;

capture label drop cp2001l ; 


label define cp2001l 
 110 "Legislators, public officials" 
 111 "Legislators and senior government officials" 
 112 "Directors and chief executives in public administration" 
 113 "Senior judicial officials " 
 114 "Senior officials of national and international interest organizations" 
 120 "Managers of large firms" 
 121 "Entrepreneurs and CEOs of large private entreprises" 
 122 "Corporate managers of large private firms" 
 123 "Department managers of large private firms" 
 130 "Managers of small firms" 
 131 "Entrepreneurs, managers and chiefs of small firms" 
 210 "Professionals in natural sciences" 
 211 "Mathematicians, physicians and natural scientists" 
 220 "Professionals in engineering and architecture" 
 221 "Engineers" 
 222 "Architects, town planners and specialists in land conservation and recovery" 
 230 "Professional in life sciences" 
 231 "Life science professionals" 
 240 "Professionals in health science" 
 241 "Health specialists: Physicians" 
 242 "Nursing and midwifery associate professionals " 
 250 "Professionals in human, legal and social sciences" 
 251 "Business, management and banking professionals" 
 252 "Social science professionals" 
 253 "Legal professionals" 
 254 "Linguistics, literature and  related professionals" 
 255 "Art and artistic disciplines professionals" 
 256 "Religious professionals" 
 260 "Professionals in teaching and research" 
 261 "University teaching professionals (full and associate professors)" 
 262 "Researchers and graduated technicians" 
 263 "Secondary and post-secondary education teaching professionals" 
 264 "Primary and pre-primary education teaching professionals" 
 265 "Other education and teaching professionals (graduated) (inspectors, principals, etc.)" 
 310 "Associate professionals in natural sciences and engineering" 
 311 "Quantitative sciences, physics and chemistry technicians" 
 312 "Engineering sciences technicians" 
 313 "Ship and aircraft technicians" 
 314 "Optical and electronical equipment operators" 
 315 "Safety, quality and environmental protection technicians" 
 320 "Associate professionals in health care and life sciences" 
 321 "Health care associate professionals" 
 322 "Life sciences technicians" 
 330 "Associate professionals in business & administration" 
 331 "Administrative and management associate professionals" 
 332 "Finance and insurance technicians" 
 333 "Trade brokers" 
 334 "Business services agents and related associate professionals" 
 340 "Associate professionals in  public & personal services" 
 341 "Tourism and hospitality associate professionals" 
 342 "Primary, pre-primary and special education teaching associate professionals" 
 343 "Athletes, trainers and related professionals" 
 344 "Entertainment and cultural services technicians" 
 345 "Social work technicians" 
 346 "Security and public services technicians" 
 410 "Office clerks" 
 411 "Secretaries and keyboard-operating clerks" 
 412 "Numerical clerks (administrative, financial, management)" 
 413 "Material-recording and transportation clerks" 
 414 "Library, mail and related clerks" 
 420 "Cashier, tellers, and related workers" 
 421 "Cashiers, tellers and related clerks" 
 422 "Receptionists and information clerks" 
 510 "Shopkeepers and salespersons" 
 511 "Wholesale shopkeepers and related workers" 
 512 "Salespersons in retail trade" 
 513 "Models, demonstrators and related workers" 
 520 "Restaurants, bars and hotels workers" 
 521 "Hospitality, tourism and related services workers" 
 522 "Restaurants and retail trade workers" 
 531 "Instructors and masters of craftmanship and artistic products" 
 541 "Health care skilled workers" 
 550 "Personal services, security, professional cleaning, and recreational services workers" 
 551 "Entertainment and cultural services skilled workers" 
 552 "Laundry and dyeing skilled workers " 
 553 "Personal services and related skilled workers" 
 554 "Protective services and related workers" 
 610 "Extraction and building skilled workers" 
 611 "Miners, shotfirers, stone cutters and carvers" 
 612 "Building frame and related trades workers" 
 613 "Building finishers and related trades workers " 
 614 "Painters, building structure cleaners and related trades workers  " 
 615 "Building caretakers, window and related cleaners" 
 620 "Metal, machinery and related skilled workers" 
 621 "Metal moulders, welders, sheet-metal workers, structural- metal preparers, and related trades workers " 
 622 "Blacksmiths, tool-makers and related trades workers" 
 623 "machinery mechanics and fitters (except industrial assembly-line workers)" 
 624 "Electrical and electronic equipment mechanics and fitters" 
 625 "Ship engine mechanics and fitters" 
 630 "Precision, handicraft etc skilled workers" 
 631 "Metal, machinery and related trade workers" 
 632 "Potters, glass-makers and related trades workers" 
 633 "Handicraft workers in wood, textile, leather and related materials" 
 634 "Craft printing and related trades workers" 
 640 "Agricultural and fishery skilled workers" 
 641 "Skilled agricultural workers" 
 642 "Skilled animal producers " 
 643 "Mixed crop and animal producers" 
 644 "Skilled forestry workers" 
 645 "Fishery workers and hunters" 
 650 "Food, wood, textile, garments, leather skilled workers" 
 651 "Food processing and related trades skilled workers" 
 652 "Wood treaters and related trades skilled workers" 
 653 "Textile, garment and related trades skilled workers" 
 654 "Leather and shoemaking trades skilled workers" 
 661 "Craftmen and manual workers in the entertainment business" 
 710 "Industrial plant operators" 
 711 "Mining and mineral-processing-plant operators" 
 712 "Metal-processing-plant operators " 
 713 "Glass, ceramics and related plant operators " 
 714 "Wood-processing- and papermaking-plant operators" 
 715 "Chemical-processing plant operators" 
 716 "Power-production and related plant operators" 
 717 "Automated-assembly-line and industrial-robot operators" 
 720 "Stationary plant semi-skilled operators, assemblers, line operators" 
 721 "Metal and mineral-processing-plant operators " 
 722 "Chemical products machine operators" 
 723 "Rubber- and plastic-products machine operators" 
 724 "Wood-products-plant operators" 
 725 "Printing-, binding- and paper-products machine operators" 
 726 "Textile-, fur- and leather-products machine operators" 
 727 "Industrial products assemblers" 
 728 "Assembler machines operators" 
 730 "Agriculture stationary plant operators" 
 731 "Agriculture machine operators" 
 732 "Food and related products machine operators" 
 740 "Drivers and mobile plaal servicesnt operators" 
 741 "Locomotive engine drivers and related workers" 
 742 "Motor- and animal-drawn vehicles drivers" 
 743 "Motorised farm and forestry plant operators" 
 744 "Mobile-plant operators (excl. agricultural)" 
 745 "Ships� deck crews and related workers" 
 810 "Messengers, doorkeepers and related" 
 811 "Unskilled office clerks" 
 812 "Communication and storage unskilled workers, freight handlers" 
 820 "Restaurants and hotels unskilled workers, street vendors" 
 821 "Streer vendors" 
 822 "Touristic services unskilled workers " 
 831 "Janitors and related workers" 
 832 "Porters and related workers" 
 840 "Personal services unskilled workers" 
 841 "Entertainment and cultural services unskilled workers " 
 842 "Unskilled cleaners and launderers" 
 843 "Domestic, personal and institution-based services helpers" 
 844 "Security services unskilled workers" 
 850 "Agriculture unskilled workers" 
 851 "Unskilled agricultural labourers" 
 852 "Unskilled fishery, forestry, animal breeding and hunting labourers" 
 860 "Mining, extraction and building unskilled workers" 
 861 "Unskilled labourers in mining" 
 862 "Unskilled labourers in construction and related trades" 
 863 "Unskilled labourers in industrial manufacturing and related trades" 
 900 "Armed forces" 
 991 "Family helpers in medium and large firms" 
 992 "Family helpers in small firms"   ; 



#delimit cr
 



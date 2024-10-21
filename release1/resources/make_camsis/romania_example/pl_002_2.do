/* Important: you need to put the .dat and .do files in one folder/
   directory and then set the working folder to that folder. */

set more off

clear
infix ///
 int     sample                               1-4 ///
 double  serial                               5-14 ///
 byte    ncoupls                             15 ///
 int     pernum                              16-18 ///
 float  wtper                               19-26 ///
 int     sploc                               27-29 ///
 byte    sprule                              30-31 ///
 int     relate                              32 ///
 int     related                             32-35 ///
 byte    erelate                             36-37 ///
 int     age                                 38-40 ///
 byte    sex                                 41 ///
 int     marst                               42 ///
 int     marstd                              42-44 ///
 byte    emarst                              45 ///
 byte    consens                             46 ///
 byte    ethnro                              47-48 ///
 int     relig                               49 ///
 int     religd                              49-52 ///
 int     edattan                             53 ///
 int     edattand                            53-55 ///
 int     educro                              56-58 ///
 byte    eedatta                             59-60 ///
 int     empstat                             61 ///
 int     empstatd                            61-63 ///
 int     eempsta                             64-66 ///
 int     occ                                 67-70 ///
 int     classwk                             71 ///
 int     classwkd                            71-73 ///
 byte    eclaswk                             74 ///
 byte    empsect                             75-76 ///
 byte    hrswrk2                             77 ///
 byte    sex_sp                              78 ///
 int     empstat_sp                          79 ///
 int     empstat_spd                         79-81 ///
 int     eempsta_sp                          82-84 ///
 int     occ_sp                              85-88 ///
 using "$path1\romania_002.dat"

replace wtper=wtper/10000

label var sample `"IPUMS sample identifier"'
label var serial `"Serial number"'
label var ncoupls `"Number of married couples in household"'
label var pernum `"Person number"'
label var wtper `"Person weight"'
label var sploc `"Spouse's location in household"'
label var sprule `"Rule for linking spouse"'
label var relate `"Relationship to household head [general version]"'
label var related `"Relationship to household head [detailed version]"'
label var erelate `"Relationship to head, Europe"'
label var age `"Age"'
label var sex `"Sex"'
label var marst `"Marital status [general version]"'
label var marstd `"Marital status [detailed version]"'
label var emarst `"Marital status, Europe"'
label var consens `"Consensual union"'
label var ethnro `"Ethnicity, Romania"'
label var relig `"Religion [general version]"'
label var religd `"Religion [detailed version]"'
label var edattan `"Educational attainment, international recode [general version]"'
label var edattand `"Educational attainment, international recode [detailed version]"'
label var educro `"Educational attainment, Romania"'
label var eedatta `"Educational attainment, Europe"'
label var empstat `"Employment status [general version]"'
label var empstatd `"Employment status [detailed version]"'
label var eempsta `"Employment status, Europe"'
label var occ `"Occupation, unrecoded"'
label var classwk `"Class of worker [general version]"'
label var classwkd `"Class of worker [detailed version]"'
label var eclaswk `"Class of worker, Europe"'
label var empsect `"Sector of employment"'
label var hrswrk2 `"Hours worked per week, categorized"'
label var sex_sp `"Sex"'
label var empstat_sp `"Employment status [of spouse; general version]"'
label var empstat_spd `"Employment status [of spouse; detailed version]"'
label var eempsta_sp `"Employment status, Europe"'
label var occ_sp `"Occupation, unrecoded"'

label define samplelbl 0321 `"Argentina 1970"'
label define samplelbl 0322 `"Argentina 1980"', add
label define samplelbl 0323 `"Argentina 1991"', add
label define samplelbl 0324 `"Argentina 2001"', add
label define samplelbl 0401 `"Austria 1971"', add
label define samplelbl 0402 `"Austria 1981"', add
label define samplelbl 0403 `"Austria 1991"', add
label define samplelbl 0404 `"Austria 2001"', add
label define samplelbl 0761 `"Brazil 1960"', add
label define samplelbl 0762 `"Brazil 1970"', add
label define samplelbl 0763 `"Brazil 1980"', add
label define samplelbl 0764 `"Brazil 1991"', add
label define samplelbl 0765 `"Brazil 2000"', add
label define samplelbl 1121 `"Belarus 1999"', add
label define samplelbl 1161 `"Cambodia 1998"', add
label define samplelbl 1241 `"Canada 1971"', add
label define samplelbl 1242 `"Canada 1981"', add
label define samplelbl 1243 `"Canada 1991"', add
label define samplelbl 1244 `"Canada 2001"', add
label define samplelbl 1521 `"Chile 1960"', add
label define samplelbl 1522 `"Chile 1970"', add
label define samplelbl 1523 `"Chile 1982"', add
label define samplelbl 1524 `"Chile 1992"', add
label define samplelbl 1525 `"Chile 2002"', add
label define samplelbl 1561 `"China 1982"', add
label define samplelbl 1562 `"China 1990"', add
label define samplelbl 1701 `"Colombia 1964"', add
label define samplelbl 1702 `"Colombia 1973"', add
label define samplelbl 1703 `"Colombia 1985"', add
label define samplelbl 1704 `"Colombia 1993"', add
label define samplelbl 1705 `"Colombia 2005"', add
label define samplelbl 1881 `"Costa Rica 1963"', add
label define samplelbl 1882 `"Costa Rica 1973"', add
label define samplelbl 1883 `"Costa Rica 1984"', add
label define samplelbl 1884 `"Costa Rica 2000"', add
label define samplelbl 2181 `"Ecuador 1962"', add
label define samplelbl 2182 `"Ecuador 1974"', add
label define samplelbl 2183 `"Ecuador 1982"', add
label define samplelbl 2184 `"Ecuador 1990"', add
label define samplelbl 2185 `"Ecuador 2001"', add
label define samplelbl 2501 `"France 1962"', add
label define samplelbl 2502 `"France 1968"', add
label define samplelbl 2503 `"France 1975"', add
label define samplelbl 2504 `"France 1982"', add
label define samplelbl 2505 `"France 1990"', add
label define samplelbl 2881 `"Ghana 2000"', add
label define samplelbl 3001 `"Greece 1971"', add
label define samplelbl 3002 `"Greece 1981"', add
label define samplelbl 3003 `"Greece 1991"', add
label define samplelbl 3004 `"Greece 2001"', add
label define samplelbl 3481 `"Hungary 1970"', add
label define samplelbl 3482 `"Hungary 1980"', add
label define samplelbl 3483 `"Hungary 1990"', add
label define samplelbl 3484 `"Hungary 2001"', add
label define samplelbl 3681 `"Iraq 1997"', add
label define samplelbl 3761 `"Israel 1972"', add
label define samplelbl 3762 `"Israel 1983"', add
label define samplelbl 3763 `"Israel 1995"', add
label define samplelbl 4041 `"Kenya 1989"', add
label define samplelbl 4042 `"Kenya 1999"', add
label define samplelbl 4581 `"Malaysia 1970"', add
label define samplelbl 4582 `"Malaysia 1980"', add
label define samplelbl 4583 `"Malaysia 1991"', add
label define samplelbl 4584 `"Malaysia 2000"', add
label define samplelbl 4841 `"Mexico 1960"', add
label define samplelbl 4842 `"Mexico 1970"', add
label define samplelbl 4843 `"Mexico 1990"', add
label define samplelbl 4844 `"Mexico 1995"', add
label define samplelbl 4845 `"Mexico 2000"', add
label define samplelbl 4846 `"Mexico 2005"', add
label define samplelbl 5281 `"Netherlands 1960"', add
label define samplelbl 5282 `"Netherlands 1971"', add
label define samplelbl 5283 `"Netherlands 2001"', add
label define samplelbl 5911 `"Panama 1960"', add
label define samplelbl 5912 `"Panama 1970"', add
label define samplelbl 5913 `"Panama 1980"', add
label define samplelbl 5914 `"Panama 1990"', add
label define samplelbl 5915 `"Panama 2000"', add
label define samplelbl 6021 `"Palestine 1997"', add
label define samplelbl 6081 `"Philippines 1990"', add
label define samplelbl 6082 `"Philippines 1995"', add
label define samplelbl 6083 `"Philippines 2000"', add
label define samplelbl 6201 `"Portugal 1981"', add
label define samplelbl 6202 `"Portugal 1991"', add
label define samplelbl 6203 `"Portugal 2001"', add
label define samplelbl 6421 `"Romania 1992"', add
label define samplelbl 6422 `"Romania 2002"', add
label define samplelbl 6461 `"Rwanda 1991"', add
label define samplelbl 6462 `"Rwanda 2002"', add
label define samplelbl 7041 `"Vietnam 1989"', add
label define samplelbl 7042 `"Vietnam 1999"', add
label define samplelbl 7101 `"South Africa 1996"', add
label define samplelbl 7102 `"South Africa 2001"', add
label define samplelbl 7241 `"Spain 1981"', add
label define samplelbl 7242 `"Spain 1991"', add
label define samplelbl 7243 `"Spain 2001"', add
label define samplelbl 8001 `"Uganda 1991"', add
label define samplelbl 8002 `"Uganda 2002"', add
label define samplelbl 8181 `"Egypt 1996"', add
label define samplelbl 8261 `"United Kingdom 1991"', add
label define samplelbl 8262 `"United Kingdom 2001"', add
label define samplelbl 8401 `"United States 1960"', add
label define samplelbl 8402 `"United States 1970"', add
label define samplelbl 8403 `"United States 1980"', add
label define samplelbl 8404 `"United States 1990"', add
label define samplelbl 8405 `"United States 2000"', add
label define samplelbl 8406 `"United States 2005"', add
label define samplelbl 8621 `"Venezuela 1971"', add
label define samplelbl 8622 `"Venezuela 1981"', add
label define samplelbl 8623 `"Venezuela 1990"', add
label define samplelbl 8624 `"Venezuela 2001"', add
label values sample samplelbl

label values serial seriallbl

label define ncouplslbl 0 `"No married couples in household"'
label define ncouplslbl 1 `"1 couple"', add
label define ncouplslbl 2 `"2 couples"', add
label define ncouplslbl 3 `"3 couples"', add
label define ncouplslbl 4 `"4 couples"', add
label define ncouplslbl 5 `"5 couples"', add
label define ncouplslbl 6 `"6 couples"', add
label define ncouplslbl 7 `"7 couples"', add
label define ncouplslbl 8 `"8 couples"', add
label define ncouplslbl 9 `"9 or more couples"', add
label values ncoupls ncouplslbl

label values pernum pernumlbl

label values wtper wtperlbl

label define sploclbl 000 `"No spouse of this person present in household"'
label values sploc sploclbl

label define sprulelbl 00 `"No spouse present"'
label define sprulelbl 01 `"Rule 1: strong relationship pairing, couple adjacent"', add
label define sprulelbl 02 `"Rule 2: strong relationship pairing, couple not adjacent"', add
label define sprulelbl 03 `"Rule 3: weak relationship pairing, couple adjacent"', add
label define sprulelbl 04 `"Rule 4: weak relationship pairing, couple not adjacent"', add
label define sprulelbl 05 `"Rule 5: weak consensual union pairings"', add
label define sprulelbl 06 `"Rule 6: sample-specific rules (usually child-to-child)"', add
label values sprule sprulelbl

label define relatelbl 1 `"Head"'
label define relatelbl 2 `"Spouse/partner"', add
label define relatelbl 3 `"Child"', add
label define relatelbl 4 `"Other relative"', add
label define relatelbl 5 `"Non-relative"', add
label define relatelbl 6 `"Other relative or non-relative"', add
label define relatelbl 9 `"Unknown"', add
label values relate relatelbl

label define relatedlbl 1000 `"Head"'
label define relatedlbl 2000 `"Spouse/partner"', add
label define relatedlbl 2100 `"Spouse"', add
label define relatedlbl 2200 `"Unmarried partner"', add
label define relatedlbl 3000 `"Child"', add
label define relatedlbl 3100 `"Biological child"', add
label define relatedlbl 3200 `"Adopted child"', add
label define relatedlbl 3300 `"Stepchild"', add
label define relatedlbl 3400 `"Child/child-in-law"', add
label define relatedlbl 3500 `"Child/child-in-law/grandchild"', add
label define relatedlbl 3600 `"Child of unmarried partner"', add
label define relatedlbl 4000 `"Other relative"', add
label define relatedlbl 4100 `"Grandchild"', add
label define relatedlbl 4110 `"Grandchild or great grandchild"', add
label define relatedlbl 4120 `"Great grandchild"', add
label define relatedlbl 4130 `"Great-great grandchild"', add
label define relatedlbl 4200 `"Parent/parent-in-law"', add
label define relatedlbl 4210 `"Parent"', add
label define relatedlbl 4211 `"Stepparent"', add
label define relatedlbl 4220 `"Parent-in-law"', add
label define relatedlbl 4300 `"Child-in-law"', add
label define relatedlbl 4310 `"Unmarried partner of child"', add
label define relatedlbl 4400 `"Sibling/sibling-in-law"', add
label define relatedlbl 4410 `"Sibling"', add
label define relatedlbl 4420 `"Stepsibling"', add
label define relatedlbl 4430 `"Sibling-in-law"', add
label define relatedlbl 4431 `"Sibling of spouse/partner"', add
label define relatedlbl 4432 `"Spouse/partner of sibling"', add
label define relatedlbl 4500 `"Grandparent"', add
label define relatedlbl 4510 `"Great grandparent"', add
label define relatedlbl 4600 `"Parent/grandparent"', add
label define relatedlbl 4700 `"Aunt/uncle"', add
label define relatedlbl 4800 `"Other specified relative"', add
label define relatedlbl 4810 `"Nephew/niece"', add
label define relatedlbl 4820 `"Cousin"', add
label define relatedlbl 4830 `"Sibling of sibling-in-law"', add
label define relatedlbl 4840 `"Parent of child-in-law"', add
label define relatedlbl 4850 `"Godparent related to head"', add
label define relatedlbl 4900 `"Other relative, not specified"', add
label define relatedlbl 4910 `"Other relative, n.e.c."', add
label define relatedlbl 4911 `"Other relative with same family name"', add
label define relatedlbl 4912 `"Other relative with different family name"', add
label define relatedlbl 4920 `"Other relative, not specified (secondary family)"', add
label define relatedlbl 5000 `"Non-relative"', add
label define relatedlbl 5100 `"Friend/guest/visitor/partner"', add
label define relatedlbl 5110 `"Partner/friend"', add
label define relatedlbl 5111 `"Friend"', add
label define relatedlbl 5112 `"Partner/roommate"', add
label define relatedlbl 5113 `"Housemate/roommate"', add
label define relatedlbl 5120 `"Visitor"', add
label define relatedlbl 5130 `"Ex-spouse"', add
label define relatedlbl 5140 `"Godparent"', add
label define relatedlbl 5150 `"Godchild"', add
label define relatedlbl 5200 `"Employee"', add
label define relatedlbl 5210 `"Domestic employee"', add
label define relatedlbl 5220 `"Relative of employee, n.s."', add
label define relatedlbl 5221 `"Spouse of servant"', add
label define relatedlbl 5222 `"Child of servant"', add
label define relatedlbl 5223 `"Other relative of servant"', add
label define relatedlbl 5300 `"Roomer/boarder/lodger/foster child"', add
label define relatedlbl 5310 `"Boarder"', add
label define relatedlbl 5311 `"Boarder or guest"', add
label define relatedlbl 5320 `"Lodger"', add
label define relatedlbl 5330 `"Foster child"', add
label define relatedlbl 5340 `"Tutored/foster child"', add
label define relatedlbl 5350 `"Tutored child"', add
label define relatedlbl 5400 `"Employee, boarder or guest"', add
label define relatedlbl 5500 `"Other specified non-relative"', add
label define relatedlbl 5510 `"Agregado"', add
label define relatedlbl 5520 `"Temporary resident, guest"', add
label define relatedlbl 5600 `"Group quarters"', add
label define relatedlbl 5610 `"Group quarters, non-inmates"', add
label define relatedlbl 5620 `"Institutional inmates"', add
label define relatedlbl 5900 `"Non-relative, n.e.c."', add
label define relatedlbl 6000 `"Other relative or non-relative"', add
label define relatedlbl 9999 `"Unknown"', add
label values related relatedlbl

label define erelatelbl 10 `"Reference person / Head"'
label define erelatelbl 20 `"Spouse or partner"', add
label define erelatelbl 21 `"Husband or wife"', add
label define erelatelbl 22 `"Partner in consensual union"', add
label define erelatelbl 30 `"Child/child-in-law of head or of spouse/partner"', add
label define erelatelbl 31 `"Spouse or partner of child of head"', add
label define erelatelbl 40 `"Parent of head, of spouse, or of partner"', add
label define erelatelbl 50 `"Other relative of head, spouse, or partner"', add
label define erelatelbl 60 `"Non-relative of head"', add
label define erelatelbl 61 `"Foster child"', add
label define erelatelbl 62 `"Boarder"', add
label define erelatelbl 63 `"Domestic servant"', add
label define erelatelbl 64 `"Other"', add
label define erelatelbl 99 `"Not stated / unknown"', add
label values erelate erelatelbl

label define agelbl 000 `"Less than 1 year"'
label define agelbl 001 `"1 year"', add
label define agelbl 002 `"2 years"', add
label define agelbl 003 `"3"', add
label define agelbl 004 `"4"', add
label define agelbl 005 `"5"', add
label define agelbl 006 `"6"', add
label define agelbl 007 `"7"', add
label define agelbl 008 `"8"', add
label define agelbl 009 `"9"', add
label define agelbl 010 `"10"', add
label define agelbl 011 `"11"', add
label define agelbl 012 `"12"', add
label define agelbl 013 `"13"', add
label define agelbl 014 `"14"', add
label define agelbl 015 `"15"', add
label define agelbl 016 `"16"', add
label define agelbl 017 `"17"', add
label define agelbl 018 `"18"', add
label define agelbl 019 `"19"', add
label define agelbl 020 `"20"', add
label define agelbl 021 `"21"', add
label define agelbl 022 `"22"', add
label define agelbl 023 `"23"', add
label define agelbl 024 `"24"', add
label define agelbl 025 `"25"', add
label define agelbl 026 `"26"', add
label define agelbl 027 `"27"', add
label define agelbl 028 `"28"', add
label define agelbl 029 `"29"', add
label define agelbl 030 `"30"', add
label define agelbl 031 `"31"', add
label define agelbl 032 `"32"', add
label define agelbl 033 `"33"', add
label define agelbl 034 `"34"', add
label define agelbl 035 `"35"', add
label define agelbl 036 `"36"', add
label define agelbl 037 `"37"', add
label define agelbl 038 `"38"', add
label define agelbl 039 `"39"', add
label define agelbl 040 `"40"', add
label define agelbl 041 `"41"', add
label define agelbl 042 `"42"', add
label define agelbl 043 `"43"', add
label define agelbl 044 `"44"', add
label define agelbl 045 `"45"', add
label define agelbl 046 `"46"', add
label define agelbl 047 `"47"', add
label define agelbl 048 `"48"', add
label define agelbl 049 `"49"', add
label define agelbl 050 `"50"', add
label define agelbl 051 `"51"', add
label define agelbl 052 `"52"', add
label define agelbl 053 `"53"', add
label define agelbl 054 `"54"', add
label define agelbl 055 `"55"', add
label define agelbl 056 `"56"', add
label define agelbl 057 `"57"', add
label define agelbl 058 `"58"', add
label define agelbl 059 `"59"', add
label define agelbl 060 `"60"', add
label define agelbl 061 `"61"', add
label define agelbl 062 `"62"', add
label define agelbl 063 `"63"', add
label define agelbl 064 `"64"', add
label define agelbl 065 `"65"', add
label define agelbl 066 `"66"', add
label define agelbl 067 `"67"', add
label define agelbl 068 `"68"', add
label define agelbl 069 `"69"', add
label define agelbl 070 `"70"', add
label define agelbl 071 `"71"', add
label define agelbl 072 `"72"', add
label define agelbl 073 `"73"', add
label define agelbl 074 `"74"', add
label define agelbl 075 `"75"', add
label define agelbl 076 `"76"', add
label define agelbl 077 `"77"', add
label define agelbl 078 `"78"', add
label define agelbl 079 `"79"', add
label define agelbl 080 `"80"', add
label define agelbl 081 `"81"', add
label define agelbl 082 `"82"', add
label define agelbl 083 `"83"', add
label define agelbl 084 `"84"', add
label define agelbl 085 `"85"', add
label define agelbl 086 `"86"', add
label define agelbl 087 `"87"', add
label define agelbl 088 `"88"', add
label define agelbl 089 `"89"', add
label define agelbl 090 `"90"', add
label define agelbl 091 `"91"', add
label define agelbl 092 `"92"', add
label define agelbl 093 `"93"', add
label define agelbl 094 `"94"', add
label define agelbl 095 `"95"', add
label define agelbl 096 `"96"', add
label define agelbl 097 `"97"', add
label define agelbl 098 `"98"', add
label define agelbl 099 `"99"', add
label define agelbl 100 `"100+"', add
label define agelbl 999 `"Not reported/missing"', add
label values age agelbl

label define sexlbl 1 `"Male"'
label define sexlbl 2 `"Female"', add
label define sexlbl 9 `"Unknown"', add
label values sex sexlbl

label define marstlbl 0 `"NIU (not in universe)"'
label define marstlbl 1 `"Single/never married"', add
label define marstlbl 2 `"Married/in union"', add
label define marstlbl 3 `"Separated/divorced/spouse absent"', add
label define marstlbl 4 `"Widowed"', add
label define marstlbl 9 `"Unknown/missing"', add
label values marst marstlbl

label define marstdlbl 000 `"NIU (not in universe)"'
label define marstdlbl 100 `"Single/never married"', add
label define marstdlbl 110 `"Engaged"', add
label define marstdlbl 200 `"Married/in union"', add
label define marstdlbl 210 `"Married (type not specified)"', add
label define marstdlbl 211 `"Married, civil"', add
label define marstdlbl 212 `"Married, religious"', add
label define marstdlbl 213 `"Married, civil and religious"', add
label define marstdlbl 214 `"Married, civil or religious"', add
label define marstdlbl 215 `"Married, traditional/customary"', add
label define marstdlbl 216 `"Married, monogamous"', add
label define marstdlbl 217 `"Married, polygamous"', add
label define marstdlbl 220 `"Consensual union"', add
label define marstdlbl 300 `"Separated/divorced/spouse absent"', add
label define marstdlbl 310 `"Separated or divorced"', add
label define marstdlbl 320 `"Separated or annulled"', add
label define marstdlbl 330 `"Separated"', add
label define marstdlbl 331 `"Separated legally"', add
label define marstdlbl 332 `"Separated de facto"', add
label define marstdlbl 333 `"Separated from marriage"', add
label define marstdlbl 334 `"Separated from consensual union"', add
label define marstdlbl 340 `"Annulled"', add
label define marstdlbl 350 `"Divorced"', add
label define marstdlbl 360 `"Married, spouse absent"', add
label define marstdlbl 400 `"Widowed"', add
label define marstdlbl 410 `"Widowed or divorced"', add
label define marstdlbl 999 `"Unknown/missing"', add
label values marstd marstdlbl

label define emarstlbl 0 `"NIU (not in universe)"'
label define emarstlbl 1 `"Never married"', add
label define emarstlbl 2 `"Married"', add
label define emarstlbl 3 `"Widowed and not remarried"', add
label define emarstlbl 4 `"Divorced and not remarried"', add
label define emarstlbl 5 `"Widowed or divorced"', add
label define emarstlbl 9 `"Unknown / missing"', add
label values emarst emarstlbl

label define consenslbl 1 `"Yes, in consensual union"'
label define consenslbl 2 `"No, married"', add
label define consenslbl 8 `"Unknown"', add
label define consenslbl 9 `"NIU (not in universe)"', add
label values consens consenslbl

label define ethnrolbl 10 `"Romanian"'
label define ethnrolbl 11 `"Hungarian"', add
label define ethnrolbl 12 `"Gypsy"', add
label define ethnrolbl 13 `"German"', add
label define ethnrolbl 14 `"Ukrainian"', add
label define ethnrolbl 15 `"Serbian"', add
label define ethnrolbl 16 `"Turk"', add
label define ethnrolbl 17 `"Tartar"', add
label define ethnrolbl 18 `"Slovakian"', add
label define ethnrolbl 19 `"Jewish"', add
label define ethnrolbl 20 `"Russian"', add
label define ethnrolbl 21 `"Lipovan"', add
label define ethnrolbl 22 `"Bulgarian"', add
label define ethnrolbl 23 `"Czech"', add
label define ethnrolbl 24 `"Croat"', add
label define ethnrolbl 25 `"Greek"', add
label define ethnrolbl 26 `"Pole"', add
label define ethnrolbl 27 `"Armenian"', add
label define ethnrolbl 29 `"Saxon"', add
label define ethnrolbl 30 `"Swabian"', add
label define ethnrolbl 31 `"Macedoromanian"', add
label define ethnrolbl 32 `"Aromanian"', add
label define ethnrolbl 33 `"Szekler"', add
label define ethnrolbl 35 `"Carasoveni"', add
label define ethnrolbl 36 `"Italian"', add
label define ethnrolbl 37 `"Chinese"', add
label define ethnrolbl 38 `"Albanian"', add
label define ethnrolbl 40 `"Macedonian"', add
label define ethnrolbl 41 `"Csango"', add
label define ethnrolbl 42 `"Rudari"', add
label define ethnrolbl 43 `"Moldovan"', add
label define ethnrolbl 50 `"Other ethnic group from European Union"', add
label define ethnrolbl 60 `"Other ethnic group from Europe"', add
label define ethnrolbl 70 `"Other ethnic group from other continents"', add
label define ethnrolbl 98 `"Response suppressed"', add
label define ethnrolbl 99 `"Unknown"', add
label values ethnro ethnrolbl

label define religlbl 0 `"NIU (not in universe)"'
label define religlbl 1 `"No religion"', add
label define religlbl 2 `"Buddhist"', add
label define religlbl 3 `"Hindu"', add
label define religlbl 4 `"Jewish"', add
label define religlbl 5 `"Muslim"', add
label define religlbl 6 `"Christian"', add
label define religlbl 7 `"Other"', add
label define religlbl 9 `"Unknown"', add
label values relig religlbl

label define religdlbl 0000 `"NIU (not in universe)"'
label define religdlbl 1000 `"No religion"', add
label define religdlbl 1001 `"Atheist"', add
label define religdlbl 1002 `"Without religion"', add
label define religdlbl 2000 `"Buddhist"', add
label define religdlbl 3000 `"Hindu"', add
label define religdlbl 4000 `"Jewish"', add
label define religdlbl 5000 `"Muslim"', add
label define religdlbl 6000 `"Christian"', add
label define religdlbl 6001 `"Catholic (Roman or unspecified)"', add
label define religdlbl 6002 `"Orthodox"', add
label define religdlbl 6003 `"Protestant"', add
label define religdlbl 6004 `"Evangelical protestant"', add
label define religdlbl 6005 `"Pentacostal"', add
label define religdlbl 6006 `"Adventist / Seventh-day adventist"', add
label define religdlbl 6007 `"Anglican"', add
label define religdlbl 6008 `"Assembly of God"', add
label define religdlbl 6009 `"Baptist"', add
label define religdlbl 6010 `"Church of the Nazarene"', add
label define religdlbl 6011 `"Congregational"', add
label define religdlbl 6012 `"Dutch Reformed"', add
label define religdlbl 6013 `"Episcopalian"', add
label define religdlbl 6014 `"Jehovah's Witnesses"', add
label define religdlbl 6015 `"Latter Day Saints (Mormon)"', add
label define religdlbl 6016 `"Lutheran"', add
label define religdlbl 6017 `"Mennonite"', add
label define religdlbl 6018 `"Methodist"', add
label define religdlbl 6019 `"Presbyterian"', add
label define religdlbl 6020 `"Zion Christian"', add
label define religdlbl 6100 `"Other Christian, Austria"', add
label define religdlbl 6101 `"Old Catholic"', add
label define religdlbl 6102 `"Protestant, Augsburg confession"', add
label define religdlbl 6103 `"Protestant, Westminster confession"', add
label define religdlbl 6104 `"Protestant, Helvetic confession"', add
label define religdlbl 6105 `"Greek Oriental"', add
label define religdlbl 6106 `"Armenian Apostolic"', add
label define religdlbl 6107 `"Other protestant"', add
label define religdlbl 6108 `"Christian Community for renewal"', add
label define religdlbl 6109 `"New Apostolic"', add
label define religdlbl 6110 `"Christian Community, not specified"', add
label define religdlbl 6111 `"Other Christian, Brazil"', add
label define religdlbl 6112 `"Christian Congregation of Brazil"', add
label define religdlbl 6113 `"Brazilian Catholic Apostolic"', add
label define religdlbl 6114 `"Brazil for Christ"', add
label define religdlbl 6115 `"Foursquare Gospel"', add
label define religdlbl 6116 `"Universal of the Kingdom of GOd"', add
label define religdlbl 6117 `"House of the Blessing"', add
label define religdlbl 6118 `"House of Prayer"', add
label define religdlbl 6119 `"God is Love"', add
label define religdlbl 6120 `"Maranata"', add
label define religdlbl 6121 `"Other Christian, Brazil 1991"', add
label define religdlbl 6122 `"Undetermined Protestant"', add
label define religdlbl 6123 `"""', add
label define religdlbl 6124 `"""', add
label define religdlbl 6125 `"Other traditional Protestant"', add
label define religdlbl 6126 `"Neo-Christian"', add
label define religdlbl 6127 `"Other Neo-Christian"', add
label define religdlbl 6128 `"Undetermined Christian"', add
label define religdlbl 6129 `"Other Christian, Brazil 2000"', add
label define religdlbl 6130 `"Other Catholic"', add
label define religdlbl 6131 `"Renewed Evangelical Protestant without institutional ties"', add
label define religdlbl 6132 `"Pentecostal Evangelical without institutional ties"', add
label define religdlbl 6133 `"New Life Evangelical Protestant Pentecostal"', add
label define religdlbl 6134 `"Evangelical Protestant Biblical Revival Pentecostal"', add
label define religdlbl 6135 `"Chain Of Prayer Pentecostal"', add
label define religdlbl 6136 `"Undetermined Evangelical Protestant"', add
label define religdlbl 6137 `"Religion Of God"', add
label define religdlbl 6138 `"Christian without institutional ties"', add
label define religdlbl 6139 `"Other Christian, Canada"', add
label define religdlbl 6140 `"Other Catholic"', add
label define religdlbl 6141 `"United Church"', add
label define religdlbl 6142 `"Protestant, not specified"', add
label define religdlbl 6143 `"Other Protestant"', add
label define religdlbl 6144 `"Other Christian, Ghana"', add
label define religdlbl 6145 `"Other Christian, Mexico 2000"', add
label define religdlbl 6146 `"Anabaptist"', add
label define religdlbl 6147 `"Calvinist"', add
label define religdlbl 6148 `"Cuaquera"', add
label define religdlbl 6149 `"Disciples of Christ"', add
label define religdlbl 6150 `"Christian Friendship Church"', add
label define religdlbl 6151 `"Prayer House Church"', add
label define religdlbl 6152 `"Faith Center"', add
label define religdlbl 6153 `"Agape Force Church"', add
label define religdlbl 6154 `"Alpha and Omega Church"', add
label define religdlbl 6155 `"Living Water Church"', add
label define religdlbl 6156 `"Apostolic Church"', add
label define religdlbl 6157 `"Church of God"', add
label define religdlbl 6158 `"Church of God of Prophecy"', add
label define religdlbl 6159 `"Complete Gospel Church"', add
label define religdlbl 6160 `"Evangelical Siblings Church"', add
label define religdlbl 6161 `"Upper Room Church"', add
label define religdlbl 6162 `"Pentacostal Indigenous Church"', add
label define religdlbl 6163 `"Angular Stone Voice Church"', add
label define religdlbl 6164 `"Pentacostal Missionary"', add
label define religdlbl 6165 `"Christian"', add
label define religdlbl 6166 `"Christian Societies"', add
label define religdlbl 6167 `"Evangelical"', add
label define religdlbl 6168 `"Evangelical Societies"', add
label define religdlbl 6169 `"New Testament Evangelical"', add
label define religdlbl 6170 `"Pentecostal"', add
label define religdlbl 6171 `"Pentecostal Societies"', add
label define religdlbl 6172 `"Independent Pentecostal"', add
label define religdlbl 6173 `"Evangelical Christian Societies"', add
label define religdlbl 6174 `"Pentecostal Christian Societies"', add
label define religdlbl 6175 `"Evangelical Pentecostal Societies"', add
label define religdlbl 6176 `"Evangelical Pentecostal Christian Societies"', add
label define religdlbl 6177 `"Soldiers of Christ's Cross Church"', add
label define religdlbl 6178 `"Tabernacle"', add
label define religdlbl 6179 `"Traditionalists"', add
label define religdlbl 6180 `"Other Evangelical Pentecostal Societies"', add
label define religdlbl 6181 `"Pentecostal not clearly specified"', add
label define religdlbl 6182 `"Living God, Light of the World"', add
label define religdlbl 6183 `"Christian and Missionary Alliance"', add
label define religdlbl 6184 `"Non-Pentecostal Apostolic"', add
label define religdlbl 6185 `"Evangelical Associations"', add
label define religdlbl 6186 `"Biblical"', add
label define religdlbl 6187 `"Confraternities"', add
label define religdlbl 6188 `"Christ Church"', add
label define religdlbl 6189 `"Peace Grace and Misericordia Church"', add
label define religdlbl 6190 `"Open Bible Church"', add
label define religdlbl 6191 `"Holiness Church"', add
label define religdlbl 6192 `"Evangelical Salem Church"', add
label define religdlbl 6193 `"Beautiful Woman Dressed in the Sun"', add
label define religdlbl 6194 `"Messianic Church"', add
label define religdlbl 6195 `"Evangelical Ministers"', add
label define religdlbl 6196 `"Evangelical Missionaries"', add
label define religdlbl 6197 `"Evangelical Movements"', add
label define religdlbl 6198 `"New Jerusalem"', add
label define religdlbl 6199 `"World Vision Church"', add
label define religdlbl 6200 `"Evangelical not clearly specified"', add
label define religdlbl 6201 `"Biblical - non-evangelicals"', add
label define religdlbl 6202 `"Other Christians not clearly specified"', add
label define religdlbl 6203 `"Other Christian, Netherlands"', add
label define religdlbl 6204 `"Reformed Churches in The Netherlands"', add
label define religdlbl 6205 `"Other Reformed"', add
label define religdlbl 6206 `"Other Christian, Philippines"', add
label define religdlbl 6207 `"Aglipay"', add
label define religdlbl 6208 `"Bible Christian Committees"', add
label define religdlbl 6209 `"Born-again Christian"', add
label define religdlbl 6210 `"Bread of Life Ministries"', add
label define religdlbl 6211 `"Charismatic Full Gospel Ministries"', add
label define religdlbl 6212 `"Christ the Living Stone Fellowship"', add
label define religdlbl 6213 `"Christian and Missionary Alliance"', add
label define religdlbl 6214 `"Christians Missions"', add
label define religdlbl 6215 `"Church of Christ"', add
label define religdlbl 6216 `"Evangelical Christian Outreach Foundation"', add
label define religdlbl 6217 `"Evangelical Free Church"', add
label define religdlbl 6218 `"Filipino Assemblies of the First Born Inc."', add
label define religdlbl 6219 `"Foursquare Gospel"', add
label define religdlbl 6220 `"Free Believers in Christ Fellowship"', add
label define religdlbl 6221 `"Free Mission in the Philippines Inc."', add
label define religdlbl 6222 `"God World Mission"', add
label define religdlbl 6223 `"Good News Christian Churches"', add
label define religdlbl 6224 `"IEMELIF Reform Movement"', add
label define religdlbl 6225 `"Iglesia Evangelista Methodista en Las"', add
label define religdlbl 6226 `"Iglesia ni Cristo"', add
label define religdlbl 6227 `"Jesus Christ Saves Global Outreach"', add
label define religdlbl 6228 `"Jesus is Lord Church"', add
label define religdlbl 6229 `"Jesus Reigns Ministries"', add
label define religdlbl 6230 `"Love of Christ International Ministries"', add
label define religdlbl 6231 `"Other evangelical"', add
label define religdlbl 6232 `"Other Evangelical Church"', add
label define religdlbl 6233 `"Philippine Evangelical Mission"', add
label define religdlbl 6234 `"Philippine Grace Gospel Fellowship"', add
label define religdlbl 6235 `"Philippines Benevolent Missionaries"', add
label define religdlbl 6236 `"Potter's House Christian Center"', add
label define religdlbl 6237 `"Salvation Army Philippines"', add
label define religdlbl 6238 `"Take the Nation for Jesus Global Ministries (Corpus Christi)"', add
label define religdlbl 6239 `"UNIDA Evangelical Church"', add
label define religdlbl 6240 `"United Church of Christ in the Philippines"', add
label define religdlbl 6241 `"United Evangelical Church of the Philippines (Chinese)"', add
label define religdlbl 6242 `"Victory Chapel Christian Fellowship"', add
label define religdlbl 6243 `"Wesleyan Church"', add
label define religdlbl 6244 `"World Missionary Evangelism"', add
label define religdlbl 6245 `"Worldwide Church of God"', add
label define religdlbl 6246 `"Zion Christian Community Church"', add
label define religdlbl 6247 `"Other Christian, Portugal"', add
label define religdlbl 6248 `"Other Christian, Romania"', add
label define religdlbl 6249 `"Greek Catholic"', add
label define religdlbl 6250 `"Reformed Church"', add
label define religdlbl 6251 `"Evangelic of Augustan Confession"', add
label define religdlbl 6252 `"Evangelic Synodo-Presbyterian"', add
label define religdlbl 6253 `"Christian of Old Rite"', add
label define religdlbl 6254 `"Christian by Gospel"', add
label define religdlbl 6255 `"Evangelic"', add
label define religdlbl 6256 `"Other Christian, Rwanda 2002"', add
label define religdlbl 6257 `"Other Christian, South Africa"', add
label define religdlbl 6258 `"Reformed"', add
label define religdlbl 6259 `"International Fellowship of Christian Churches"', add
label define religdlbl 6260 `"Apostolic Faith Mission of SA"', add
label define religdlbl 6261 `"Other Apostolic Churches"', add
label define religdlbl 6262 `"Pinkster Protestant Church"', add
label define religdlbl 6263 `"Afrikaanse Protestant Church"', add
label define religdlbl 6264 `"Full Gospel Church of God in Southern Africa"', add
label define religdlbl 6265 `"Pentecostal Churches"', add
label define religdlbl 6266 `"Salvation Army"', add
label define religdlbl 6267 `"New Apostolic Church"', add
label define religdlbl 6268 `"Bandla Lama Nazaretha"', add
label define religdlbl 6269 `"African Methodist Episcopal Church"', add
label define religdlbl 6270 `"St John's Apostolic Church"', add
label define religdlbl 6271 `"International Pentecost Church"', add
label define religdlbl 6272 `"Ethiopian type churches"', add
label define religdlbl 6273 `"Ethnic churches"', add
label define religdlbl 6274 `"Other African Independent Churches"', add
label define religdlbl 6275 `"Other Christian Churches"', add
label define religdlbl 6276 `"Other Catholic Churches"', add
label define religdlbl 6277 `"Other Pentecostal Churches"', add
label define religdlbl 6278 `"Other Orthodox Churches"', add
label define religdlbl 6279 `"Other African Apostolic churches"', add
label define religdlbl 6280 `"Other Assemblies"', add
label define religdlbl 6281 `"Christian Scientist"', add
label define religdlbl 6282 `"Christian Centres"', add
label define religdlbl 6283 `"Other Evangelical Churches"', add
label define religdlbl 6284 `"Other Charismatic Churches"', add
label define religdlbl 7000 `"Other"', add
label define religdlbl 7001 `"Other, Austria"', add
label define religdlbl 7002 `"Bahai"', add
label define religdlbl 7003 `"Sikh"', add
label define religdlbl 7004 `"Unification Church"', add
label define religdlbl 7005 `"Other, Brazil"', add
label define religdlbl 7006 `"Spiritist"', add
label define religdlbl 7007 `"Kardecist Spiritist"', add
label define religdlbl 7008 `"Afro Spiritist"', add
label define religdlbl 7009 `"Mediumistic Spiritist"', add
label define religdlbl 7010 `"Umbandist Mediumistic"', add
label define religdlbl 7011 `"Candomblecist Mediumistic"', add
label define religdlbl 7012 `"Other Afro-Brazilian"', add
label define religdlbl 7013 `"Oriental"', add
label define religdlbl 7014 `"New Oriental"', add
label define religdlbl 7015 `"Oriental Seicho No-le"', add
label define religdlbl 7016 `"Other Oriental"', add
label define religdlbl 7017 `"Esoteric"', add
label define religdlbl 7018 `"Indigenous"', add
label define religdlbl 7019 `"Other minority groups"', add
label define religdlbl 7020 `"Other, Canada"', add
label define religdlbl 7021 `"Eastern religions"', add
label define religdlbl 7022 `"Sikh"', add
label define religdlbl 7023 `"Other, Chile"', add
label define religdlbl 7024 `"Theosophism"', add
label define religdlbl 7025 `"Shintoism"', add
label define religdlbl 7026 `"Other, Ghana"', add
label define religdlbl 7027 `"Traditional"', add
label define religdlbl 7028 `"Other, Israel"', add
label define religdlbl 7029 `"Druse"', add
label define religdlbl 7030 `"Other, Israel"', add
label define religdlbl 7031 `"Other, Malaysia"', add
label define religdlbl 7032 `"Confucianism/Taoism"', add
label define religdlbl 7033 `"Tribal/Folk Religion"', add
label define religdlbl 7034 `"Other, Mexico"', add
label define religdlbl 7035 `"Brahmanism"', add
label define religdlbl 7036 `"Hare Krishna"', add
label define religdlbl 7037 `"Shintoism"', add
label define religdlbl 7038 `"Taoism"', add
label define religdlbl 7039 `"Mexican Movements"', add
label define religdlbl 7040 `"Ananda Marga"', add
label define religdlbl 7041 `"Bahaiism"', add
label define religdlbl 7042 `"Church of Scientology"', add
label define religdlbl 7043 `"Masons"', add
label define religdlbl 7044 `"Raelian Movement"', add
label define religdlbl 7045 `"New Age Movement"', add
label define religdlbl 7046 `"Neoisraelites"', add
label define religdlbl 7047 `"Occultists"', add
label define religdlbl 7048 `"Palmar of Troya"', add
label define religdlbl 7049 `"Rose Cross"', add
label define religdlbl 7050 `"Theosophism"', add
label define religdlbl 7051 `"Spiritualist Special Keys"', add
label define religdlbl 7052 `"Other, Philippines"', add
label define religdlbl 7053 `"Door of Faith"', add
label define religdlbl 7054 `"Faith Tabernacle Church (Living Rock Ministries)"', add
label define religdlbl 7055 `"International One Way Outreach"', add
label define religdlbl 7056 `"Miracle Life Fellowship International"', add
label define religdlbl 7057 `"Miracle Revival Church of the Philippines"', add
label define religdlbl 7058 `"Philippine Good News Ministries"', add
label define religdlbl 7059 `"Philippine Missionary fellowship"', add
label define religdlbl 7060 `"Things to Come"', add
label define religdlbl 7061 `"Way of Salvation"', add
label define religdlbl 7062 `"Word of the World"', add
label define religdlbl 7063 `"Tribal Religions, Philippines"', add
label define religdlbl 7064 `"Other, Romania"', add
label define religdlbl 7065 `"Unitarian"', add
label define religdlbl 7066 `"Armenian"', add
label define religdlbl 7067 `"Mosaic"', add
label define religdlbl 7068 `"Other, Romania"', add
label define religdlbl 7069 `"Other, Rwanda"', add
label define religdlbl 7070 `"Traditional religion"', add
label define religdlbl 7071 `"Other, Rwanda"', add
label define religdlbl 7072 `"Other, South Africa"', add
label define religdlbl 7073 `"African traditional belief"', add
label define religdlbl 7074 `"Taoist"', add
label define religdlbl 7075 `"Confucian"', add
label define religdlbl 7076 `"Bahai"', add
label define religdlbl 7077 `"New Age"', add
label define religdlbl 7078 `"Other non-Christian, S. Africa"', add
label define religdlbl 7079 `"Other, Uganda"', add
label define religdlbl 7080 `"Traditional religion"', add
label define religdlbl 7081 `"Bahai"', add
label define religdlbl 7082 `"Other non-Christian, Uganda"', add
label define religdlbl 7083 `"Other, United Kindom"', add
label define religdlbl 7084 `"Sikh"', add
label define religdlbl 7085 `"Other, Vietnam"', add
label define religdlbl 7086 `"Hoa Hoa"', add
label define religdlbl 7087 `"Cao Dai"', add
label define religdlbl 7900 `"Other, not elsewhere classified"', add
label define religdlbl 9999 `"Unknown"', add
label values religd religdlbl

label define edattanlbl 0 `"NIU"'
label define edattanlbl 1 `"Less than primary completed"', add
label define edattanlbl 2 `"Primary completed"', add
label define edattanlbl 3 `"Secondary completed"', add
label define edattanlbl 4 `"University completed"', add
label define edattanlbl 9 `"Unknown"', add
label values edattan edattanlbl

label define edattandlbl 000 `"NIU"', add
label define edattandlbl 100 `"Less than primary completed (n.s.)"', add
label define edattandlbl 110 `"No schooling"', add
label define edattandlbl 120 `"Some primary completed"', add
label define edattandlbl 130 `"Primary (4 yrs) completed"', add
label define edattandlbl 211 `"Primary (5 yrs) completed"', add
label define edattandlbl 212 `"Primary (6 yrs) completed"', add
label define edattandlbl 221 `"Lower secondary general completed"', add
label define edattandlbl 222 `"Lower secondary technical completed"', add
label define edattandlbl 311 `"Secondary, general track completed"', add
label define edattandlbl 312 `"Some college completed"', add
label define edattandlbl 320 `"Secondary or post-secondary technical completed"', add
label define edattandlbl 321 `"Secondary, technical track completed"', add
label define edattandlbl 322 `"Post-secondary technical education"', add
label define edattandlbl 400 `"University completed"', add
label define edattandlbl 999 `"Unknown/missing"', add
label values edattand edattandlbl

label define educrolbl 000 `"NIU (not in universe)"'
label define educrolbl 100 `"None"', add
label define educrolbl 110 `"Literacy courses"', add
label define educrolbl 200 `"Primary"', add
label define educrolbl 210 `"Special education (2002)"', add
label define educrolbl 300 `"Secondary education"', add
label define educrolbl 310 `"Lower secondary"', add
label define educrolbl 311 `"Special education"', add
label define educrolbl 320 `"Upper secondary"', add
label define educrolbl 321 `"Academic secondary education"', add
label define educrolbl 322 `"Vocational secondary education"', add
label define educrolbl 330 `"Technical apprenticeship secondary"', add
label define educrolbl 400 `"Post-secondary"', add
label define educrolbl 410 `"Post-secondary technical"', add
label define educrolbl 420 `"Short-term education (associate degrees)"', add
label define educrolbl 430 `"University/college"', add
label define educrolbl 999 `"Unknown"', add
label values educro educrolbl

label define eedattalbl 00 `"NIU (not in universe)"'
label define eedattalbl 10 `"Less than primary"', add
label define eedattalbl 20 `"Primary (first stage of basic education)"', add
label define eedattalbl 30 `"Lower secondary (second stage of basic education)"', add
label define eedattalbl 40 `"Upper secondary"', add
label define eedattalbl 50 `"Post-secondary non-tertiary education"', add
label define eedattalbl 60 `"University completed"', add
label define eedattalbl 61 `"First stage of tertiary education"', add
label define eedattalbl 62 `"Second stage of tertiary education"', add
label define eedattalbl 99 `"Unknown/missing"', add
label values eedatta eedattalbl

label define empstatlbl 0 `"NIU"'
label define empstatlbl 1 `"Employed"', add
label define empstatlbl 2 `"Unemployed"', add
label define empstatlbl 3 `"Inactive"', add
label define empstatlbl 9 `"Unknown/missing"', add
label values empstat empstatlbl

label define empstatdlbl 000 `"NIU (not in universe)"', add
label define empstatdlbl 100 `"Employed, not specified"', add
label define empstatdlbl 110 `"At work"', add
label define empstatdlbl 111 `"At work, and 'student'"', add
label define empstatdlbl 112 `"At work, and 'housework'"', add
label define empstatdlbl 113 `"At work, and 'seeking work'"', add
label define empstatdlbl 114 `"At work, and 'retired'"', add
label define empstatdlbl 115 `"At work, and 'no work'"', add
label define empstatdlbl 116 `"At work, and 'other'"', add
label define empstatdlbl 117 `"At work, family holding, not specified"', add
label define empstatdlbl 118 `"At work, family holding, not agricultural"', add
label define empstatdlbl 119 `"At work, family holding, agricultural"', add
label define empstatdlbl 120 `"Have job, not at work last week"', add
label define empstatdlbl 130 `"Armed forces"', add
label define empstatdlbl 131 `"Armed forces, at work"', add
label define empstatdlbl 132 `"Armed forces, not at work last week"', add
label define empstatdlbl 133 `"Military trainee"', add
label define empstatdlbl 140 `"Marginally employed"', add
label define empstatdlbl 200 `"Unemployed, not specified"', add
label define empstatdlbl 201 `"Unemployed 6 or more months"', add
label define empstatdlbl 202 `"Worked less than 6 months, permanent job"', add
label define empstatdlbl 203 `"Worked less than 6 months, temporary job"', add
label define empstatdlbl 210 `"Unemployed, experienced worker"', add
label define empstatdlbl 220 `"Unemployed, new worker"', add
label define empstatdlbl 230 `"No work available"', add
label define empstatdlbl 240 `"Inactive unemployed"', add
label define empstatdlbl 300 `"Inactive (not in labor force)"', add
label define empstatdlbl 310 `"Housework"', add
label define empstatdlbl 320 `"Unable to work/disabled"', add
label define empstatdlbl 321 `"Permanent disability"', add
label define empstatdlbl 322 `"Temporary illness"', add
label define empstatdlbl 323 `"Disabled or imprisoned"', add
label define empstatdlbl 330 `"In school"', add
label define empstatdlbl 340 `"Retirees and living on rent"', add
label define empstatdlbl 341 `"Living on rents"', add
label define empstatdlbl 342 `"Living on rents or pension"', add
label define empstatdlbl 343 `"Retirees/pensioners"', add
label define empstatdlbl 344 `"Retired"', add
label define empstatdlbl 345 `"Pensioner"', add
label define empstatdlbl 346 `"Non-retirement pension"', add
label define empstatdlbl 347 `"Disability pension"', add
label define empstatdlbl 348 `"Retired without benefits"', add
label define empstatdlbl 350 `"Elderly"', add
label define empstatdlbl 360 `"Institutionalized"', add
label define empstatdlbl 361 `"Prisoner"', add
label define empstatdlbl 370 `"Intermittant worker"', add
label define empstatdlbl 371 `"Not working, seasonal worker"', add
label define empstatdlbl 372 `"Not working, occasional worker"', add
label define empstatdlbl 380 `"Other income recipient"', add
label define empstatdlbl 390 `"Inactive, other reasons"', add
label define empstatdlbl 999 `"Unknown/missing"', add
label values empstatd empstatdlbl

label define eempstalbl 000 `"NIU (not in universe)"', add
label define eempstalbl 110 `"Employed"', add
label define eempstalbl 120 `"Unemployed"', add
label define eempstalbl 121 `"Unemployed, never worked before"', add
label define eempstalbl 210 `"Students"', add
label define eempstalbl 220 `"Pension or capital income recipients"', add
label define eempstalbl 230 `"Homemakers"', add
label define eempstalbl 240 `"Others"', add
label define eempstalbl 999 `"Unknown / missing"', add
label values eempsta eempstalbl

label values occ occlbl

label define classwklbl 0 `"NIU"'
label define classwklbl 1 `"Self-employed"', add
label define classwklbl 2 `"Wage/salary worker"', add
label define classwklbl 3 `"Unpaid worker"', add
label define classwklbl 4 `"Other"', add
label define classwklbl 9 `"Unknown/missing"', add
label values classwk classwklbl

label define classwkdlbl 000 `"NIU (not in universe)"'
label define classwkdlbl 100 `"Self-employed"', add
label define classwkdlbl 101 `"Self-employed, unincorporated"', add
label define classwkdlbl 102 `"Self-employed, incorporated"', add
label define classwkdlbl 110 `"Employer"', add
label define classwkdlbl 111 `"Sharecropper, employer"', add
label define classwkdlbl 120 `"Working on own account"', add
label define classwkdlbl 121 `"Own account, agriculture"', add
label define classwkdlbl 122 `"Domestic worker, self-employed"', add
label define classwkdlbl 123 `"Subsistence worker, own consumption"', add
label define classwkdlbl 124 `"Own account, other"', add
label define classwkdlbl 130 `"Member of cooperative"', add
label define classwkdlbl 140 `"Sharecropper"', add
label define classwkdlbl 141 `"Sharecropper, self-employed"', add
label define classwkdlbl 142 `"Sharecropper, employee"', add
label define classwkdlbl 150 `"Kibbutz member"', add
label define classwkdlbl 200 `"Wage/salary worker"', add
label define classwkdlbl 201 `"Works on salary"', add
label define classwkdlbl 202 `"White collar"', add
label define classwkdlbl 203 `"Blue collar"', add
label define classwkdlbl 204 `"White and blue collar"', add
label define classwkdlbl 205 `"Day laborer"', add
label define classwkdlbl 206 `"Employee, with signed work card"', add
label define classwkdlbl 207 `"Employee, without signed work card"', add
label define classwkdlbl 208 `"Employee, with a permanent job"', add
label define classwkdlbl 209 `"Employee, with an occasional or temporary job"', add
label define classwkdlbl 210 `"Domestic worker (work for private household)"', add
label define classwkdlbl 211 `"Domestic worker, with signed work card"', add
label define classwkdlbl 212 `"Domestic worker, without signed work card"', add
label define classwkdlbl 220 `"Seasonal migrant"', add
label define classwkdlbl 221 `"Seasonal migrant, no broker"', add
label define classwkdlbl 222 `"Seasonal migrant, uses broker"', add
label define classwkdlbl 230 `"Wage/salary worker, private employer"', add
label define classwkdlbl 231 `"Apprentice"', add
label define classwkdlbl 232 `"Religious worker"', add
label define classwkdlbl 233 `"Wage/salary worker, non-profit"', add
label define classwkdlbl 234 `"White collar"', add
label define classwkdlbl 235 `"Blue collar"', add
label define classwkdlbl 236 `"Paid family worker"', add
label define classwkdlbl 237 `"Cooperative employee"', add
label define classwkdlbl 240 `"Wage/salary worker, government"', add
label define classwkdlbl 241 `"Federal, government employee"', add
label define classwkdlbl 242 `"State government employee"', add
label define classwkdlbl 243 `"Local government employee"', add
label define classwkdlbl 244 `"White collar, public"', add
label define classwkdlbl 245 `"Blue collar, public"', add
label define classwkdlbl 246 `"Public companies"', add
label define classwkdlbl 247 `"Civil servants, local collectives"', add
label define classwkdlbl 248 `"Public servant"', add
label define classwkdlbl 249 `"Public employee, state-owned company"', add
label define classwkdlbl 250 `"Other wage and salary"', add
label define classwkdlbl 251 `"Canal zone/commission employee"', add
label define classwkdlbl 252 `"Government employment/training program"', add
label define classwkdlbl 300 `"Unpaid worker"', add
label define classwkdlbl 310 `"Unpaid family worker"', add
label define classwkdlbl 320 `"Apprentice or trainee"', add
label define classwkdlbl 400 `"Other"', add
label define classwkdlbl 999 `"Unknown/missing"', add
label values classwkd classwkdlbl

label define eclaswklbl 0 `"NIU (not in universe)"'
label define eclaswklbl 1 `"Employees"', add
label define eclaswklbl 2 `"Employers"', add
label define eclaswklbl 3 `"Own-account worker"', add
label define eclaswklbl 4 `"Contributing family workers"', add
label define eclaswklbl 5 `"Members of producers' co-operatives"', add
label define eclaswklbl 6 `"Persons not classificable by status"', add
label define eclaswklbl 9 `"Unknown"', add
label values eclaswk eclaswklbl

label define empsectlbl 00 `"NIU (not in universe)"'
label define empsectlbl 10 `"Public"', add
label define empsectlbl 11 `"State"', add
label define empsectlbl 12 `"Province"', add
label define empsectlbl 20 `"Private"', add
label define empsectlbl 21 `"Private, not elsewhere classified"', add
label define empsectlbl 22 `"Individual/family enterprise, and self-employed"', add
label define empsectlbl 23 `"Foreign"', add
label define empsectlbl 30 `"Mixed: public-private or parastatal"', add
label define empsectlbl 40 `"Collective or cooperative"', add
label define empsectlbl 50 `"Foreign government or non-governmental organization"', add
label define empsectlbl 60 `"Other, unspecified"', add
label define empsectlbl 61 `"Canal zone"', add
label define empsectlbl 99 `"Unknown"', add
label values empsect empsectlbl

label define hrswrk2lbl 0 `"None"'
label define hrswrk2lbl 1 `"1 to 14 hours"', add
label define hrswrk2lbl 2 `"15 to 29 hours (except VE 71)"', add
label define hrswrk2lbl 3 `"30 to 39 hours (except VE 71)"', add
label define hrswrk2lbl 4 `"40-48 hours (except IL 72)"', add
label define hrswrk2lbl 5 `"49 hours or more (except IL 72)"', add
label define hrswrk2lbl 8 `"Unknown"', add
label define hrswrk2lbl 9 `"NIU (not in universe)"', add
label values hrswrk2 hrswrk2lbl

label define sex_splbl 1 `"Male"'
label define sex_splbl 2 `"Female"', add
label define sex_splbl 9 `"Unknown"', add
label values sex_sp sex_splbl

label define empstat_splbl 0 `"NIU"'
label define empstat_splbl 1 `"Employed"', add
label define empstat_splbl 2 `"Unemployed"', add
label define empstat_splbl 3 `"Inactive"', add
label define empstat_splbl 9 `"Unknown/missing"', add
label values empstat_sp empstat_splbl

label define empstat_spdlbl 000 `"NIU (not in universe)"', add
label define empstat_spdlbl 100 `"Employed, not specified"', add
label define empstat_spdlbl 110 `"At work"', add
label define empstat_spdlbl 111 `"At work, and 'student'"', add
label define empstat_spdlbl 112 `"At work, and 'housework'"', add
label define empstat_spdlbl 113 `"At work, and 'seeking work'"', add
label define empstat_spdlbl 114 `"At work, and 'retired'"', add
label define empstat_spdlbl 115 `"At work, and 'no work'"', add
label define empstat_spdlbl 116 `"At work, and 'other'"', add
label define empstat_spdlbl 117 `"At work, family holding, not specified"', add
label define empstat_spdlbl 118 `"At work, family holding, not agricultural"', add
label define empstat_spdlbl 119 `"At work, family holding, agricultural"', add
label define empstat_spdlbl 120 `"Have job, not at work last week"', add
label define empstat_spdlbl 130 `"Armed forces"', add
label define empstat_spdlbl 131 `"Armed forces, at work"', add
label define empstat_spdlbl 132 `"Armed forces, not at work last week"', add
label define empstat_spdlbl 133 `"Military trainee"', add
label define empstat_spdlbl 140 `"Marginally employed"', add
label define empstat_spdlbl 200 `"Unemployed, not specified"', add
label define empstat_spdlbl 201 `"Unemployed 6 or more months"', add
label define empstat_spdlbl 202 `"Worked less than 6 months, permanent job"', add
label define empstat_spdlbl 203 `"Worked less than 6 months, temporary job"', add
label define empstat_spdlbl 210 `"Unemployed, experienced worker"', add
label define empstat_spdlbl 220 `"Unemployed, new worker"', add
label define empstat_spdlbl 230 `"No work available"', add
label define empstat_spdlbl 240 `"Inactive unemployed"', add
label define empstat_spdlbl 300 `"Inactive (not in labor force)"', add
label define empstat_spdlbl 310 `"Housework"', add
label define empstat_spdlbl 320 `"Unable to work/disabled"', add
label define empstat_spdlbl 321 `"Permanent disability"', add
label define empstat_spdlbl 322 `"Temporary illness"', add
label define empstat_spdlbl 323 `"Disabled or imprisoned"', add
label define empstat_spdlbl 330 `"In school"', add
label define empstat_spdlbl 340 `"Retirees and living on rent"', add
label define empstat_spdlbl 341 `"Living on rents"', add
label define empstat_spdlbl 342 `"Living on rents or pension"', add
label define empstat_spdlbl 343 `"Retirees/pensioners"', add
label define empstat_spdlbl 344 `"Retired"', add
label define empstat_spdlbl 345 `"Pensioner"', add
label define empstat_spdlbl 346 `"Non-retirement pension"', add
label define empstat_spdlbl 347 `"Disability pension"', add
label define empstat_spdlbl 348 `"Retired without benefits"', add
label define empstat_spdlbl 350 `"Elderly"', add
label define empstat_spdlbl 360 `"Institutionalized"', add
label define empstat_spdlbl 361 `"Prisoner"', add
label define empstat_spdlbl 370 `"Intermittant worker"', add
label define empstat_spdlbl 371 `"Not working, seasonal worker"', add
label define empstat_spdlbl 372 `"Not working, occasional worker"', add
label define empstat_spdlbl 380 `"Other income recipient"', add
label define empstat_spdlbl 390 `"Inactive, other reasons"', add
label define empstat_spdlbl 999 `"Unknown/missing"', add
label values empstat_spd empstat_spdlbl

label define eempsta_splbl 000 `"NIU (not in universe)"', add
label define eempsta_splbl 110 `"Employed"', add
label define eempsta_splbl 120 `"Unemployed"', add
label define eempsta_splbl 121 `"Unemployed, never worked before"', add
label define eempsta_splbl 210 `"Students"', add
label define eempsta_splbl 220 `"Pension or capital income recipients"', add
label define eempsta_splbl 230 `"Homemakers"', add
label define eempsta_splbl 240 `"Others"', add
label define eempsta_splbl 999 `"Unknown / missing"', add
label values eempsta_sp eempsta_splbl

label values occ_sp occ_splbl


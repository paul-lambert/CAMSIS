**** Value labels for IPUMS, Ghana, 2000

**** Copied from : https://international.ipums.org/international-action/variables/GH00A424/codes

** Paul Lambert/Dave Griffiths, Univ. Stirling, 21 October 2010


************************************************


#delimit ; 

capture label drop occlab; 

label define occlab
1	"Physical scientists and related technicians (physicist, geologist, etc.)"
2	"Architects and related technicians"
3	"Engineers and related technicians"
4	"Aircraft and ships' officers (pilots, naval officers, etc.)"
5	"Life scientists and related technicians (botanist, zoologist, biochemist, etc.)"
6	"Medical and related workers"
7	"Dental, veterinary and related workers"
8	"Statisticians, mathematicians, system analysts and related technicians (programmer)"
9	"Economists and other social scientist"
11	"Accountants"
12	"Jurists"
13	"Teachers"
14	"Workers in religion (full-time religious workers)"
15	"Authors, journalists and related writers"
16	"Sculptors, photographers and related creative artists"
17	"Composers and performing artists"
18	"Athletes, sportsmen and related workers"
19	"Professional, technical and related workers not elsewhere classified"
20	"Legislative officials and government administrators (MPs, traditional office holders, etc.)"
21	"Managers (GM, MD's and executive directors)"
30	"Clerical supervisors"
31	"Government executive officials"
32	"Stenographers, typists"
33	"Book-keepers, cashiers and related workers"
34	"Computing machine operators (data entry operator)"
35	"Transport and communications supervisors"
36	"Transport conductors"
37	"Mail distribution clerks"
38	"Telephone and telegraph operators"
39	"Clerical and related workers not elsewhere classified"
40	"Managers (wholesale and retail trade)"
41	"Working proprietors (wholesale and retail trade)"
42	"Sales supervisors and buyers"
43	"Technical salesmen, commercial travelers and manufacturers' agents"
44	"Insurance, real estate, securities and business services salesmen and auctioneers"
45	"Salesmen, shop assistants and related workers (newspapers stand)"
46	"Wholesale market traders"
47	"Retail market traders"
48	"Hawkers, street and pavement vendors"
49	"Sales workers not elsewhere classified"
50	"Managers (catering and lodging services)"
51	"Working proprietors (catering and lodging services)"
52	"Housekeeping and related service supervisors"
53	"Cooks, waiters, bartenders and related workers"
54	"Maids, related housekeeping service workers not elsewhere classified"
55	"Building caretakers, charworkers, cleaners and related workers (washmen/women)"
56	"Launderers, dry-cleaners and pressers"
57	"Hairdressers, barbers, beauticians and related workers"
58	"Protective service workers (private security, watch dog committee, watchmen)"
59	"Service workers not elsewhere classified"
60	"Farm managers and supervisors"
61	"Farmers"
62	"Agriculture and animal husbandry workers"
63	"Forestry workers"
64	"Fishermen, hunters and related workers"
70	"Production supervisors and general foremen"
71	"Miners, quarrymen, well drillers and related workers"
72	"Metal processors"
73	"Wood preparation workers and paper makers"
74	"Chemical processors and related workers"
75	"Spinners, weavers, knitters, dyes and related workers"
76	"Tanners and other leather workers"
77	"Food and beverage processors"
78	"Tobacco preparers and tobacco product makers"
79	"Tailors, dressmakers, sewers, upholsterers and related workers"
80	"Shoemakers and leather goods makers"
81	"Cabinet makers and related woodworkers"
82	"Stone cutters and carvers"
83	"Blacksmiths, toolmakers and machine-tool operators"
84	"Machinery fitters, machine assemblers and precision instrument makers (except electrical)"
85	"Electrical fitters and related electrical and electronics workers"
86	"Broadcasting station and sound equipment operators and cinema projectionist"
87	"Plumbers, welders, sheet metal and structural metal preparers and erectors"
88	"Jewelry and precious metal workers"
89	"Glass and ceramic workers"
90	"Rubber and plastics product makers"
91	"Paper and paperboard products makers"
92	"Printers and related workers"
93	"Painters"
94	"Production and related workers not elsewhere classified"
95	"Bricklayers, carpenters and other construction workers"
96	"Stationary engine and related equipment operators"
97	"Material-handling and related equipment operators, dockers and freight handlers"
98	"Transport equipment operators"
99	"Laborers not elsewhere classified"
100	"New workers seeking employment"
999	"NIU (not in universe)"  ;

#delimit cr 


**This do file was created as part of the Economic and Social Research Council funded project:
**Social Networks and Occupational Structure (ESRC grant no: RES-062-23-2497)
**Paul Lambert and Dave Griffiths, University of Stirling
*For more information on the project, see http://www.camsis.stir.ac.uk/sonocs/


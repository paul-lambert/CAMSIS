

* this spss include file adds value labels to 1971 
* occupational titles.

*** Recommended usage :.
*include file="kos1970labels1.sps".
*ddddef1 occ={var names}.
**********************.



define def1 (occ=!enclose('{','}')  ).

add value labels !occ   
  1 "1 Fishermen"
  2 "2 Farmers, farm managers, market gardeners"
  3 "3 Agricultural workers n.e.c."
  4 "4 Agricultural machinery drivers"
  5 "5 Gardeners and groundsmen"
  6 "6 Foresters and Woodmen"
  7 "7 Coal mineworkers underground"
  8 "8 Coal mineworkers above ground"
  9 "9 Workers below ground n.e.c."
  10 "10 Surface workers n.e.c.mines and quarries"
  11 "11 Furnacemen, coal gas and coke ovens "
  12 "12 Chemical production process workers n.e.c."
  13 "13 Ceramic formers"
  14 "14 Glass formers, finishers and decorators"
  15 "15 Furnacemen, kilnmen, glass and ceramic"
  16 "16 Ceramics' decorators and finishers"
  17 "17 Glass and ceramics production process workers n.e.c."
  18 "18 Furnacemenmetal"
  19 "19 Rolling, tube mill operators, metal drawers"
  20 "20 Moulders and coremakers (foundry)"
  21 "21 Smiths, forgemen"
  22 "22 Metal making and treating workers n.e.c."
  23 "23 Fettlers, metal dressers"
  24 "24 Radio and radar mechanics"
  25 "25 Installers and repairmen, telephone"
  26 "26 Linesmen, cable jointers"
  27 "27 Electricians"
  28 "28 Electrical and electronic fitters"
  29 "29 Assemblers (electrical and electronic)"
  30 "30 Electrical engineers (so described)"
  31 "31 Foremen (engineering and allied trades)"
  32 "32 Trainee craftsmen (engineering and allied trades)"
  33 "33 Sheet metal workers"
  34 "34 Steel erectors; riggers"
  35 "35 Metal plate workcrs; riveters"
  36 "36 Gas, electric welders, Cutters; braziers"
  37 "37 Turners"
  38 "38 Machine tool setters, setter-operators n.e.c."
  39 "39 Machine tool operators"
  40 "40 Tool makers, tool room fitters"
  41 "41 Motor mechanics, auto engineers"
  42 "42 Maintenance fitters, maintenance engineers, millwrights"
  43 "43 Fitters n.e.c., machine erectors, etc."
  44 "44 Electro-platers, dip platers and related workers"
  45 "45 Plumbers, gas fitters, lead burners"
  46 "46 Pipe fitters, heating engineers"
  47 "47 Press workers and stampers"
  48 "48 Metal workers n.e.c."
  49 "49 Watch and chronometer makers and repairers"
  50 "50 Precision instrument makers and repairers"
  51 "51 Goldsmiths, silversmiths, jewellery makers"
  52 "52 Coach, carriage, wagon builders and repairers"
  53 "53 Inspectors (metal and electrical goods)"
  54 "54 Other metal making, working; jewellery and electrical production process workers"
  55 "55 Carpenters and joiners "
  56 "56 Cabinet makers "
  57 "57 Sawyers and wood working machinists "
  58 "58 Pattern makers "
  59 "59 Woodworkers n.e.c."
  60 "60 Tanners; leather, fur dressers, fellmongers "
  61 "61 Shoemakers and shoe repairers "
  62 "62 Cutters, lasters, sewers, footwear and related workers "
  63 "63 Leather products makers n.e.c."
  64 "64 Fibre preparers"
  65 "65 Spinners, doublers, twisters"
  66 "66 Winders, reelers"
  67 "67 Warpers, sizers, drawers-in"
  68 "68 Weavers "
  69 "69 Knitters "
  70 "70 Bleachers and finishers of textiles "
  71 "71 Dyers of textiles "
  72 "72 Textile fabrics and related products makers and examiners n.e.c."
  73 "73 Textile fabrics, etc. production process workers n.e.c."
  74 "74 Tailors, dress, light clothing makers "
  75 "75 Upholsterers and related workers "
  76 "76 Hand and machine sewers and embroiderers, textile and light leather products. "
  77 "77 Clothing and related products makers n.e.c."
  78 "78 Bakers and pastry cooks"
  79 "79 Butchers and meat cutters"
  80 "80 Brewers, wine makers and related workers"
  81 "81 Food processors n.e.c."
  82 "82 Tobacco preparers and products makers"
  83 "83 Makers of paper and paperboard"
  84 "84 Paper products makers"
  85 "85 Compositors"
  86 "86 Printing press operators"
  87 "87 Printers (so described)"
  88 "88 Printing workers n.e.c."
  89 "89 Workers in rubber"
  90 "90 Workers in plastics"
  91 "91 Craftsmen n.e.c."
  92 "92 Other production process workers"
  93 "93 Bricklayers, tile setters "
  94 "94 Masons, stone cutters, slate workers "
  95 "95 Plasterers, cement finishers, terrazzo workers "
  96 "96 Builders (so described); clerks of works "
  97 "97 Bricklayers', etc., labourers n.e.c. "
  98 "98 Construction workers n.e.c."
  99 "99 Aerographers paint sprayers"
  100 "100 Painters, decorators n.e.c."
  101 "101 Coach painters (so described)"
  102 "102 Boiler firemen"
  103 "103 Crane and hoist operators; slingers"
  104 "104 Operators of earth moving and other construction machinery n.e.c."
  105 "105 Stationary engine, materials handling plant operators n.e.c.; oilers and greasers"
  106 "106 Railway lengthmen"
  107 "107 Labourers and unskilled workers n.e.c.: Chemical and allied trades"
  108 "108 Labourers and unskilled workers n.e.c.: Engineering and allied trades"
  109 "109 Labourers and unskilled workers n.e.c.: Foundries in engineering and allied trades"
  110 "110 Labourers and unskilled workers n.e.c.: Textiles (not textile goods)"
  111 "111 Labourers and unskilled workers n.e.c.: Coke ovens and gas works"
  112 "112 Labourers and unskilled workers n.e.c.: Glass and ceramics"
  113 "113 Labourers and unskilled workers n.e.c.: Building and contracting"
  114 "114 Labourers and unskilled workers n.e.c.: Other"
  115 "115 Deck, engineering officers and pilots, ship"
  116 "116 Deck and engine room ratings, barge and boatmen"
  117 "117 Aircraft pilots, navigators and flight engineers"
  118 "118 Drivers, motormen, second men, railway engine"
  119 "119 Railway guards"
  120 "120 Drivers of buses, coaches"
  121 "121 Drivers of other road passenger vehicles"
  122 "122 Drivers of road goods vehicles"
  123 "123 Inspectors, supervisors, transport"
  124 "124 Shunters, pointsmen"
  125 "125 Signalmen and crossing keepers, railways"
  126 "126 Traffic controllers and dispatchers, transport"
  127 "127 Telephone operators"
  128 "128 Telegraph and radio operators"
  129 "129 Postmen, mail sorters"
  130 "130 Messengers"
  131 "131 Bus conductors"
  132 "132 Porters, ticket collectors, railway"
  133 "133 Stevedores, dock labourers"
  134 "134 Lorry drivers' mates, van guards"
  135 "135 Workers in transport and communication occupations n.e.c."
  136 "136 Warehousemen, storekeepers and assistants"
  137 "137 Packers, labellers and related workers"
  138 "138 Office managers n.e.c."
  139 "139 Clerks, cashiers"
  140 "140 Office machine operators"
  141 "141 Typists, shorthand writers, secretaries"
  142 "142 Civil service executive officers"
  143 "143 Proprietors and managers, sales"
  144 "144 Shop salesmen and assistants"
  145 "145 Roundsmen (bread, milk, laundry, soft drinks)"
  146 "146 Street vendors, hawkers"
  147 "147 Garage proprietors"
  148 "148 Commercial travellers, manufacturers' agents"
  149 "149 Finance, insurance brokers, financial agents"
  150 "150 Salesmen, services; valuers, auctioneers"
  151 "151 Fire brigade officers and men"
  152 "152 Police officers and men"
  153 "153 Guards and related workers n.e.c."
  154 "154 Publicans, innkeepers"
  155 "155 Barmen, barmaids"
  156 "156 Proprietors and managers boarding houses and hotels"
  157 "157 Housekeepers, stewards, matrons and housemothers"
  158 "158 Domestic housekeepers"
  159 "159 Restaurateurs"
  160 "160 Waiters and waitresses"
  161 "161 Canteen assistants, counter hands"
  162 "162 Cooks"
  163 "163 Kitchen hands"
  164 "164 Maids, valets and related service workers n.e.c."
  165 "165 Caretakers, office keepers"
  166 "166 Charwomen, office cleaners; window cleaners, chimney sweeps"
  167 "167 Hairdressers, manicurists, beauticians"
  168 "168 Launderers, dry cleaners and pressers"
  169 "169 Athletes, sportsmen and related workers"
  170 "170 Hospital or ward orderlies; ambulance men"
  171 "171 Proprietors and managers, service, sport and recreations n.e.c."
  172 "172 Service, sport and recreation workers n.e.c."
  173 "173 Ministers of the Crown; M.Ps. (n.e.c.); senior government officials "
  174 "174 Local authority senior officers "
  175 "175 Managers in engineering and allied trades "
  176 "176 Managers in building and contracting "
  177 "177 Managers in mining and production n.e.c. "
  178 "178 Personnel managers "
  179 "179 Sales managers "
  180 "180 Managers n.e.c."
  181 "181 Medical practitioners (qualified)"
  182 "182 Dental practitioners"
  183 "183 Nurses"
  184 "184 Pharmacists"
  185 "185 Radiographers (medical and industrial)"
  186 "186 Ophthalmic and dispensing opticians"
  187 "187 Chiropodists"
  188 "188 Physiotherapists"
  189 "189 Occupational therapists"
  190 "190 Public health inspectors"
  191 "191 Medical workers n.e.c."
  192 "192 University teachers"
  193 "193 Primary and secondary school teachers"
  194 "194 Teachers n.e.c."
  195 "195 Civil, structural, municipal engineers"
  196 "196 Mechanical engineers"
  197 "197 Electrical engineers"
  198 "198 Electronic engineers"
  199 "199 Work study, progress engineers"
  200 "200 Planning, production engineers"
  201 "201 Engineers n.e.c."
  202 "202 Metallurgists"
  203 "203 Technologists n.e.c."
  204 "204 Chemists"
  205 "205 Physical and biological scientists"
  206 "206 Authors, journalists and related workers"
  207 "207 Stage managers, actors, entertainers, musicians"
  208 "208 Painters, sculptors and related creative artists"
  209 "209 Accountants, professional"
  210 "210 Company secretaries and registrars"
  211 "211 Surveyors"
  212 "212 Architects, town planners"
  213 "213 Clergy, ministers, members of religious orders"
  214 "214 Judges, barristers, advocates, solicitors"
  215 "215 Social welfare and related workers"
  216 "216 Officials of trade or professional associations"
  217 "217 Professional workers n.e.c"
  218 "218 Draughtsmen"
  219 "219 Laboratory assistants, technicians"
  220 "220 Technical and related workers n.e.c."
  221 "221 Armed forces (U.K.)"
  222 "222 Armed forces (Commonwealth and foreign)"
  223 "223 Inadequately described occupations"
  

  
!enddefine.

  
  

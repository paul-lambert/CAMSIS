Selected files that can help with analysing occupational data or using CAMSIS measures for the UKHLS

mrj_ukhls_example_1.do :  
This is Stata code that can be used to derive a reasonable estimate of 'current or most recent job' for a given person in the UKHLS, 
and can also be used to associate a person with a current or most recent job of a household sharer in the current or previous year of the survey. 
The idea is that a user writes in the name of the occupation measure they want to compile (as the macro 'jobvar') then it ought to be
possible to run the whole do file, with suitable path definitions, to generate a derived index file linking 'pidp', wave and job measure(s)
The example is written for waves 1-12 but could be extended to later wave with editing. 

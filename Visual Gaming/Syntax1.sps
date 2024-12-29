* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.

FREQUENCIES VARIABLES=DepressionBinary
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES= Grade Age Gender Institution Online_gaming_hrs Online_gaming_types 
  Online_gaming_duration Online_gaming_daysinweek Online_gaming_motivation 
  Online_gaming_academic_performance BY DepressionBinary 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.


DATASET ACTIVATE DataSet1.

FREQUENCIES VARIABLES=Musculoskeletal_symptoms
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES= Grade Age Gender Institution Online_gaming_hrs Online_gaming_types 
  Online_gaming_duration Online_gaming_daysinweek Online_gaming_motivation 
  Online_gaming_academic_performance BY Musculoskeletal_symptoms
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.



DATASET ACTIVATE DataSet1.

FREQUENCIES VARIABLES=Psychosomatic_symptoms 
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES= Grade Age Gender Institution Online_gaming_hrs Online_gaming_types 
  Online_gaming_duration Online_gaming_daysinweek Online_gaming_motivation 
  Online_gaming_academic_performance BY Psychosomatic_symptoms 
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.


DATASET ACTIVATE DataSet1.

FREQUENCIES VARIABLES=Online_gaming_social_relationships
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES= Grade Age Gender Institution Online_gaming_hrs Online_gaming_types 
  Online_gaming_duration Online_gaming_daysinweek Online_gaming_motivation 
  Online_gaming_academic_performance BY Online_gaming_social_relationships
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.



 
    


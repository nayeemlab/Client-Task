* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
CROSSTABS
  /TABLES=Gender Marital_Status Age Ethnicity Family_type Religion Residence Education Employment 
    Smok_Alco Family_Income Family_Income_cat Expenditure Expenditure_cat physical_exer Counselling 
    diab_comp con_comorb diab_dura BMI blood_glucose Fami_hist Drug_regim BY HRQOL
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN
  /COUNT ROUND CELL.

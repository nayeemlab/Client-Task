* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
FREQUENCIES VARIABLES=Knowledge_duration_breastfeeding Knowledge_age_comp_food 
    Knowledge_reason_comp_food Knowledge_cons_meal_infant Knowledge_cons_meal_neces 
    Knowledge_diet_divers Knowledge_repo_reat Know_bin
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=Att_conf_food Att_diff_food_ben Att_diff_diff_food Att_feed_child_several 
    Att_diff_feed_child_several Att_ben_cont_breast_six Att_diff_ben_cont_breast_six att_bin
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=Prac_goat_cow Prac_3_baby_water Prac_mother_child_bonding 
    Prac_yellow_breast_milk Prac_diarrhoea_few_liquids prac_bin
  /ORDER=ANALYSIS.

CROSSTABS
  /TABLES=Age Ethnicity Family_type Religion Residence Education Employment Smok_Alco 
    Family_Income_cat Expenditure_cat BY Know_bin
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.




CROSSTABS
  /TABLES=Age Ethnicity Family_type Religion Residence Education Employment Smok_Alco 
    Family_Income_cat Expenditure_cat BY att_bin
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.




CROSSTABS
  /TABLES=Age Ethnicity Family_type Religion Residence Education Employment Smok_Alco 
    Family_Income_cat Expenditure_cat BY prac_bin
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.

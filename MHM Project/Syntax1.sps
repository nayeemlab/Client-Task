* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
CROSSTABS
  /TABLES=Bio_Sex Age Religion Religion_Others Education Marital_Status Occupation Occu_Others 
    Family_Income_cat Expenditure_cat HH_Size_Cat Menstruation Mens_Informed Scl_Edu_Mens 
    Info_Mens_Before_Exp Shy_Talk_Mens Shy_Buy_Mens_Prod Comfort_Talk_Mens_trusted_ppl Made_Excuse_Not_Say 
    Mens_Prod_Heard Mens_Prod_Used Mens_Prod_Used_Tampons Mens_Prod_Used_Singleusepads Mens_Prod_Used_ClothPads
    Mens_Prod_Used_MensCup Mens_Prod_Used_ToiltetPaper
    Mens_Absorb_Used Rec_Mens_Materials_Free_Scl_WorkPlace 
    Rec_Mens_Materials_Who Know_Sanitary_Pads Bought_Sanitary_Pads Reason_Not_Bought_Sanitary_Pads 
    NoAccess_NotEfford_UseAlternative Where_Dry_Reusable_Pads
    Clean_Toilets Locker_Toilets Sanitary_Bins_Availble Sanitary_Bins_Cleaned_Emptied 
    Water_Soap_Available Toilet_Roal_Available Keep_Reusable_Sanitary_Materials 
     Reason_NotMaintained_Scl_WorkPlace 
    Mens_Prod_Expensive Lack_Money_Buy_Mens_Prod Like_Mens_Prod_Expensive 
    Good_Flush Privacy_Scl_Workplace_Mens Used_Mens_Prod_longer_Washing_Facilities 
    Discomfort_Skins_Reproductive_Organ 
    Discomfort_Skins_Reproductive_Organ_OtherSpecify Any_Symptoms Any_Symptoms_Shared 
    Any_Symptoms_Treatment Any_Symptoms_OthersSpecify discomfort_symptoms BY RTI
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.

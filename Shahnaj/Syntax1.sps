* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
CROSSTABS
  /TABLES=Age_Group Religion Sex_Group Wife’s_occupation Husband’s_occupation Wife’s_education 
    Husband’s_education Family_type Knowledge_Contraceptives Contraceptive_Oral Contraceptive_Tubal 
    Contraceptive_Condom Source_Contraceptives Not_Use_Contraceptives BY Contraceptive_use
  /FORMAT=AVALUE TABLES
    /STATISTICS=CHISQ 
  /CELLS=COUNT ROW 
  /COUNT ROUND CELL.

FREQUENCIES VARIABLES=Family_type Contraceptive_use Knowledge_Contraceptives Contraceptive_Oral Contraceptive_Tubal 
    Contraceptive_Condom Source_Contraceptives Not_Use_Contraceptives.
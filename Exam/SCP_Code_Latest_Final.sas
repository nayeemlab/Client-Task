libname SCP_Data "C:\Users\sumon\Desktop\SCP_Data";
proc contents data=SCP_Data.brfss_stroke;
run;

data SCP_Data.brfss_stroke_a;
set SCP_Data.brfss_stroke;
run;

proc surveyfreq data=SCP_Data.brfss_stroke_a;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables _AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _PAINDX2 CVDCRHD4 CVDSTRK3 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;
proc freq data=SCP_Data.brfss_stroke_a;
tables _AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _PAINDX2 CVDCRHD4 CVDSTRK3 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;
proc surveymeans data=SCP_Data.brfss_stroke_a;
cluster _psu;
strata _ststr;
weight _llcpwt;
var _PAINDX2 CVDSTRK3;
run;
proc means data=SCP_Data.brfss_stroke_a;
var _PAINDX2 CVDSTRK3;
run;
/*Determining the number of Missing value*/ 
proc means data=SCP_Data.brfss_stroke_a NMISS N; /*For continuous variable*/
var _AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _PAINDX2 CVDCRHD4 CVDSTRK3 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;
proc freq data=SCP_Data.brfss_stroke_a; /*For categorical variables*/
tables _AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _PAINDX2 CVDCRHD4 CVDSTRK3 BPHIGH4 CVDINFR4 DIABETE4 
_RFCHOL2 _SMOKER3 HLTHPLN1/list missing;
run;

proc surveyimpute data=SCP_Data.brfss_stroke_a method=hotdeck(selection=abb)
ndonors=5 seed=773269;
var _RFCHOL2;
output out=ca_imp;
run;

proc means data=WORK.CA_IMP NMISS N;
var _RFCHOL2;
run;

Data brr;
set SCP_Data.brfss_stroke_a;
if _EDUCAG=9 then _EDUCAG=.;
if _INCOMG=9 then _INCOMG=.;
if CVDCRHD4=1 then CVDCRHD4=1;
if CVDCRHD4=2 then CVDCRHD4=2;
if CVDCRHD4=7 then CVDCRHD4=.;
if CVDCRHD4=9 then CVDCRHD4=.;

if BPHIGH4=1 then BPHIGH4=1;
if BPHIGH4=2 then BPHIGH4=1;
if BPHIGH4=3 then BPHIGH4=2;
if BPHIGH4=4 then BPHIGH4=2;
if BPHIGH4=7 then BPHIGH4=.;
if BPHIGH4=9 then BPHIGH4=.;

if CVDINFR4=7 then CVDINFR4=.;
if CVDINFR4=9 then CVDINFR4=.;

if DIABETE4=1 then DIABETE4=1;
if DIABETE4=2 then DIABETE4=1;
if DIABETE4=3 then DIABETE4=2;
if DIABETE4=4 then DIABETE4=2;
if DIABETE4=7 then DIABETE4=.;
if DIABETE4=9 then DIABETE4=.; 

if _RFCHOL2=9 then _RFCHOL2=.;

if _INCOMG=9 then _INCOMEG=.;

if _SMOKER3=1 then _SMOKER3=1;
if _SMOKER3=2 then _SMOKER3=1;
if _SMOKER3=3 then _SMOKER3=2;
if _SMOKER3=4 then _SMOKER3=2;
if _SMOKER3=9 then _SMOKER3=.; 

if HLTHPLN1=1 then HLTHPLN1=1;
if HLTHPLN1=2 then HLTHPLN1=2;
if HLTHPLN1=7 then HLTHPLN1=.;
if HLTHPLN1=9 then HLTHPLN1=.;
run;

proc freq data=brr;
tables _PAINDX2 CVDCRHD4;
run;

/*Greph*/

proc sgplot data=brr;
vbar _PAINDX2/ GROUP = _AGE_G groupdisplay = cluster;
run;
proc sgplot data=brr;
vbar _PAINDX2/ GROUP = SEXVAR groupdisplay = cluster;
run;

proc sgplot data=brr;
vbar _PAINDX2/ GROUP = _IMPRACE groupdisplay = cluster;
run;

proc sgplot data=brr;
vbar _PAINDX2/ GROUP = CVDSTRK3 groupdisplay = cluster;
run;

/*Creating a bar chart for the frequency of chd by cholesterol
categories*/
proc sgplot data=brr;
	vbar _PAINDX2/group=CVDSTRK3 groupdisplay=cluster;
	xaxis display=(nolabel); 
	yaxis grid;
run;

/*Greph bar chart*/

proc sgplot data=brr;
vbar _PAINDX2;
run;

proc sgplot data=brr;
vbar _AGE_G;
run;
proc sgplot data=brr;
vbar SEXVAR;
run;
proc sgplot data=brr;
vbar _IMPRACE;
run;
proc sgplot data=brr;
vbar _EDUCAG;
run;
proc sgplot data=brr;
vbar _INCOMG;
run;

/* Only descriptive of one variable*/

proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _PAINDX2  / cl row chisq ;
run;

/*Table 1 */
/* Crosstab of two variables */

proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _AGE_G*_PAINDX2  / cl col chisq ;
run;


proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   SEXVAR*_PAINDX2  / cl col chisq ;
run;

proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _IMPRACE*_PAINDX2  / cl col chisq ;
run;

proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _EDUCAG*_PAINDX2  / cl col chisq ; 
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _INCOMG*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _STATE*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDCRHD4*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDSTRK3*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   BPHIGH4*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDINFR4*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   DIABETE4*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _RFCHOL2*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _SMOKER3*_PAINDX2  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   HLTHPLN1*_PAINDX2  / cl col chisq ;
run;
/*Unadjusted association (odds ratio)*/
PROC SURVEYLOGISTIC data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _PAINDX2 (PARAM=REF REF="2") ;
MODEL CVDSTRK3(event="1") = _PAINDX2;
run;
PROC LOGISTIC data=brr;
CLASS _PAINDX2 (PARAM=REF REF="2") ;
MODEL CVDSTRK3(event="1") = _PAINDX2;
run;

/*table 2*/
/*Adjusted association (odds ratio)*/

PROC SURVEYLOGISTIC data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _AGE_G (PARAM=REF REF="1") ;
CLASS SEXVAR (PARAM=REF REF="2") ;
CLASS _IMPRACE (PARAM=REF REF="2") ;
CLASS _EDUCAG (PARAM=REF REF="2") ;
CLASS _INCOMG (PARAM=REF REF="1") ;
CLASS CVDCRHD4 (PARAM=REF REF="2") ;
CLASS _PAINDX2 (PARAM=REF REF="2") ;
CLASS BPHIGH4 (PARAM=REF REF="2") ;
CLASS CVDINFR4 (PARAM=REF REF="2") ;
CLASS DIABETE4 (PARAM=REF REF="2") ;
CLASS _RFCHOL2 (PARAM=REF REF="2") ; 
CLASS _SMOKER3 (PARAM=REF REF="2") ;
CLASS HLTHPLN1 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _PAINDX2 CVDCRHD4 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;
PROC SURVEYLOGISTIC data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _AGE_G (REF="1")/PARAM=REF ;
CLASS SEXVAR (REF="2")/PARAM=REF ;
CLASS _IMPRACE (REF="2")/PARAM=REF ;
CLASS _EDUCAG (REF="2")/PARAM=REF ;
CLASS _INCOMG (REF="1")/PARAM=REF ;
CLASS CVDCRHD4 (REF="2")/PARAM=REF ;
CLASS _PAINDX2 (REF="2")/PARAM=REF ;
CLASS BPHIGH4 (REF="2")/PARAM=REF ;
CLASS CVDINFR4 (REF="2")/PARAM=REF ;
CLASS DIABETE4 (REF="2")/PARAM=REF ;
CLASS _RFCHOL2 (REF="2")/PARAM=REF ; 
CLASS _SMOKER3 (REF="2")/PARAM=REF ;
CLASS HLTHPLN1 (REF="2")/PARAM=REF ;
MODEL CVDSTRK3(event="1") =_AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _PAINDX2 CVDCRHD4 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;
proc logistic data=brr;
CLASS _AGE_G (REF="1")/PARAM=REF ;
CLASS SEXVAR (REF="2")/PARAM=REF ;
CLASS _IMPRACE (REF="2")/PARAM=REF ;
CLASS _EDUCAG (REF="2")/PARAM=REF ;
CLASS _INCOMG (REF="1")/PARAM=REF ;
CLASS CVDCRHD4 (REF="2")/PARAM=REF ;
CLASS _PAINDX2 (REF="2")/PARAM=REF ;
CLASS BPHIGH4 (REF="2")/PARAM=REF ;
CLASS CVDINFR4 (REF="2")/PARAM=REF ;
CLASS DIABETE4 (REF="2")/PARAM=REF ;
CLASS _RFCHOL2 (REF="2")/PARAM=REF ; 
CLASS _SMOKER3 (REF="2")/PARAM=REF ;
CLASS HLTHPLN1 (REF="2")/PARAM=REF ;
MODEL CVDSTRK3(event="1") =_AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _PAINDX2 CVDCRHD4 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;

/* Table 3: crosstab */

proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _AGE_G*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   SEXVAR*CVDSTRK3  / cl col chisq ;
run;

proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _IMPRACE*CVDSTRK3  / cl col chisq ;
run;

proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _EDUCAG*CVDSTRK3  / cl col chisq ; 
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _INCOMG*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _STATE*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _PAINDX2*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDCRHD4*CVDSTRK3  / cl col chisq ;
run;

proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDSTRK3*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   BPHIGH4*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   CVDINFR4*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   DIABETE4*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _RFCHOL2*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   _SMOKER3*CVDSTRK3  / cl col chisq ;
run;
proc surveyfreq data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
tables   HLTHPLN1*CVDSTRK3  / cl col chisq ;
run;

PROC SURVEYLOGISTIC DATA=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _AGE_G (PARAM=REF REF="1") ;
CLASS SEXVAR (PARAM=REF REF="2") ;
CLASS _IMPRACE (PARAM=REF REF="2") ;
CLASS _EDUCAG (PARAM=REF REF="2") ;
CLASS _INCOMG (PARAM=REF REF="1") ;
CLASS _STATE (PARAM=REF REF="1") ;
CLASS CVDCRHD4 (PARAM=REF REF="2") ;
CLASS _PAINDX2 (PARAM=REF REF="2") ;
CLASS BPHIGH4 (PARAM=REF REF="2") ;
CLASS CVDINFR4 (PARAM=REF REF="2") ;
CLASS DIABETE4 (PARAM=REF REF="2") ;
CLASS _RFCHOL2 (PARAM=REF REF="2") ; 
CLASS _SMOKER3 (PARAM=REF REF="2") ;
CLASS HLTHPLN1 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_AGE_G SEXVAR _IMPRACE _EDUCAG _INCOMG _STATE CVDCRHD4 _PAINDX2 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;

/*Crude odds ratio*/
PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _AGE_G (PARAM=REF REF="1") ;
MODEL CVDSTRK3 =_AGE_G;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS SEXVAR (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =SEXVAR;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _IMPRACE (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_IMPRACE;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _EDUCAG (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_EDUCAG;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _INCOMG (PARAM=REF REF="1") ;
MODEL CVDSTRK3 =_INCOMG;
run;
    
PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _STATE (PARAM=REF REF="1") ;
MODEL CVDSTRK3 =_STATE;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS CVDCRHD4 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 = CVDCRHD4;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _PAINDX2 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_PAINDX2;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS BPHIGH4 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =BPHIGH4;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS CVDINFR4 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =CVDINFR4;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS DIABETE4 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =DIABETE4;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _RFCHOL2 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_RFCHOL2;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _SMOKER3 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =_SMOKER3;
run;

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS HLTHPLN1 (PARAM=REF REF="2") ;
MODEL CVDSTRK3 =HLTHPLN1;
run;

/*interaction*/

PROC SURVEYLOGISTIC DATA = brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS CVDSTRK3 (PARAM=REF REF="2") ;
MODEL _PAINDX2 =CVDSTRK3;
run;

PROC SURVEYLOGISTIC DATA=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS CVDCRHD4 (PARAM=REF REF="2") ;
CLASS CVDSTRK3 (PARAM=REF REF="2") ;
CLASS BPHIGH4 (PARAM=REF REF="2") ;
CLASS CVDINFR4 (PARAM=REF REF="2") ;
CLASS DIABETE4 (PARAM=REF REF="2") ;
CLASS _RFCHOL2 (PARAM=REF REF="2") ; 
CLASS _SMOKER3 (PARAM=REF REF="2") ;
CLASS HLTHPLN1 (PARAM=REF REF="2") ;
MODEL _PAINDX2 = CVDCRHD4 CVDSTRK3 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1;
run;

PROC SURVEYLOGISTIC DATA=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _AGE_G (PARAM=REF REF="1") ;
CLASS CVDCRHD4 (PARAM=REF REF="2") ;
CLASS CVDSTRK3 (PARAM=REF REF="2") ;
CLASS BPHIGH4 (PARAM=REF REF="2") ;
CLASS CVDINFR4 (PARAM=REF REF="2") ;
CLASS DIABETE4 (PARAM=REF REF="2") ;
CLASS _RFCHOL2 (PARAM=REF REF="2") ; 
CLASS _SMOKER3 (PARAM=REF REF="2") ;
CLASS HLTHPLN1 (PARAM=REF REF="2") ;
MODEL _PAINDX2 = _AGE_G CVDCRHD4 CVDSTRK3 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1 _AGE_G*_PAINDX2;
run;
PROC SURVEYLOGISTIC data=brr;
cluster _psu;
strata _ststr;
weight _llcpwt;
CLASS _AGE_G (REF="1")/PARAM=REF ;
CLASS SEXVAR (REF="2")/PARAM=REF ;
CLASS _IMPRACE (REF="2")/PARAM=REF ;
CLASS _EDUCAG (REF="2")/PARAM=REF ;
CLASS _INCOMG (REF="1")/PARAM=REF ;
CLASS CVDCRHD4 (REF="2")/PARAM=REF ;
CLASS _PAINDX2 (REF="2")/PARAM=REF ;
CLASS BPHIGH4 (REF="2")/PARAM=REF ;
CLASS CVDINFR4 (REF="2")/PARAM=REF ;
CLASS DIABETE4 (REF="2")/PARAM=REF ;
CLASS _RFCHOL2 (REF="2")/PARAM=REF ; 
CLASS _SMOKER3 (REF="2")/PARAM=REF ;
CLASS HLTHPLN1 (REF="2")/PARAM=REF ;
MODEL _PAINDX2 (event="1") =_AGE_G CVDCRHD4 CVDSTRK3 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1 _AGE_G*_PAINDX2;
run;

proc logistic data=brr;
CLASS _AGE_G (REF="1")/PARAM=REF ;
CLASS SEXVAR (REF="2")/PARAM=REF ;
CLASS _IMPRACE (REF="2")/PARAM=REF ;
CLASS _EDUCAG (REF="2")/PARAM=REF ;
CLASS _INCOMG (REF="1")/PARAM=REF ;
CLASS CVDCRHD4 (REF="2")/PARAM=REF ;
CLASS _PAINDX2 (REF="2")/PARAM=REF ;
CLASS BPHIGH4 (REF="2")/PARAM=REF ;
CLASS CVDINFR4 (REF="2")/PARAM=REF ;
CLASS DIABETE4 (REF="2")/PARAM=REF ;
CLASS _RFCHOL2 (REF="2")/PARAM=REF ; 
CLASS _SMOKER3 (REF="2")/PARAM=REF ;
CLASS HLTHPLN1 (REF="2")/PARAM=REF ;
MODEL _PAINDX2 (event="1") =_AGE_G CVDCRHD4 CVDSTRK3 BPHIGH4 CVDINFR4 DIABETE4 _RFCHOL2 _SMOKER3 HLTHPLN1 _AGE_G*_PAINDX2;
run;

/*Linear regression* Class 21 Biostate II*/
proc surveyreg data=ca_imp;
cluster _psu;
strata _ststr;
weight _llcpwt;
class persdoc2 (ref='No doc');
model wtkg3 = persdoc2/solution clparm;
run;
proc reg data=ca_imp_a;
model wtkg3 = persdoc2_a/clb;
run;
quit;

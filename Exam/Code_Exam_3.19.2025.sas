libname Exam "C:\Users\sumon\Desktop\Exam";
proc contents data=Exam.da2835p1;
run;

/*1. Create format to apply to categorical variables in dataset*/

proc format;
VALUE int_time  9995='(9995) ERROR IN DATA ENTRY OR BY INTERVIEWER'
                  9996='(9996) NOT INTERVIEWED' 9999='(9999) NOT ASCERTAINED' ;
  VALUE iaq_1fff  96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_boxa  1='(1) Q1 CONTAINS DATE, OR EDC/#WKS GESTATION'
                  2='(2) OTHERWISE (ANSWER 1A)' 6='(6) NOT INTERVIEWED' ;
  VALUE iaq_1a    1='(1) ON TIME' 2='(2) LATE' 3='(3) EARLY' 6='(6) NOT INTERVIEWED'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_1b    0='(0) LESS THAN ONE(1) WEEK' 96='(96) NOT INTERVIEWED' 97='(97) INAP.'
                  98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_4fff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_5fff  995='(995) DIDNT HAVE A PERIOD' 996='(996) NOT INTERVIEWED'
                  998='(998) DONT KNOW' 999='(999) NOT ASCERTAINED' ;
  VALUE iaq5flag  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE iaq_6fff  96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq6flag  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE iaq_day   1='(1) BEGINNING (1 -10)' 2='(2) MIDDLE (11 -20)'
                  3='(3) END OF MONTH (21-31)' 6='(6) NOT INTERVIEWED' 7='(7) INAP.'
                  8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_7fff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_8fff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq8flag  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE iaq_9fff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_10ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_11ff  1='(1) PRIVATE DOCTORS OR NURSE MIDWIFES OFFI'
                  2='(2) COUNTY OR CITY HEALTH DEPARTMENT'
                  3='(3) COMMUNITY OR NEIGHBORHOOD HEALTH CENTER'
                  4='(4) HMO/HEALTH MAINTENANCE ORGANIZATION'
                  5='(5) CLINIC AT WORK OR SCHOOL' 6='(6) CLINIC IN A HOSPITAL'
                  7='(7) EMERGENCY ROOM IN A HOSPITAL'
                  8='(8) NAME OF PLACE GIVEN, TYPE NOT SPECIFIED'
                  9='(9) CLINIC, NOT OTHERWISE SPECIFIED'
                  10='(10) OTHER PLACE (SPECIFY) - (MAKE PROBLEM CA'
                  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_12a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_12b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_12c   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_12d   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_12e   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_12f   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_12g   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_12h   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_12hs  1='(1) STRESS TEST, NON-STRESS TEST, FETAL MONI'
                  2='(2) CHILDBIRTH CLASSES, LAMAZE CLASSES,'
                  3='(3) OTHER SERVICES (MAKE PROBLEM CARD)' 96='(96) NOT INTERVIEWED'
                  97='(97) INAP.' 98='(98) DONT KNOW' ;
  VALUE iaq_13a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_13b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_13c   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_13d   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_13ds  1='(1) REASON(S) GIVEN (MAKE PROBLEM CARD)'
                  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW' ;
  VALUE iaq_14ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_15ff  996='(996) NOT INTERVIEWED' 998='(998) DONT KNOW' 999='(999) NOT ASCERTAINED' ;
  VALUE iaq_16ff  996='(996) NOT INTERVIEWED' 998='(998) DONT KNOW' 999='(999) NOT ASCERTAINED' ;
  VALUE iaq_17ft  96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_17in  96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_18a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_18b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_18c   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_18d   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_18ds  1='(1) ASTHMA' 2='(2) LOW BLOOD PRESSURE' 3='(3) ANEMIA'
                  4='(4) OTHER CONDITIONS (MAKE PROBLEM CARD)'
                  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW' ;
  VALUE iaq_19a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_19b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_19c   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_20a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_21a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_20b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_21b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_20c   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_21c   1='(1) YES' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_20d   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_21d   1='(1) YES' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_20e   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_21e   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_20f   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_20sp  1='(1) OTHER DISEASE NAMED (MAKE PROBLEM CARD)'
                  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW NAME' ;
  VALUE iaq_21f   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_22ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_22sp  1='(1) VAGINAL/YEAST INFECTIONS' 2='(2) RESPIRATORY INFECTIONS'
                  3='(3) OTHER REASONS (MAKE PROBLEM CARD)' 96='(96) NOT INTERVIEWED'
                  97='(97) INAP.' 98='(98) DONT KNOW NAME OF ILLNESS' ;
  VALUE iaq_23ff  0='(0) NONE' 7='(7) 7 OR MORE' 96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_24a   0='(0) NO LIVE BIRTHS' 7='(7) 7 OR MORE' 96='(96) NOT INTERVIEWED'
                  97='(97) INAP.' 98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_24b   7='(7) 7 OR MORE' 96='(96) NOT INTERVIEWED' 97='(97) INAP.'
                  98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_boxb  1='(1) Q24A 7 Q24B IS EQUAL TO Q23'
                  2='(2) Q24A 7 Q24B IS NOT EQUAL TO Q23' 6='(6) NOT INTERVIEWED'
                  7='(7) INAP.' ;
  VALUE iaq_24c   7='(7) 7 OR MORE' 96='(96) NOT INTERVIEWED' 97='(97) INAP.'
                  98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_24d   96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_24e   96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_25ff  1='(1) LIVEBIRTH' 2='(2) MISCARRIAGE' 3='(3) STILLBIRTH'
                  4='(4) INDUCED ABORTION' 5='(5) ECTOPIC PREGNANCY'
                  6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_26ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq26flg  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE iaq_boxc  1='(1) Q24A IS EQUAL TO 00' 2='(2) Q24A IS NOT EQUAL TO 00'
                  6='(6) NOT INTERVIEWED' 7='(7) INAP.' ;
  VALUE iaq_cntr  96='(96) NOT INTERVIEWED' 97='(97) INAP.' ;
  VALUE iaq_wg    99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb0f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb1f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb2f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb3f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb4f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW' ;
  VALUE iq27lb5f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb6f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb7f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb8f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27lb9f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz0f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz1f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz2f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz3f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz4f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz5f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz6f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz7f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz8f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq27oz9f  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2801ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2802ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2803ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2804ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2805ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2806ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2807ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2808ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2809ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2810ff  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iq2901ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2902ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2903ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2904ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2905ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2906ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2907ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2908ff  2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2909ff  2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iq2910ff  1='(1) YES' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_31ff  1='(1) MARRIED' 2='(2) NOT MARRIED BUT LIVING WITH A PARTNER OR'
                  3='(3) WIDOWED' 4='(4) DIVORCED' 5='(5) SEPARATED' 6='(6) NEVER MARRIED'
                  96='(96) NOT INTERVIEWED' ;
  VALUE iaq_32ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_33ff  1='(1) PUERTO RICAN' 2='(2) CUBAN'
                  3='(3) MEXICAN, CHICANA, MEXICAN AMERICAN'
                  4='(4) CENTRAL OR SOUTH AMERICAN' 5='(5) OTHER SPANISH'
                  6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_34ff  1='(1) WHITE' 2='(2) BLACK' 3='(3) ASIAN OR PACIFIC ISLANDER'
                  4='(4) ESKIMO, ALEUT OR AMERICAN INDIAN' 6='(6) NOT INTERVIEWED'
                  8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_35ff  0='(0) 7TH GRADE OR LESS' 8='(8) 8TH GRADE'
                  9='(9) 9TH GRADE (HIGH SCHOOL)' 10='(10) 10TH GRADE (HIGH SCHOOL)'
                  11='(11) 11TH GRADE (HIGH SCHOOL)' 12='(12) 12TH GRADE (HIGH SCHOOL)'
                  13='(13) 1 YR. COLLEGE' 14='(14) 2 YRS. COLLEGE' 15='(15) 3 YRS. COLLEGE'
                  16='(16) 4 YRS. COLLEGE' 17='(17) GRAD/PROFESSIONAL SCHOOL'
                  96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_36ff  0='(0) NONE' 94='(94) 1 TO 5 MONTHS, 1 SEMESTER' 95='(95) 6 TO 11 MONTHS'
                  96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_boxd  1='(1) Q35 IS 12 OR GREATER' 2='(2) Q35 IS LESS THAN 12'
                  6='(6) NOT INTERVIEWED' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_37ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_38ff  1='(1) WORKING' 2='(2) HAD A JOB BUT NOT WORKING FOR SOME REASO'
                  3='(3) UNEMPLOYED' 4='(4) FULL TIME HOMEMAKER' 5='(5) GOING TO SCHOOL'
                  6='(6) SOMETHING ELSE (SPECIFY) - MAKE PROBLEM'
                  96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_39ff  1='(1) PART - TIME' 2='(2) FULL - TIME' 6='(6) NOT INTERVIEWED'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_40ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_41ff  1='(1) SUBJECT LIVED ALONE' 96='(96) NOT INTERVIEWED' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_42ff  0='(0) NONE ARE FAMILY MEMBERS' 96='(96) NOT INTERVIEWED' 97='(97) INAP.'
                  98='(98) DONT KNOW' 99='(99) NOT ASCERTAINED' ;
  VALUE iaq_43a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_43b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_43c   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_43d   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_43e   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_43f   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_43g   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_43h   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_43i   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_boxe  1='(1) Q41 IS EQUAL TO 01' 2='(2) Q41 IS NOT EQUAL TO 01'
                  6='(6) NOT INTERVIEWED' ;
  VALUE iaq_44ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_45ff  1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_boxf  1='(1) S LIVED ONLY WITH NON-FAMILY MEMBERS (Q4'
                  2='(2) S LIVED WITH FAMILY MEMBERS (Q42 NOT 00)'
                  6='(6) NOT INTERVIEWED' 7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_46ff  1='(1) $0 TO $4999' 3='(3) $5,000 TO $6,300 $97 TO $120'
                  4='(4) $6,301 TO $8,450 $121 TO $160'
                  5='(5) $8,451 TO $10,600 $161 TO $200'
                  6='(6) $10,601 TO $12,700 $201 TO $245'
                  7='(7) $12,701 TO $14,850 $246 TO $285'
                  8='(8) $14,851 TO $17,000 $286 TO $325'
                  9='(9) $17,001 TO $19,000 $326 TO $370'
                  10='(10) $19,001 TO $21,300 $371 TO $410'
                  11='(11) $21,301 TO $25,000 $411 TO $480'
                  12='(12) $25,001 TO $30,000 $481 TO $576'
                  13='(13) $30,001 TO $40,000 $577 TO $769'
                  14='(14) $40,001 TO $50,000 $770 TO $961'
                  15='(15) $50,001 TO $75,000 $962 TO $1441'
                  16='(16) $75,001 OR MORE $1,442 OR MORE' 17='(17) REFUSED'
                  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_boxg  2='(2) ALL PEOPLE ARE RELATED (Q42 IS ONE(1) LE'
                  3='(3) NON - FAMILY MEMBERS IN HOUSEHOLD' 6='(6) NOT INTERVIEWED'
                  7='(7) INAP.' ;
  VALUE iaq_47ff  1='(1) $0-$4999/YR' 3='(3) $5,000-$6,300/YR; $97-$120/WK'
                  4='(4) $6,301-$8,450/YR; $121-$160/WK'
                  5='(5) $8,451-$10,600/YR; $161-$200/WK'
                  6='(6) $10,601-$12,700/YR; $201-$245/WK'
                  7='(7) $12,701-$14,850/YR; $246-$285/WK'
                  8='(8) $14,851-$17,000/YR; $286-$325/WK'
                  9='(9) $17,001-$19,000/YR; $326-$370/WK'
                  10='(10) $19,001-$21,300/YR; $371-$410/WK'
                  11='(11) $21,301-$25,000/YR; $411-$480/WK'
                  12='(12) $25,001-$30,000/YR; $481-$576/WK'
                  13='(13) $30,001-$40,000/YR; $577-$769/WK'
                  14='(14) $40,001-$50,000/YR; $770-$961/WK'
                  15='(15) $50,001-$75,000/YR; $962-$1441/WK'
                  16='(16) $75,001+/YR; $1,442+/WK' 17='(17) REFUSED'
                  96='(96) NOT INTERVIEWED' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE iaq_48ff  1='(1) YES' 2='(2) NO' 3='(3) PENDING' 6='(6) NOT INTERVIEWED'
                  8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE iaq_49ff  995='(995) COVERED ON MOTHERS CARD' 996='(996) NOT INTERVIEWED'
                  997='(997) NOT APPLICABLE' 998='(998) DONT KNOW' 999='(999) NOT ASCERTAINED' ;
  VALUE iaq49flg  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE iaq_50a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50am  1='(1) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50bm  2='(2) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50c   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50cm  3='(3) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50d   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50dm  4='(4) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50e   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50em  5='(5) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50f   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_50fm  1='(1) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_boxh  1='(1) SUBJECT RECEIVED PRENATAL CARE (IF Q7 EQ'
                  2='(2) SUBJECT DID NOT RECEIVE PRENATAL CARE (I'
                  6='(6) NOT INTERVIEWED' ;
  VALUE iaq_51a   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51am  1='(1) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51b   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51bm  2='(2) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51c   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51cm  3='(3) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51d   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51dm  4='(4) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51e   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51em  5='(5) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51f   1='(1) YES' 2='(2) NO' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE iaq_51fm  1='(1) MAIN SOURCE' 6='(6) NOT INTERVIEWED' 7='(7) INAP.' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_time  9996='(9996) NOT INTERVIEWED' 9999='(9999) NOT ASCERTAINED' ;
  VALUE lang      1='(1) ENGLISH' 2='(2) SPANISH' 6='(6) NOT INTERVIEWED' ;
  VALUE iaq_d2ff  96='(96) NOT INTERVIEWED' ;
  VALUE agecalc   96='(96) NOT INTERVIEWED' 99='(99) NOT ASCERTAINED' ;
  VALUE newlbs    96='(96) NOT INTERVIEWED' 97='(97) INAP.' 99='(99) NOT ASCERTAINED' ;
  VALUE newozs    96='(96) NOT INTERVIEWED' 97='(97) INAP.' 99='(99) NOT ASCERTAINED' ;
  VALUE newgrams  9996='(9996) NOT INTERVIEWED' 9997='(9997) INAP.' 9999='(9999) NOT ASCERTAINED' ;
  VALUE iaq_ec    996='(996) NOT INTERVIEWED' 999='(999) NOT ASCERTAINED' ;
  VALUE infnum    1='(1) ONLY 1 INFANT, WEIGHT GIVEN ABOVE'
                  2='(2) TWINS, SECOND WEIGHT BELOW'
                  3='(3) TRIPLETS, SECOND AND THIRD WEIGHTS BELOW'
                  4='(4) QUADRUPLETS, SECOND, THIRD, FOURTH WEIGH'
                  6='(6) NOT INTERVIEWED' ;
  VALUE newlbs2f  96='(96) NOT INTERVIEWED' 97='(97) NOT APPLICABLE'
                  99='(99) NOT ASCERTAINED' ;
  VALUE newozs2f  96='(96) NOT INTERVIEWED' 97='(97) NOT APPLICABLE'
                  99='(99) NOT ASCERTAINED' ;
  VALUE newgramf  9996='(9996) NOT INTERVIEWED' 9997='(9997) NOT APPLICABLE'
                  9999='(9999) NOT ASCERTAINED' ;
  VALUE ghflag    6='(6) NOT INTERVIEWED' 7='(7) INAP.' ;
  VALUE saq_1a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' 98='(98) DONT KNOW' ;
  VALUE saq_1b    1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 9='(9) NOT ASCERTAINED' 98='(98) DONT KNOW' ;
  VALUE saq_1c    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_1d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_2a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' 98='(98) DONT KNOW' ;
  VALUE saq_2b    1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 9='(9) NOT ASCERTAINED' 98='(98) DONT KNOW' ;
  VALUE saq_2c    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_2d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_3a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_3b    1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_3c    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_3d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_4a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_4b    1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_4c    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_4d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_5a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_5b    1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_5c    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_5d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_6a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_6b    1='(1) EVERY DAY' 3='(3) 1 OR 2 DAYS A WEEK'
                  6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' ;
  VALUE saq_6c    6='(6) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_6d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_7a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_7b    1='(1) EVERY DAY' 3='(3) 1 OR 2 DAYS A WEEK'
                  6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_7c    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_7d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_8a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_8b    1='(1) EVERY DAY' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_8c    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_8d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_9a    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_9b    1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_9c    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_9d    96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_10a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_10b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_10c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_10d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_11a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_11b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_11c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_11d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_12a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_12b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_12c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_12d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_13a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_13b   3='(3) 1 OR 2 DAYS A WEEK' 4='(4) LESS THAN ONE DAY A WEEK'
                  6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' ;
  VALUE saq_13c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_13d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_14a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_14b   3='(3) 1 OR 2 DAYS A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_14c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_14d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_15a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_15b   1='(1) EVERY DAY' 4='(4) LESS THAN ONE DAY A WEEK'
                  6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' ;
  VALUE saq_15c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_15d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_16a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_16b   3='(3) 1 OR 2 DAYS A WEEK' 4='(4) LESS THAN ONE DAY A WEEK'
                  6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' ;
  VALUE saq_16c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_16d   8='(8) DONT KNOW' 96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_17a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_17b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_17c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_17d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_18a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_18b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_18c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_18d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_19a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_19b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_19c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_19d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_20a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_20b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_20c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_20d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_21a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_21b   2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_21c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_21d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_22a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_22b   1='(1) EVERY DAY' 3='(3) 1 OR 2 DAYS A WEEK'
                  6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' ;
  VALUE saq_22c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_22d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_23a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_23b   1='(1) EVERY DAY' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' ;
  VALUE saq_23c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_23d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_24a   2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_24b   6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' ;
  VALUE saq_24c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_24d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' ;
  VALUE saq_25a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_25b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_25c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_25d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_26a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_26b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_26c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_26d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_27a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_27b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE saq_27c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_27d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_28a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_28b   3='(3) 1 OR 2 DAYS A WEEK' 4='(4) LESS THAN ONE DAY A WEEK'
                  6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_28c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_28d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_29a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_29b   3='(3) 1 OR 2 DAYS A WEEK' 4='(4) LESS THAN ONE DAY A WEEK'
                  6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.' ;
  VALUE saq_29c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_29d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_30a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.'
                  8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_30b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_30c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_30d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_31a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) INAP.'
                  8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_31b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_31c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_31d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_32a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 7='(7) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_32b   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 OR 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_32c   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_32d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_33a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_33b   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_33c   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 TO 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_33d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_33e   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_34a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_34b   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_34c   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 TO 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_34d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_34e   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_35a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_35b   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_35c   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 TO 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_35d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_35e   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_36a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_36b   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_36c   1='(1) EVERY DAY' 2='(2) 3 TO 6 DAYS A WEEK' 3='(3) 1 TO 2 DAYS A WEEK'
                  4='(4) LESS THAN ONE DAY A WEEK' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' 8='(8) DONT KNOW' 9='(9) NOT ASCERTAINED' ;
  VALUE saq_36d   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_36e   96='(96) NO SELF-ADMINISTERED QUEX' 97='(97) INAP.' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_37h   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_37i   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_38ff  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_39ff  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43a   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43b   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43c   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43d   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43e   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43f   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43g   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43h   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43i   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43j   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43k   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_43l   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_44ff  1='(1) WITHIN THE PAST YEAR'
                  2='(2) 1 OR MORE YEARS AGO, BUT LESS THAN 3 YEA'
                  3='(3) 3 OR MORE YEARS AGO' 4='(4) NEVER SMOKED'
                  6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) NOT SURE/DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_45ff  0='(0) NEVER USED MARIJUANA OR HASHISH'
                  96='(96) NO SELF-ADMINISTERED QUEX' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_46ff  1='(1) WITHIN THE PAST YEAR'
                  2='(2) 1 OR MORE YEARS AGO, BUT LESS THAN 3 YEA'
                  3='(3) 3 OR MORE YEARS AGO' 4='(4) NEVER USED MARIJUANA OR HASHISH'
                  6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE saq_47ff  0='(0) NEVER USED COCAINE IN ANY FORM'
                  96='(96) NO SELF-ADMINISTERED QUEX' 98='(98) DONT KNOW'
                  99='(99) NOT ASCERTAINED' ;
  VALUE saq_48ff  1='(1) WITHIN THE PAST YEAR'
                  2='(2) 1 OR MORE YEARS AGO, BUT LESS THAN 3 YEA'
                  3='(3) 3 OR MORE YEAR AGO' 4='(4) NEVER USED COCAINE'
                  6='(6) NO SELF-ADMINISTERED QUEX' 8='(8) DONT KNOW'
                  9='(9) NOT ASCERTAINED' ;
  VALUE flag44ff  1='(1) DATA INCONSISTENT' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE flag46ff  1='(1) DATA INCONSISTENT' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE flag48ff  1='(1) DATA INCONSISTENT' 6='(6) NO SELF-ADMINISTERED QUEX'
                  7='(7) INAP.' ;
  VALUE f_agegrf  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE f_raceth  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE iagegrpf  1='(1) UNDER 18 YEARS' 2='(2) 18-24 YEARS' 3='(3) 25-29 YEARS'
                  4='(4) 30-34 YEARS' 5='(5) 35-39 YEARS' 6='(6) 40+ YEARS' ;
  VALUE stratum   1='(1) METRO-HISPANIC' 2='(2) METRO-OTHER' 3='(3) NONMETRO' ;
  VALUE status    1='(1) ELIGIBLE RESPONDENT' 2='(2) ELIGIBLE NONRESPONDENT'
                  3='(3) NO RECORD IN WEIGHT FILE NONRESPONDENT'
                  4='(4) NONRESPONDENT, ELIGIBILITY STATUS UNKNOW' ;
  VALUE i_raceth  1='(1) WHITE' 2='(2) BLACK' 3='(3) HISPANIC' 4='(4) OTHER' ;
  VALUE numbabes  6='(6) NO RECORD IN WEIGHT FILE' ;
  VALUE nrfctr    0='(0) ZERO' 1='(1) EXACTLY ONE' 2='(2) MORE THAN ONE' 9='(9) BLANK' ;
  VALUE trmfctr   9.0000='(9.0000) BLANK' ;
  VALUE resp      1='(1) SAQ RESPONDENT' 2='(2) IAQ/NONSAQ RESPONDENT'
                  3='(3) NONRESPONDENT' 9='(9) BLANK = KNOWN INELGIBLE' ;
  VALUE alc3tup   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE any3tup   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cig3tup   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cok3tup   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE coka3tup  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE crk3tup   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE done3tup  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE her3tup   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE meth3tup  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thc3tup   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE income3f  1='(1) NONE - $14,850' 2='(2) $14,851 - $30,000' 3='(3) $30,001 +'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE gageflag  0='(0) NOT COMPUTED' 2='(2) COMPUTED' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE gage      96='(96) NO SELF-ADMINISTERED QUEX' ;
  VALUE cigpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alcpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thcpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE crkpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cokpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE herpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE donepreg  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE methpreg  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE allpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cigever   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thcever   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cokever   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE racetflg  0='(0) NOT IMPUTED' 1='(1) IMPUTED' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE payflag   0='(0) NOT IMPUTED' 1='(1) IMPUTED' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE vstsflag  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE metro     1='(1) METRO HOSPITAL' 2='(2) NON-METRO HOSPITAL'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE educflag  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE emplflag  0='(0) NOT IMPUTED' 1='(1) IMPUTED' ;
  VALUE raceup    1='(1) WHITE' 2='(2) BLACK' 3='(3) HISPANIC' 4='(4) OTHER'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE age5ffff  1='(1) < 18 YEARS' 2='(2) 18 - 24 YEARS' 3='(3) 25 - 29 YEARS'
                  4='(4) 30 - 34 YEARS' 5='(5) 35 +YEARS'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE age3ffff  1='(1) < 25 YEARS' 2='(2) 25 - 29 YEARS' 3='(3) 30 + YEARS'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE payup     1='(1) PRIVATE' 2='(2) PUBLIC' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE maritalf  1='(1) MARRIED' 2='(2) NOT MARRIED' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE marita0f  1='(1) MARRIED' 2='(2) LIVING WITH PERSON'
                  3='(3) OTHER (WIDOWED,DIVORCED,SEPARATED)' 4='(4) NEVER MARRIED'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE educ      1='(1) < 12 YEARS' 2='(2) 12 YEARS' 3='(3) 13 - 15 YEARS'
                  4='(4) 16 + YEARS' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE educ2fff  1='(1) WORKING' 2='(2) NOT WORKING' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE empl1fff  1='(1) WORKING' 2='(2) NOT WORKING' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE empl2fff  1='(1) WORKING' 2='(2) UNEMPLOYED-LOOKING'
                  3='(3) UNEMPLOYED-NOT LOOKING' 4='(4) HOMEMAKER'
                  5='(5) ATTENDING SCHOOL' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cokapreg  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE halpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE inhpreg   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE ilseda    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE iltranq   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE ilamphet  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE ilanal    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE ilpsy     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE seda      1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE tranq     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE amphet    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE anal      1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE scrpsy    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cigyr     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alcyr     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thcyr     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE crkyr     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cokyr     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE heryr     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE doneyr    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE methyr    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cokayr    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE allyr     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alcig     1='(1) NONE' 2='(2) ALCOHOL ONLY' 3='(3) CIGARETTES ONLY'
                  4='(4) BOTH ALCOHOL AND CIGARETTES'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE any3m     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thc3m     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE crk3m     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cok3m     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE coka3m    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE her3m     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE done3m    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE meth3m    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alc3m     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cig3m     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE any1t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thc1t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE crk1t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cok1t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE coka1t    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE her1t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE done1t    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE meth1t    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alc1t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cig1t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE any2t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thc2t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE crk2t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cok2t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE coka2t    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE her2t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE done2t    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE meth2t    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alc2t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cig2t     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE any3d     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thc3d     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE crk3d     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cok3d     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE coka3d    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE her3d     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE done3d    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE meth3d    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alc3d     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cig3d     1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cig1ts    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cig3tc    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alc1ts    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE alc3tc    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE newvol    996='(996) NO SELF-ADMINISTERED QUEX' 999='(999) NOT ASCERTAINED' ;
  VALUE cokes     0='(0) NOT IMPUTED' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cokeq     0='(0) NOT DONE' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  3='(3) INSUFFICIENT VOLUME' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE coken     6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE amphs     1='(1) POSITIVE' 2='(2) NEGATIVE' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE amphq     0='(0) NOT DONE' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  3='(3) INSUFFICIENT VOLUME' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE amphn     0='(0) NOT DONE' 2='(2) NEGATIVE' 3='(3) INSUFFICIENT VOLUME'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE methq     0='(0) NOT DONE' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  3='(3) INSUFFICIENT VOLUME' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE methn     0='(0) NOT DONE' 2='(2) NEGATIVE' 3='(3) INSUFFICIENT VOLUME'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thcs      0='(0) NOT DONE' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thcq      0='(0) NOT DONE' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  3='(3) INSUFFICIENT VOLUME' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thcn      0='(0) NOT DONE' 2='(2) NEGATIVE' 3='(3) INSUFFICIENT VOLUME'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE ops       0='(0) NOT DONE' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE codq      0='(0) NOT DONE' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  3='(3) INSUFFICIENT VOLUME' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE codn      0='(0) NOT DONE' 2='(2) NEGATIVE' 3='(3) INSUFFICIENT VOLUME'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE morphq    0='(0) NOT DONE' 1='(1) POSITIVE' 2='(2) NEGATIVE'
                  3='(3) INSUFFICIENT VOLUME' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE morphn    0='(0) NOT DONE' 2='(2) NEGATIVE' 3='(3) INSUFFICIENT VOLUME'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE amphet3d  1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE anal3d    1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE ameth3d   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE hanal3d   1='(1) YES' 2='(2) NO' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thctest   1='(1) POSITIVE' 2='(2) NEGATIVE' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE coketest  1='(1) POSITIVE' 2='(2) NEGATIVE' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE amphtest  1='(1) POSITIVE' 2='(2) NEGATIVE' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE optest    1='(1) POSITIVE' 2='(2) NEGATIVE' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE anytest   1='(1) POSITIVE' 2='(2) NEGATIVE' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE thcrt     1='(1) REPORTED USE OR POSITIVE TEST RESULT'
                  2='(2) NO REPORTED USE AND NEGATIVE OR MISSING'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE cokert    1='(1) REPORTED USE OR POSITIVE TEST RESULT'
                  2='(2) NO REPORTED USE AND NEGATIVE OR MISSING'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE size      1='(1) < 1,000' 2='(2) 1,000 - 1,999' 3='(3) 2,000 - 2,999' 4='(4) 3,000 +'
                  6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE income    1='(1) NONE' 2='(2) UNDER $5,000' 3='(3) $5,000 - $6,300'
                  4='(4) $6,301 - $8,450' 5='(5) $8.451 - $10,600'
                  6='(6) $$10,601 - $12,700' 7='(7) $12,701 - $14,850'
                  8='(8) $14,851 - $17,000' 9='(9) $17,001 - $19,000'
                  10='(10) $19,001 - $21,300' 11='(11) $21,301 - $25,000'
                  12='(12) $25,001 - $30,000' 13='(13) $30,001 - $40,000'
                  14='(14) $40,001 - $50,000' 15='(15) $50,001 - $75,000'
                  16='(16) $75,001 +' 96='(96) NO SELF-ADMINISTERED QUEX' ;
  VALUE mulpregf  0='(0) NO REPORTED USE' 1='(1) USED 1 ILLICIT DRUG'
                  2='(2) USED 2 ILLICIT DRUGS' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE age2ffff  1='(1) <25 YEARS' 2='(2) 25 + YEARS' 6='(6) NO SELF-ADMINISTERED QUEX' ;
  VALUE incflag   0='(0) NOT IMPUTED' 1='(1) IMPUTED' 6='(6) NO SELF ADMINISTERED QUEX' ;
  VALUE int_flg   0='(0) No' 1='(1) Yes' ;
  VALUE int_stat  1='(1) Both IAQ and SAQ' 2='(2) Only IAQ' 3='(3) Neither IAQ or SAQ' ;
  VALUE saq_flg   0='(0) No' 1='(1) Yes' ;
  VALUE fileiaq   0='(0) NO' 1='(1) YES' ;
  VALUE filerpta  0='(0) NO' 1='(1) YES' ;
  VALUE filesaq   0='(0) NO' 1='(1) YES' ;
  VALUE filewta   0='(0) NO' 1='(1) YES' ;
RUN;

/* Ensure SAS searches for formats in the WORK library */
options fmtsearch=(work);

/*2. Create working copies of dataset with format applied*/

data Exam.da2835p1_a;
    set Exam.da2835p1;
   IF (INT_TIME >= 9995) THEN INT_TIME = .;
   IF (IAQ_1 >= 95) THEN IAQ_1 = .;
   IF (IAQ_BOXA >= 6) THEN IAQ_BOXA = .;
   IF (IAQ_1A >= 6) THEN IAQ_1A = .;
   IF (IAQ_1B >= 96) THEN IAQ_1B = .;
   IF (IAQ_4 >= 96) THEN IAQ_4 = .;
   IF (IAQ_5 >= 995) THEN IAQ_5 = .;
   IF (IAQ5FLAG >= 6) THEN IAQ5FLAG = .;
   IF (IAQ_6 >= 96) THEN IAQ_6 = .;
   IF (IAQ6FLAG >= 6) THEN IAQ6FLAG = .;
   IF (IAQ_DAY >= 6) THEN IAQ_DAY = .;
   IF (IAQ_7 >= 6) THEN IAQ_7 = .;
   IF (IAQ_8 >= 96) THEN IAQ_8 = .;
   IF (IAQ8FLAG >= 6) THEN IAQ8FLAG = .;
   IF (IAQ_9 >= 96) THEN IAQ_9 = .;
   IF (IAQ_10 >= 95) THEN IAQ_10 = .;
   IF (IAQ_11 >= 96) THEN IAQ_11 = .;
   IF (IAQ_12A >= 6) THEN IAQ_12A = .;
   IF (IAQ_12B >= 6) THEN IAQ_12B = .;
   IF (IAQ_12C >= 6) THEN IAQ_12C = .;
   IF (IAQ_12D >= 6) THEN IAQ_12D = .;
   IF (IAQ_12E >= 6) THEN IAQ_12E = .;
   IF (IAQ_12F >= 6) THEN IAQ_12F = .;
   IF (IAQ_12G >= 6) THEN IAQ_12G = .;
   IF (IAQ_12H >= 6) THEN IAQ_12H = .;
   IF (IAQ_12HS >= 96) THEN IAQ_12HS = .;
   IF (IAQ_13A >= 6) THEN IAQ_13A = .;
   IF (IAQ_13B >= 6) THEN IAQ_13B = .;
   IF (IAQ_13C >= 6) THEN IAQ_13C = .;
   IF (IAQ_13D >= 6) THEN IAQ_13D = .;
   IF (IAQ_13DS >= 96) THEN IAQ_13DS = .;
   IF (IAQ_14 >= 6) THEN IAQ_14 = .;
   IF (IAQ_15 >= 995) THEN IAQ_15 = .;
   IF (IAQ_16 >= 995) THEN IAQ_16 = .;
   IF (IAQ_17FT >= 96) THEN IAQ_17FT = .;
   IF (IAQ_17IN >= 96) THEN IAQ_17IN = .;
   IF (IAQ_18A >= 6) THEN IAQ_18A = .;
   IF (IAQ_18B >= 6) THEN IAQ_18B = .;
   IF (IAQ_18C >= 6) THEN IAQ_18C = .;
   IF (IAQ_18D >= 6) THEN IAQ_18D = .;
   IF (IAQ_18DS >= 96) THEN IAQ_18DS = .;
   IF (IAQ_19A >= 6) THEN IAQ_19A = .;
   IF (IAQ_19B >= 6) THEN IAQ_19B = .;
   IF (IAQ_19C >= 6) THEN IAQ_19C = .;
   IF (IAQ_20A >= 6) THEN IAQ_20A = .;
   IF (IAQ_21A >= 6) THEN IAQ_21A = .;
   IF (IAQ_20B >= 6) THEN IAQ_20B = .;
   IF (IAQ_21B >= 6) THEN IAQ_21B = .;
   IF (IAQ_20C >= 6) THEN IAQ_20C = .;
   IF (IAQ_21C >= 6) THEN IAQ_21C = .;
   IF (IAQ_20D >= 6) THEN IAQ_20D = .;
   IF (IAQ_21D >= 6) THEN IAQ_21D = .;
   IF (IAQ_20E >= 6) THEN IAQ_20E = .;
   IF (IAQ_21E >= 6) THEN IAQ_21E = .;
   IF (IAQ_20F >= 6) THEN IAQ_20F = .;
   IF (IAQ_20SP >= 96) THEN IAQ_20SP = .;
   IF (IAQ_21F >= 6) THEN IAQ_21F = .;
   IF (IAQ_22 >= 6) THEN IAQ_22 = .;
   IF (IAQ_22SP >= 96) THEN IAQ_22SP = .;
   IF (IAQ_23 >= 96) THEN IAQ_23 = .;
   IF (IAQ_24A >= 96) THEN IAQ_24A = .;
   IF (IAQ_24B >= 96) THEN IAQ_24B = .;
   IF (IAQ_BOXB >= 6) THEN IAQ_BOXB = .;
   IF (IAQ_24C >= 96) THEN IAQ_24C = .;
   IF (IAQ_24D >= 96) THEN IAQ_24D = .;
   IF (IAQ_24E >= 96) THEN IAQ_24E = .;
   IF (IAQ_25 >= 6) THEN IAQ_25 = .;
   IF (IAQ_26 >= 96) THEN IAQ_26 = .;
   IF (IAQ26FLG >= 6) THEN IAQ26FLG = .;
   IF (IAQ_BOXC >= 6) THEN IAQ_BOXC = .;
   IF (IAQ_CNTR >= 96) THEN IAQ_CNTR = .;
   IF (IAQ_WG >= 96) THEN IAQ_WG = .;
   IF (IQ27LB01 >= 96) THEN IQ27LB01 = .;
   IF (IQ27LB02 >= 96) THEN IQ27LB02 = .;
   IF (IQ27LB03 >= 96) THEN IQ27LB03 = .;
   IF (IQ27LB04 >= 96) THEN IQ27LB04 = .;
   IF (IQ27LB05 >= 96) THEN IQ27LB05 = .;
   IF (IQ27LB06 >= 96) THEN IQ27LB06 = .;
   IF (IQ27LB07 >= 96) THEN IQ27LB07 = .;
   IF (IQ27LB08 >= 96) THEN IQ27LB08 = .;
   IF (IQ27LB09 >= 96) THEN IQ27LB09 = .;
   IF (IQ27LB10 >= 96) THEN IQ27LB10 = .;
   IF (IQ27OZ01 >= 96) THEN IQ27OZ01 = .;
   IF (IQ27OZ02 >= 96) THEN IQ27OZ02 = .;
   IF (IQ27OZ03 >= 96) THEN IQ27OZ03 = .;
   IF (IQ27OZ04 >= 96) THEN IQ27OZ04 = .;
   IF (IQ27OZ05 >= 96) THEN IQ27OZ05 = .;
   IF (IQ27OZ06 >= 96) THEN IQ27OZ06 = .;
   IF (IQ27OZ07 >= 96) THEN IQ27OZ07 = .;
   IF (IQ27OZ08 >= 96) THEN IQ27OZ08 = .;
   IF (IQ27OZ09 >= 96) THEN IQ27OZ09 = .;
   IF (IQ27OZ10 >= 96) THEN IQ27OZ10 = .;
   IF (IQ2801 >= 96) THEN IQ2801 = .;
   IF (IQ2802 >= 96) THEN IQ2802 = .;
   IF (IQ2803 >= 96) THEN IQ2803 = .;
   IF (IQ2804 >= 96) THEN IQ2804 = .;
   IF (IQ2805 >= 96) THEN IQ2805 = .;
   IF (IQ2806 >= 96) THEN IQ2806 = .;
   IF (IQ2807 >= 96) THEN IQ2807 = .;
   IF (IQ2808 >= 96) THEN IQ2808 = .;
   IF (IQ2809 >= 96) THEN IQ2809 = .;
   IF (IQ2810 >= 96) THEN IQ2810 = .;
   IF (IQ2901 >= 6) THEN IQ2901 = .;
   IF (IQ2902 >= 6) THEN IQ2902 = .;
   IF (IQ2903 >= 6) THEN IQ2903 = .;
   IF (IQ2904 >= 6) THEN IQ2904 = .;
   IF (IQ2905 >= 6) THEN IQ2905 = .;
   IF (IQ2906 >= 6) THEN IQ2906 = .;
   IF (IQ2907 >= 6) THEN IQ2907 = .;
   IF (IQ2908 >= 6) THEN IQ2908 = .;
   IF (IQ2909 >= 6) THEN IQ2909 = .;
   IF (IQ2910 >= 6) THEN IQ2910 = .;
   IF (IAQ_31 >= 96) THEN IAQ_31 = .;
   IF (IAQ_32 >= 6) THEN IAQ_32 = .;
   IF (IAQ_33 >= 6) THEN IAQ_33 = .;
   IF (IAQ_34 >= 6) THEN IAQ_34 = .;
   IF (IAQ_35 >= 96) THEN IAQ_35 = .;
   IF (IAQ_36 >= 96) THEN IAQ_36 = .;
   IF (IAQ_BOXD >= 6) THEN IAQ_BOXD = .;
   IF (IAQ_37 >= 6) THEN IAQ_37 = .;
   IF (IAQ_38 >= 96) THEN IAQ_38 = .;
   IF (IAQ_39 >= 6) THEN IAQ_39 = .;
   IF (IAQ_40 >= 6) THEN IAQ_40 = .;
   IF (IAQ_41 >= 96) THEN IAQ_41 = .;
   IF (IAQ_42 >= 96) THEN IAQ_42 = .;
   IF (IAQ_43A >= 6) THEN IAQ_43A = .;
   IF (IAQ_43B >= 6) THEN IAQ_43B = .;
   IF (IAQ_43C >= 6) THEN IAQ_43C = .;
   IF (IAQ_43D >= 6) THEN IAQ_43D = .;
   IF (IAQ_43E >= 6) THEN IAQ_43E = .;
   IF (IAQ_43F >= 6) THEN IAQ_43F = .;
   IF (IAQ_43G >= 6) THEN IAQ_43G = .;
   IF (IAQ_43H >= 6) THEN IAQ_43H = .;
   IF (IAQ_43I >= 6) THEN IAQ_43I = .;
   IF (IAQ_BOXE >= 6) THEN IAQ_BOXE = .;
   IF (IAQ_44 >= 6) THEN IAQ_44 = .;
   IF (IAQ_45 >= 6) THEN IAQ_45 = .;
   IF (IAQ_BOXF >= 6) THEN IAQ_BOXF = .;
   IF (IAQ_46 >= 17) THEN IAQ_46 = .;
   IF (IAQ_BOXG >= 6) THEN IAQ_BOXG = .;
   IF (IAQ_47 >= 17) THEN IAQ_47 = .;
   IF (IAQ_48 >= 6) THEN IAQ_48 = .;
   IF (IAQ_49 >= 995) THEN IAQ_49 = .;
   IF (IAQ49FLG >= 6) THEN IAQ49FLG = .;
   IF (IAQ_50A >= 6) THEN IAQ_50A = .;
   IF (IAQ_50AM >= 6) THEN IAQ_50AM = .;
   IF (IAQ_50B >= 6) THEN IAQ_50B = .;
   IF (IAQ_50BM >= 6) THEN IAQ_50BM = .;
   IF (IAQ_50C >= 6) THEN IAQ_50C = .;
   IF (IAQ_50CM >= 6) THEN IAQ_50CM = .;
   IF (IAQ_50D >= 6) THEN IAQ_50D = .;
   IF (IAQ_50DM >= 6) THEN IAQ_50DM = .;
   IF (IAQ_50E >= 6) THEN IAQ_50E = .;
   IF (IAQ_50EM >= 6) THEN IAQ_50EM = .;
   IF (IAQ_50F >= 6) THEN IAQ_50F = .;
   IF (IAQ_50FM >= 6) THEN IAQ_50FM = .;
   IF (IAQ_BOXH >= 6) THEN IAQ_BOXH = .;
   IF (IAQ_51A >= 6) THEN IAQ_51A = .;
   IF (IAQ_51AM >= 6) THEN IAQ_51AM = .;
   IF (IAQ_51B >= 6) THEN IAQ_51B = .;
   IF (IAQ_51BM >= 6) THEN IAQ_51BM = .;
   IF (IAQ_51C >= 6) THEN IAQ_51C = .;
   IF (IAQ_51CM >= 6) THEN IAQ_51CM = .;
   IF (IAQ_51D >= 6) THEN IAQ_51D = .;
   IF (IAQ_51DM >= 6) THEN IAQ_51DM = .;
   IF (IAQ_51E >= 6) THEN IAQ_51E = .;
   IF (IAQ_51EM >= 6) THEN IAQ_51EM = .;
   IF (IAQ_51F >= 6) THEN IAQ_51F = .;
   IF (IAQ_51FM >= 6) THEN IAQ_51FM = .;
   IF (SAQ_TIME >= 9995) THEN SAQ_TIME = .;
   IF (LANG >= 6) THEN LANG = .;
   IF (IAQ_D2 >= 96) THEN IAQ_D2 = .;
   IF (AGECALC >= 96) THEN AGECALC = .;
   IF (NEWLBS >= 96) THEN NEWLBS = .;
   IF (NEWOZS >= 96) THEN NEWOZS = .;
   IF (NEWGRAMS >= 9995) THEN NEWGRAMS = .;
   IF (IAQ_EC >= 995) THEN IAQ_EC = .;
   IF (INFNUM >= 6) THEN INFNUM = .;
   IF (NEWLBS2 >= 96) THEN NEWLBS2 = .;
   IF (NEWOZS2 >= 96) THEN NEWOZS2 = .;
   IF (NEWGRAM2 >= 9995) THEN NEWGRAM2 = .;
   IF (GHFLAG >= 6) THEN GHFLAG = .;
   IF (SAQ_1A >= 6) THEN SAQ_1A = .;
   IF (SAQ_1B >= 6) THEN SAQ_1B = .;
   IF (SAQ_1C >= 96) THEN SAQ_1C = .;
   IF (SAQ_1D >= 96) THEN SAQ_1D = .;
   IF (SAQ_2A >= 6) THEN SAQ_2A = .;
   IF (SAQ_2B >= 6) THEN SAQ_2B = .;
   IF (SAQ_2C >= 96) THEN SAQ_2C = .;
   IF (SAQ_2D >= 96) THEN SAQ_2D = .;
   IF (SAQ_3A >= 6) THEN SAQ_3A = .;
   IF (SAQ_3B >= 6) THEN SAQ_3B = .;
   IF (SAQ_3C >= 96) THEN SAQ_3C = .;
   IF (SAQ_3D >= 96) THEN SAQ_3D = .;
   IF (SAQ_4A >= 6) THEN SAQ_4A = .;
   IF (SAQ_4B >= 6) THEN SAQ_4B = .;
   IF (SAQ_4C >= 96) THEN SAQ_4C = .;
   IF (SAQ_4D >= 96) THEN SAQ_4D = .;
   IF (SAQ_5A >= 6) THEN SAQ_5A = .;
   IF (SAQ_5B >= 6) THEN SAQ_5B = .;
   IF (SAQ_5C >= 96) THEN SAQ_5C = .;
   IF (SAQ_5D >= 96) THEN SAQ_5D = .;
   IF (SAQ_6A >= 6) THEN SAQ_6A = .;
   IF (SAQ_6B >= 6) THEN SAQ_6B = .;
   IF (SAQ_6C >= 96) THEN SAQ_6C = .;
   IF (SAQ_6D >= 96) THEN SAQ_6D = .;
   IF (SAQ_7A >= 6) THEN SAQ_7A = .;
   IF (SAQ_7B >= 6) THEN SAQ_7B = .;
   IF (SAQ_7C >= 96) THEN SAQ_7C = .;
   IF (SAQ_7D >= 96) THEN SAQ_7D = .;
   IF (SAQ_8A >= 6) THEN SAQ_8A = .;
   IF (SAQ_8B >= 6) THEN SAQ_8B = .;
   IF (SAQ_8C >= 96) THEN SAQ_8C = .;
   IF (SAQ_8D >= 96) THEN SAQ_8D = .;
   IF (SAQ_9A >= 6) THEN SAQ_9A = .;
   IF (SAQ_9B >= 6) THEN SAQ_9B = .;
   IF (SAQ_9C >= 96) THEN SAQ_9C = .;
   IF (SAQ_9D >= 96) THEN SAQ_9D = .;
   IF (SAQ_10A >= 6) THEN SAQ_10A = .;
   IF (SAQ_10B >= 6) THEN SAQ_10B = .;
   IF (SAQ_10C >= 96) THEN SAQ_10C = .;
   IF (SAQ_10D >= 96) THEN SAQ_10D = .;
   IF (SAQ_11A >= 6) THEN SAQ_11A = .;
   IF (SAQ_11B >= 6) THEN SAQ_11B = .;
   IF (SAQ_11C >= 96) THEN SAQ_11C = .;
   IF (SAQ_11D >= 96) THEN SAQ_11D = .;
   IF (SAQ_12A >= 6) THEN SAQ_12A = .;
   IF (SAQ_12B >= 6) THEN SAQ_12B = .;
   IF (SAQ_12C >= 96) THEN SAQ_12C = .;
   IF (SAQ_12D >= 96) THEN SAQ_12D = .;
   IF (SAQ_13A >= 6) THEN SAQ_13A = .;
   IF (SAQ_13B >= 6) THEN SAQ_13B = .;
   IF (SAQ_13C >= 96) THEN SAQ_13C = .;
   IF (SAQ_13D >= 96) THEN SAQ_13D = .;
   IF (SAQ_14A >= 6) THEN SAQ_14A = .;
   IF (SAQ_14B >= 6) THEN SAQ_14B = .;
   IF (SAQ_14C >= 96) THEN SAQ_14C = .;
   IF (SAQ_14D >= 96) THEN SAQ_14D = .;
   IF (SAQ_15A >= 6) THEN SAQ_15A = .;
   IF (SAQ_15B >= 6) THEN SAQ_15B = .;
   IF (SAQ_15C >= 96) THEN SAQ_15C = .;
   IF (SAQ_15D >= 96) THEN SAQ_15D = .;
   IF (SAQ_16A >= 6) THEN SAQ_16A = .;
   IF (SAQ_16B >= 6) THEN SAQ_16B = .;
   IF (SAQ_16C >= 96) THEN SAQ_16C = .;
   IF (SAQ_16D >= 96) THEN SAQ_16D = .;
   IF (SAQ_17A >= 6) THEN SAQ_17A = .;
   IF (SAQ_17B >= 6) THEN SAQ_17B = .;
   IF (SAQ_17C >= 96) THEN SAQ_17C = .;
   IF (SAQ_17D >= 96) THEN SAQ_17D = .;
   IF (SAQ_18A >= 6) THEN SAQ_18A = .;
   IF (SAQ_18B >= 6) THEN SAQ_18B = .;
   IF (SAQ_18C >= 96) THEN SAQ_18C = .;
   IF (SAQ_18D >= 96) THEN SAQ_18D = .;
   IF (SAQ_19A >= 6) THEN SAQ_19A = .;
   IF (SAQ_19B >= 6) THEN SAQ_19B = .;
   IF (SAQ_19C >= 96) THEN SAQ_19C = .;
   IF (SAQ_19D >= 96) THEN SAQ_19D = .;
   IF (SAQ_20A >= 6) THEN SAQ_20A = .;
   IF (SAQ_20B >= 6) THEN SAQ_20B = .;
   IF (SAQ_20C >= 96) THEN SAQ_20C = .;
   IF (SAQ_20D >= 96) THEN SAQ_20D = .;
   IF (SAQ_21A >= 6) THEN SAQ_21A = .;
   IF (SAQ_21B >= 6) THEN SAQ_21B = .;
   IF (SAQ_21C >= 96) THEN SAQ_21C = .;
   IF (SAQ_21D >= 96) THEN SAQ_21D = .;
   IF (SAQ_22A >= 6) THEN SAQ_22A = .;
   IF (SAQ_22B >= 6) THEN SAQ_22B = .;
   IF (SAQ_22C >= 96) THEN SAQ_22C = .;
   IF (SAQ_22D >= 96) THEN SAQ_22D = .;
   IF (SAQ_23A >= 6) THEN SAQ_23A = .;
   IF (SAQ_23B >= 6) THEN SAQ_23B = .;
   IF (SAQ_23C >= 96) THEN SAQ_23C = .;
   IF (SAQ_23D >= 96) THEN SAQ_23D = .;
   IF (SAQ_24A >= 6) THEN SAQ_24A = .;
   IF (SAQ_24B >= 6) THEN SAQ_24B = .;
   IF (SAQ_24C >= 96) THEN SAQ_24C = .;
   IF (SAQ_24D >= 96) THEN SAQ_24D = .;
   IF (SAQ_25A >= 6) THEN SAQ_25A = .;
   IF (SAQ_25B >= 6) THEN SAQ_25B = .;
   IF (SAQ_25C >= 96) THEN SAQ_25C = .;
   IF (SAQ_25D >= 96) THEN SAQ_25D = .;
   IF (SAQ_26A >= 6) THEN SAQ_26A = .;
   IF (SAQ_26B >= 6) THEN SAQ_26B = .;
   IF (SAQ_26C >= 96) THEN SAQ_26C = .;
   IF (SAQ_26D >= 96) THEN SAQ_26D = .;
   IF (SAQ_27A >= 6) THEN SAQ_27A = .;
   IF (SAQ_27B >= 6) THEN SAQ_27B = .;
   IF (SAQ_27C >= 96) THEN SAQ_27C = .;
   IF (SAQ_27D >= 96) THEN SAQ_27D = .;
   IF (SAQ_28A >= 6) THEN SAQ_28A = .;
   IF (SAQ_28B >= 6) THEN SAQ_28B = .;
   IF (SAQ_28C >= 96) THEN SAQ_28C = .;
   IF (SAQ_28D >= 96) THEN SAQ_28D = .;
   IF (SAQ_29A >= 6) THEN SAQ_29A = .;
   IF (SAQ_29B >= 6) THEN SAQ_29B = .;
   IF (SAQ_29C >= 96) THEN SAQ_29C = .;
   IF (SAQ_29D >= 96) THEN SAQ_29D = .;
   IF (SAQ_30A >= 6) THEN SAQ_30A = .;
   IF (SAQ_30B >= 6) THEN SAQ_30B = .;
   IF (SAQ_30C >= 96) THEN SAQ_30C = .;
   IF (SAQ_30D >= 96) THEN SAQ_30D = .;
   IF (SAQ_31A >= 6) THEN SAQ_31A = .;
   IF (SAQ_31B >= 6) THEN SAQ_31B = .;
   IF (SAQ_31C >= 96) THEN SAQ_31C = .;
   IF (SAQ_31D >= 96) THEN SAQ_31D = .;
   IF (SAQ_32A >= 6) THEN SAQ_32A = .;
   IF (SAQ_32B >= 6) THEN SAQ_32B = .;
   IF (SAQ_32C >= 96) THEN SAQ_32C = .;
   IF (SAQ_32D >= 96) THEN SAQ_32D = .;
   IF (SAQ_33A >= 6) THEN SAQ_33A = .;
   IF (SAQ_33B >= 6) THEN SAQ_33B = .;
   IF (SAQ_33C >= 6) THEN SAQ_33C = .;
   IF (SAQ_33D >= 96) THEN SAQ_33D = .;
   IF (SAQ_33E >= 96) THEN SAQ_33E = .;
   IF (SAQ_34A >= 6) THEN SAQ_34A = .;
   IF (SAQ_34B >= 6) THEN SAQ_34B = .;
   IF (SAQ_34C >= 6) THEN SAQ_34C = .;
   IF (SAQ_34D >= 96) THEN SAQ_34D = .;
   IF (SAQ_34E >= 96) THEN SAQ_34E = .;
   IF (SAQ_35A >= 6) THEN SAQ_35A = .;
   IF (SAQ_35B >= 6) THEN SAQ_35B = .;
   IF (SAQ_35C >= 6) THEN SAQ_35C = .;
   IF (SAQ_35D >= 96) THEN SAQ_35D = .;
   IF (SAQ_35E >= 96) THEN SAQ_35E = .;
   IF (SAQ_36A >= 6) THEN SAQ_36A = .;
   IF (SAQ_36B >= 6) THEN SAQ_36B = .;
   IF (SAQ_36C >= 6) THEN SAQ_36C = .;
   IF (SAQ_36D >= 96) THEN SAQ_36D = .;
   IF (SAQ_36E >= 96) THEN SAQ_36E = .;
   IF (SAQ_37H >= 6) THEN SAQ_37H = .;
   IF (SAQ_37I >= 6) THEN SAQ_37I = .;
   IF (SAQ_38 >= 6) THEN SAQ_38 = .;
   IF (SAQ_39 >= 6) THEN SAQ_39 = .;
   IF (SAQ_43A >= 6) THEN SAQ_43A = .;
   IF (SAQ_43B >= 6) THEN SAQ_43B = .;
   IF (SAQ_43C >= 6) THEN SAQ_43C = .;
   IF (SAQ_43D >= 6) THEN SAQ_43D = .;
   IF (SAQ_43E >= 6) THEN SAQ_43E = .;
   IF (SAQ_43F >= 6) THEN SAQ_43F = .;
   IF (SAQ_43G >= 6) THEN SAQ_43G = .;
   IF (SAQ_43H >= 6) THEN SAQ_43H = .;
   IF (SAQ_43I >= 6) THEN SAQ_43I = .;
   IF (SAQ_43J >= 6) THEN SAQ_43J = .;
   IF (SAQ_43K >= 6) THEN SAQ_43K = .;
   IF (SAQ_43L >= 6) THEN SAQ_43L = .;
   IF (SAQ_44 >= 6) THEN SAQ_44 = .;
   IF (SAQ_45 = 0) THEN SAQ_45 = .;
   IF (SAQ_45 >= 95) THEN SAQ_45 = .;
   IF (SAQ_46 >= 6) THEN SAQ_46 = .;
   IF (SAQ_47 = 0) THEN SAQ_47 = .;
   IF (SAQ_47 >= 95) THEN SAQ_47 = .;
   IF (SAQ_48 >= 6) THEN SAQ_48 = .;
   IF (FLAG44 >= 6) THEN FLAG44 = .;
   IF (FLAG46 >= 6) THEN FLAG46 = .;
   IF (FLAG48 >= 6) THEN FLAG48 = .;
   IF (F_AGEGR2 >= 6) THEN F_AGEGR2 = .;
   IF (F_RACETH >= 6) THEN F_RACETH = .;
   IF (STRATUM >= 6) THEN STRATUM = .;
   IF (AELGFCTR >= 6) THEN AELGFCTR = .;
   IF (I_RACETH >= 6) THEN I_RACETH = .;
   IF (NUMBABES >= 6) THEN NUMBABES = .;
   IF (NRFCTR >= 6) THEN NRFCTR = .;
   IF (TRMFCTR >= 6.0000) THEN TRMFCTR = .;
   IF (RESP >= 6) THEN RESP = .;
   IF (ALC3TUP >= 6) THEN ALC3TUP = .;
   IF (ANY3TUP >= 6) THEN ANY3TUP = .;
   IF (CIG3TUP >= 6) THEN CIG3TUP = .;
   IF (COK3TUP >= 6) THEN COK3TUP = .;
   IF (COKA3TUP >= 6) THEN COKA3TUP = .;
   IF (CRK3TUP >= 6) THEN CRK3TUP = .;
   IF (DONE3TUP >= 6) THEN DONE3TUP = .;
   IF (HER3TUP >= 6) THEN HER3TUP = .;
   IF (METH3TUP >= 6) THEN METH3TUP = .;
   IF (THC3TUP >= 6) THEN THC3TUP = .;
   IF (INCOME3 >= 6) THEN INCOME3 = .;
   IF (GAGEFLAG >= 6) THEN GAGEFLAG = .;
   IF (GAGE >= 96) THEN GAGE = .;
   IF (CIGPREG >= 6) THEN CIGPREG = .;
   IF (ALCPREG >= 6) THEN ALCPREG = .;
   IF (THCPREG >= 6) THEN THCPREG = .;
   IF (CRKPREG >= 6) THEN CRKPREG = .;
   IF (COKPREG >= 6) THEN COKPREG = .;
   IF (HERPREG >= 6) THEN HERPREG = .;
   IF (DONEPREG >= 6) THEN DONEPREG = .;
   IF (METHPREG >= 6) THEN METHPREG = .;
   IF (ALLPREG >= 6) THEN ALLPREG = .;
   IF (CIGEVER >= 6) THEN CIGEVER = .;
   IF (THCEVER >= 6) THEN THCEVER = .;
   IF (COKEVER >= 6) THEN COKEVER = .;
   IF (RACETFLG >= 6) THEN RACETFLG = .;
   IF (PAYFLAG >= 6) THEN PAYFLAG = .;
   IF (VSTSFLAG >= 6) THEN VSTSFLAG = .;
   IF (METRO >= 6) THEN METRO = .;
   IF (EDUCFLAG >= 6) THEN EDUCFLAG = .;
   IF (EMPLFLAG >= 6) THEN EMPLFLAG = .;
   IF (RACEUP >= 6) THEN RACEUP = .;
   IF (AGE5 >= 6) THEN AGE5 = .;
   IF (AGE3 >= 6) THEN AGE3 = .;
   IF (PAYUP >= 6) THEN PAYUP = .;
   IF (MARITAL1 >= 6) THEN MARITAL1 = .;
   IF (MARITAL2 >= 6) THEN MARITAL2 = .;
   IF (EDUC >= 6) THEN EDUC = .;
   IF (EDUC2 >= 6) THEN EDUC2 = .;
   IF (EMPL1 >= 6) THEN EMPL1 = .;
   IF (EMPL2 >= 6) THEN EMPL2 = .;
   IF (COKAPREG >= 6) THEN COKAPREG = .;
   IF (HALPREG >= 6) THEN HALPREG = .;
   IF (INHPREG >= 6) THEN INHPREG = .;
   IF (ILSEDA >= 6) THEN ILSEDA = .;
   IF (ILTRANQ >= 6) THEN ILTRANQ = .;
   IF (ILAMPHET >= 6) THEN ILAMPHET = .;
   IF (ILANAL >= 6) THEN ILANAL = .;
   IF (ILPSY >= 6) THEN ILPSY = .;
   IF (SEDA >= 6) THEN SEDA = .;
   IF (TRANQ >= 6) THEN TRANQ = .;
   IF (AMPHET >= 6) THEN AMPHET = .;
   IF (ANAL >= 6) THEN ANAL = .;
   IF (SCRPSY >= 6) THEN SCRPSY = .;
   IF (CIGYR >= 6) THEN CIGYR = .;
   IF (ALCYR >= 6) THEN ALCYR = .;
   IF (THCYR >= 6) THEN THCYR = .;
   IF (CRKYR >= 6) THEN CRKYR = .;
   IF (COKYR >= 6) THEN COKYR = .;
   IF (HERYR >= 6) THEN HERYR = .;
   IF (DONEYR >= 6) THEN DONEYR = .;
   IF (METHYR >= 6) THEN METHYR = .;
   IF (COKAYR >= 6) THEN COKAYR = .;
   IF (ALLYR >= 6) THEN ALLYR = .;
   IF (ALCIG >= 6) THEN ALCIG = .;
   IF (ANY3M >= 6) THEN ANY3M = .;
   IF (THC3M >= 6) THEN THC3M = .;
   IF (CRK3M >= 6) THEN CRK3M = .;
   IF (COK3M >= 6) THEN COK3M = .;
   IF (COKA3M >= 6) THEN COKA3M = .;
   IF (HER3M >= 6) THEN HER3M = .;
   IF (DONE3M >= 6) THEN DONE3M = .;
   IF (METH3M >= 6) THEN METH3M = .;
   IF (ALC3M >= 6) THEN ALC3M = .;
   IF (CIG3M >= 6) THEN CIG3M = .;
   IF (ANY1T >= 6) THEN ANY1T = .;
   IF (THC1T >= 6) THEN THC1T = .;
   IF (CRK1T >= 6) THEN CRK1T = .;
   IF (COK1T >= 6) THEN COK1T = .;
   IF (COKA1T >= 6) THEN COKA1T = .;
   IF (HER1T >= 6) THEN HER1T = .;
   IF (DONE1T >= 6) THEN DONE1T = .;
   IF (METH1T >= 6) THEN METH1T = .;
   IF (ALC1T >= 6) THEN ALC1T = .;
   IF (CIG1T >= 6) THEN CIG1T = .;
   IF (ANY2T >= 6) THEN ANY2T = .;
   IF (THC2T >= 6) THEN THC2T = .;
   IF (CRK2T >= 6) THEN CRK2T = .;
   IF (COK2T >= 6) THEN COK2T = .;
   IF (COKA2T >= 6) THEN COKA2T = .;
   IF (HER2T >= 6) THEN HER2T = .;
   IF (DONE2T >= 6) THEN DONE2T = .;
   IF (METH2T >= 6) THEN METH2T = .;
   IF (ALC2T >= 6) THEN ALC2T = .;
   IF (CIG2T >= 6) THEN CIG2T = .;
   IF (ANY3D >= 6) THEN ANY3D = .;
   IF (THC3D >= 6) THEN THC3D = .;
   IF (CRK3D >= 6) THEN CRK3D = .;
   IF (COK3D >= 6) THEN COK3D = .;
   IF (COKA3D >= 6) THEN COKA3D = .;
   IF (HER3D >= 6) THEN HER3D = .;
   IF (DONE3D >= 6) THEN DONE3D = .;
   IF (METH3D >= 6) THEN METH3D = .;
   IF (ALC3D >= 6) THEN ALC3D = .;
   IF (CIG3D >= 6) THEN CIG3D = .;
   IF (CIG1TS >= 6) THEN CIG1TS = .;
   IF (CIG3TC >= 6) THEN CIG3TC = .;
   IF (ALC1TS >= 6) THEN ALC1TS = .;
   IF (ALC3TC >= 6) THEN ALC3TC = .;
   IF (NEWVOL >= 995) THEN NEWVOL = .;
   IF (COKES >= 6) THEN COKES = .;
   IF (COKEQ >= 6) THEN COKEQ = .;
   IF (COKEN = 6) THEN COKEN = .;
   IF (AMPHS >= 6) THEN AMPHS = .;
   IF (AMPHQ >= 6) THEN AMPHQ = .;
   IF (AMPHN >= 6) THEN AMPHN = .;
   IF (METHQ >= 6) THEN METHQ = .;
   IF (METHN = 6) THEN METHN = .;
   IF (THCS >= 6) THEN THCS = .;
   IF (THCQ >= 6) THEN THCQ = .;
   IF (THCN = 6) THEN THCN = .;
   IF (OPS >= 6) THEN OPS = .;
   IF (CODQ >= 6) THEN CODQ = .;
   IF (CODN = 6) THEN CODN = .;
   IF (MORPHQ >= 6) THEN MORPHQ = .;
   IF (MORPHN = 6) THEN MORPHN = .;
   IF (AMPHET3D >= 6) THEN AMPHET3D = .;
   IF (ANAL3D >= 6) THEN ANAL3D = .;
   IF (AMETH3D >= 6) THEN AMETH3D = .;
   IF (HANAL3D >= 6) THEN HANAL3D = .;
   IF (THCTEST >= 6) THEN THCTEST = .;
   IF (COKETEST >= 6) THEN COKETEST = .;
   IF (AMPHTEST >= 6) THEN AMPHTEST = .;
   IF (OPTEST >= 6) THEN OPTEST = .;
   IF (ANYTEST >= 6) THEN ANYTEST = .;
   IF (THCRT >= 6) THEN THCRT = .;
   IF (COKERT >= 6) THEN COKERT = .;
   IF (SIZE >= 6) THEN SIZE = .;
   IF (INCOME >= 96) THEN INCOME = .;
   IF (MULPREG2 >= 6) THEN MULPREG2 = .;
   IF (AGE2 >= 6) THEN AGE2 = .;
   IF (INCFLAG >= 6) THEN INCFLAG = .;
   IF (PSU_VAR >= 6) THEN PSU_VAR = .;

    format INT_TIME int_time. IAQ_1 iaq_1fff. IAQ_BOXA iaq_boxa.
         IAQ_1A iaq_1a. IAQ_1B iaq_1b. IAQ_4 iaq_4fff.
         IAQ_5 iaq_5fff. IAQ5FLAG iaq5flag. IAQ_6 iaq_6fff.
         IAQ6FLAG iaq6flag. IAQ_DAY iaq_day. IAQ_7 iaq_7fff.
         IAQ_8 iaq_8fff. IAQ8FLAG iaq8flag. IAQ_9 iaq_9fff.
         IAQ_10 iaq_10ff. IAQ_11 iaq_11ff. IAQ_12A iaq_12a.
         IAQ_12B iaq_12b. IAQ_12C iaq_12c. IAQ_12D iaq_12d.
         IAQ_12E iaq_12e. IAQ_12F iaq_12f. IAQ_12G iaq_12g.
         IAQ_12H iaq_12h. IAQ_12HS iaq_12hs. IAQ_13A iaq_13a.
         IAQ_13B iaq_13b. IAQ_13C iaq_13c. IAQ_13D iaq_13d.
         IAQ_13DS iaq_13ds. IAQ_14 iaq_14ff. IAQ_15 iaq_15ff.
         IAQ_16 iaq_16ff. IAQ_17FT iaq_17ft. IAQ_17IN iaq_17in.
         IAQ_18A iaq_18a. IAQ_18B iaq_18b. IAQ_18C iaq_18c.
         IAQ_18D iaq_18d. IAQ_18DS iaq_18ds. IAQ_19A iaq_19a.
         IAQ_19B iaq_19b. IAQ_19C iaq_19c. IAQ_20A iaq_20a.
         IAQ_21A iaq_21a. IAQ_20B iaq_20b. IAQ_21B iaq_21b.
         IAQ_20C iaq_20c. IAQ_21C iaq_21c. IAQ_20D iaq_20d.
         IAQ_21D iaq_21d. IAQ_20E iaq_20e. IAQ_21E iaq_21e.
         IAQ_20F iaq_20f. IAQ_20SP iaq_20sp. IAQ_21F iaq_21f.
         IAQ_22 iaq_22ff. IAQ_22SP iaq_22sp. IAQ_23 iaq_23ff.
         IAQ_24A iaq_24a. IAQ_24B iaq_24b. IAQ_BOXB iaq_boxb.
         IAQ_24C iaq_24c. IAQ_24D iaq_24d. IAQ_24E iaq_24e.
         IAQ_25 iaq_25ff. IAQ_26 iaq_26ff. IAQ26FLG iaq26flg.
         IAQ_BOXC iaq_boxc. IAQ_CNTR iaq_cntr. IAQ_WG iaq_wg.
         IQ27LB01 iq27lb0f. IQ27LB02 iq27lb1f. IQ27LB03 iq27lb2f.
         IQ27LB04 iq27lb3f. IQ27LB05 iq27lb4f. IQ27LB06 iq27lb5f.
         IQ27LB07 iq27lb6f. IQ27LB08 iq27lb7f. IQ27LB09 iq27lb8f.
         IQ27LB10 iq27lb9f. IQ27OZ01 iq27oz0f. IQ27OZ02 iq27oz1f.
         IQ27OZ03 iq27oz2f. IQ27OZ04 iq27oz3f. IQ27OZ05 iq27oz4f.
         IQ27OZ06 iq27oz5f. IQ27OZ07 iq27oz6f. IQ27OZ08 iq27oz7f.
         IQ27OZ09 iq27oz8f. IQ27OZ10 iq27oz9f. IQ2801 iq2801ff.
         IQ2802 iq2802ff. IQ2803 iq2803ff. IQ2804 iq2804ff.
         IQ2805 iq2805ff. IQ2806 iq2806ff. IQ2807 iq2807ff.
         IQ2808 iq2808ff. IQ2809 iq2809ff. IQ2810 iq2810ff.
         IQ2901 iq2901ff. IQ2902 iq2902ff. IQ2903 iq2903ff.
         IQ2904 iq2904ff. IQ2905 iq2905ff. IQ2906 iq2906ff.
         IQ2907 iq2907ff. IQ2908 iq2908ff. IQ2909 iq2909ff.
         IQ2910 iq2910ff. IAQ_31 iaq_31ff. IAQ_32 iaq_32ff.
         IAQ_33 iaq_33ff. IAQ_34 iaq_34ff. IAQ_35 iaq_35ff.
         IAQ_36 iaq_36ff. IAQ_BOXD iaq_boxd. IAQ_37 iaq_37ff.
         IAQ_38 iaq_38ff. IAQ_39 iaq_39ff. IAQ_40 iaq_40ff.
         IAQ_41 iaq_41ff. IAQ_42 iaq_42ff. IAQ_43A iaq_43a.
         IAQ_43B iaq_43b. IAQ_43C iaq_43c. IAQ_43D iaq_43d.
         IAQ_43E iaq_43e. IAQ_43F iaq_43f. IAQ_43G iaq_43g.
         IAQ_43H iaq_43h. IAQ_43I iaq_43i. IAQ_BOXE iaq_boxe.
         IAQ_44 iaq_44ff. IAQ_45 iaq_45ff. IAQ_BOXF iaq_boxf.
         IAQ_46 iaq_46ff. IAQ_BOXG iaq_boxg. IAQ_47 iaq_47ff.
         IAQ_48 iaq_48ff. IAQ_49 iaq_49ff. IAQ49FLG iaq49flg.
         IAQ_50A iaq_50a. IAQ_50AM iaq_50am. IAQ_50B iaq_50b.
         IAQ_50BM iaq_50bm. IAQ_50C iaq_50c. IAQ_50CM iaq_50cm.
         IAQ_50D iaq_50d. IAQ_50DM iaq_50dm. IAQ_50E iaq_50e.
         IAQ_50EM iaq_50em. IAQ_50F iaq_50f. IAQ_50FM iaq_50fm.
         IAQ_BOXH iaq_boxh. IAQ_51A iaq_51a. IAQ_51AM iaq_51am.
         IAQ_51B iaq_51b. IAQ_51BM iaq_51bm. IAQ_51C iaq_51c.
         IAQ_51CM iaq_51cm. IAQ_51D iaq_51d. IAQ_51DM iaq_51dm.
         IAQ_51E iaq_51e. IAQ_51EM iaq_51em. IAQ_51F iaq_51f.
         IAQ_51FM iaq_51fm. SAQ_TIME saq_time. LANG lang.
         IAQ_D2 iaq_d2ff. AGECALC agecalc. NEWLBS newlbs.
         NEWOZS newozs. NEWGRAMS newgrams. IAQ_EC iaq_ec.
         INFNUM infnum. NEWLBS2 newlbs2f. NEWOZS2 newozs2f.
         NEWGRAM2 newgramf. GHFLAG ghflag. SAQ_1A saq_1a.
         SAQ_1B saq_1b. SAQ_1C saq_1c. SAQ_1D saq_1d.
         SAQ_2A saq_2a. SAQ_2B saq_2b. SAQ_2C saq_2c.
         SAQ_2D saq_2d. SAQ_3A saq_3a. SAQ_3B saq_3b.
         SAQ_3C saq_3c. SAQ_3D saq_3d. SAQ_4A saq_4a.
         SAQ_4B saq_4b. SAQ_4C saq_4c. SAQ_4D saq_4d.
         SAQ_5A saq_5a. SAQ_5B saq_5b. SAQ_5C saq_5c.
         SAQ_5D saq_5d. SAQ_6A saq_6a. SAQ_6B saq_6b.
         SAQ_6C saq_6c. SAQ_6D saq_6d. SAQ_7A saq_7a.
         SAQ_7B saq_7b. SAQ_7C saq_7c. SAQ_7D saq_7d.
         SAQ_8A saq_8a. SAQ_8B saq_8b. SAQ_8C saq_8c.
         SAQ_8D saq_8d. SAQ_9A saq_9a. SAQ_9B saq_9b.
         SAQ_9C saq_9c. SAQ_9D saq_9d. SAQ_10A saq_10a.
         SAQ_10B saq_10b. SAQ_10C saq_10c. SAQ_10D saq_10d.
         SAQ_11A saq_11a. SAQ_11B saq_11b. SAQ_11C saq_11c.
         SAQ_11D saq_11d. SAQ_12A saq_12a. SAQ_12B saq_12b.
         SAQ_12C saq_12c. SAQ_12D saq_12d. SAQ_13A saq_13a.
         SAQ_13B saq_13b. SAQ_13C saq_13c. SAQ_13D saq_13d.
         SAQ_14A saq_14a. SAQ_14B saq_14b. SAQ_14C saq_14c.
         SAQ_14D saq_14d. SAQ_15A saq_15a. SAQ_15B saq_15b.
         SAQ_15C saq_15c. SAQ_15D saq_15d. SAQ_16A saq_16a.
         SAQ_16B saq_16b. SAQ_16C saq_16c. SAQ_16D saq_16d.
         SAQ_17A saq_17a. SAQ_17B saq_17b. SAQ_17C saq_17c.
         SAQ_17D saq_17d. SAQ_18A saq_18a. SAQ_18B saq_18b.
         SAQ_18C saq_18c. SAQ_18D saq_18d. SAQ_19A saq_19a.
         SAQ_19B saq_19b. SAQ_19C saq_19c. SAQ_19D saq_19d.
         SAQ_20A saq_20a. SAQ_20B saq_20b. SAQ_20C saq_20c.
         SAQ_20D saq_20d. SAQ_21A saq_21a. SAQ_21B saq_21b.
         SAQ_21C saq_21c. SAQ_21D saq_21d. SAQ_22A saq_22a.
         SAQ_22B saq_22b. SAQ_22C saq_22c. SAQ_22D saq_22d.
         SAQ_23A saq_23a. SAQ_23B saq_23b. SAQ_23C saq_23c.
         SAQ_23D saq_23d. SAQ_24A saq_24a. SAQ_24B saq_24b.
         SAQ_24C saq_24c. SAQ_24D saq_24d. SAQ_25A saq_25a.
         SAQ_25B saq_25b. SAQ_25C saq_25c. SAQ_25D saq_25d.
         SAQ_26A saq_26a. SAQ_26B saq_26b. SAQ_26C saq_26c.
         SAQ_26D saq_26d. SAQ_27A saq_27a. SAQ_27B saq_27b.
         SAQ_27C saq_27c. SAQ_27D saq_27d. SAQ_28A saq_28a.
         SAQ_28B saq_28b. SAQ_28C saq_28c. SAQ_28D saq_28d.
         SAQ_29A saq_29a. SAQ_29B saq_29b. SAQ_29C saq_29c.
         SAQ_29D saq_29d. SAQ_30A saq_30a. SAQ_30B saq_30b.
         SAQ_30C saq_30c. SAQ_30D saq_30d. SAQ_31A saq_31a.
         SAQ_31B saq_31b. SAQ_31C saq_31c. SAQ_31D saq_31d.
         SAQ_32A saq_32a. SAQ_32B saq_32b. SAQ_32C saq_32c.
         SAQ_32D saq_32d. SAQ_33A saq_33a. SAQ_33B saq_33b.
         SAQ_33C saq_33c. SAQ_33D saq_33d. SAQ_33E saq_33e.
         SAQ_34A saq_34a. SAQ_34B saq_34b. SAQ_34C saq_34c.
         SAQ_34D saq_34d. SAQ_34E saq_34e. SAQ_35A saq_35a.
         SAQ_35B saq_35b. SAQ_35C saq_35c. SAQ_35D saq_35d.
         SAQ_35E saq_35e. SAQ_36A saq_36a. SAQ_36B saq_36b.
         SAQ_36C saq_36c. SAQ_36D saq_36d. SAQ_36E saq_36e.
         SAQ_37H saq_37h. SAQ_37I saq_37i. SAQ_38 saq_38ff.
         SAQ_39 saq_39ff. SAQ_43A saq_43a. SAQ_43B saq_43b.
         SAQ_43C saq_43c. SAQ_43D saq_43d. SAQ_43E saq_43e.
         SAQ_43F saq_43f. SAQ_43G saq_43g. SAQ_43H saq_43h.
         SAQ_43I saq_43i. SAQ_43J saq_43j. SAQ_43K saq_43k.
         SAQ_43L saq_43l. SAQ_44 saq_44ff. SAQ_45 saq_45ff.
         SAQ_46 saq_46ff. SAQ_47 saq_47ff. SAQ_48 saq_48ff.
         FLAG44 flag44ff. FLAG46 flag46ff. FLAG48 flag48ff.
         F_AGEGR2 f_agegrf. F_RACETH f_raceth. IAGEGRP2 iagegrpf.
         STRATUM stratum. STATUS status. I_RACETH i_raceth.
         NUMBABES numbabes. NRFCTR nrfctr. TRMFCTR trmfctr.
         RESP resp. ALC3TUP alc3tup. ANY3TUP any3tup.
         CIG3TUP cig3tup. COK3TUP cok3tup. COKA3TUP coka3tup.
         CRK3TUP crk3tup. DONE3TUP done3tup. HER3TUP her3tup.
         METH3TUP meth3tup. THC3TUP thc3tup. INCOME3 income3f.
         GAGEFLAG gageflag. GAGE gage. CIGPREG cigpreg.
         ALCPREG alcpreg. THCPREG thcpreg. CRKPREG crkpreg.
         COKPREG cokpreg. HERPREG herpreg. DONEPREG donepreg.
         METHPREG methpreg. ALLPREG allpreg. CIGEVER cigever.
         THCEVER thcever. COKEVER cokever. RACETFLG racetflg.
         PAYFLAG payflag. VSTSFLAG vstsflag. METRO metro.
         EDUCFLAG educflag. EMPLFLAG emplflag. RACEUP raceup.
         AGE5 age5ffff. AGE3 age3ffff. PAYUP payup.
         MARITAL1 maritalf. MARITAL2 marita0f. EDUC educ.
         EDUC2 educ2fff. EMPL1 empl1fff. EMPL2 empl2fff.
         COKAPREG cokapreg. HALPREG halpreg. INHPREG inhpreg.
         ILSEDA ilseda. ILTRANQ iltranq. ILAMPHET ilamphet.
         ILANAL ilanal. ILPSY ilpsy. SEDA seda.
         TRANQ tranq. AMPHET amphet. ANAL anal.
         SCRPSY scrpsy. CIGYR cigyr. ALCYR alcyr.
         THCYR thcyr. CRKYR crkyr. COKYR cokyr.
         HERYR heryr. DONEYR doneyr. METHYR methyr.
         COKAYR cokayr. ALLYR allyr. ALCIG alcig.
         ANY3M any3m. THC3M thc3m. CRK3M crk3m.
         COK3M cok3m. COKA3M coka3m. HER3M her3m.
         DONE3M done3m. METH3M meth3m. ALC3M alc3m.
         CIG3M cig3m. ANY1T any1t. THC1T thc1t.
         CRK1T crk1t. COK1T cok1t. COKA1T coka1t.
         HER1T her1t. DONE1T done1t. METH1T meth1t.
         ALC1T alc1t. CIG1T cig1t. ANY2T any2t.
         THC2T thc2t. CRK2T crk2t. COK2T cok2t.
         COKA2T coka2t. HER2T her2t. DONE2T done2t.
         METH2T meth2t. ALC2T alc2t. CIG2T cig2t.
         ANY3D any3d. THC3D thc3d. CRK3D crk3d.
         COK3D cok3d. COKA3D coka3d. HER3D her3d.
         DONE3D done3d. METH3D meth3d. ALC3D alc3d.
         CIG3D cig3d. CIG1TS cig1ts. CIG3TC cig3tc.
         ALC1TS alc1ts. ALC3TC alc3tc. NEWVOL newvol.
         COKES cokes. COKEQ cokeq. COKEN coken.
         AMPHS amphs. AMPHQ amphq. AMPHN amphn.
         METHQ methq. METHN methn. THCS thcs.
         THCQ thcq. THCN thcn. OPS ops.
         CODQ codq. CODN codn. MORPHQ morphq.
         MORPHN morphn. AMPHET3D amphet3d. ANAL3D anal3d.
         AMETH3D ameth3d. HANAL3D hanal3d. THCTEST thctest.
         COKETEST coketest. AMPHTEST amphtest. OPTEST optest.
         ANYTEST anytest. THCRT thcrt. COKERT cokert.
         SIZE size. INCOME income. MULPREG2 mulpregf.
         AGE2 age2ffff. INCFLAG incflag. INT_FLG int_flg.
         INT_STAT int_stat. SAQ_FLG saq_flg. FILEIAQ fileiaq.
         FILERPTA filerpta. FILESAQ filesaq. FILEWTA filewta.;
run;

/*3. Descriptive Statistics*/

/* Weighted Frequency Analysis for Categorical Variables */
proc surveyfreq data=Exam.da2835p1_a;
    strata STRATUM;
    cluster PSU_VAR;
    weight TRMADJMW;
    tables ALLPREG IQ2901 I_RACETH EDUC MARITAL1 IAQ_7;
run;

/* Descriptive Statistics for Continuous Variables */
proc surveymeans data=Exam.da2835p1_a;
    strata STRATUM;
    cluster PSU_VAR;
    weight TRMADJMW;
    var NEWGRAMS;
run;

/*Determining the number of Missing value*/ 

proc freq data=Exam.da2835p1_a;/*For categorical variables*/
       tables ALLPREG IQ2901 I_RACETH EDUC MARITAL1 IAQ_7 / missing;
run;

proc means data=Exam.da2835p1_a mean stddev min max median nmiss; /*For continuous variable*/
     var NEWGRAMS;
run;

DATA Exam.da2835p1_b;
    SET Exam.da2835p1_a;
    /* Keeping only necessary variables */
    KEEP ALLPREG IQ2901 I_RACETH EDUC MARITAL1 IAQ_7 NEWGRAMS;
 RUN;


/*Imputing data*/
proc surveyimpute data=Exam.da2835p1_a method=hotdeck(selection=abb)
ndonors=5 seed=773269;
var ALLPREG IQ2901 I_RACETH EDUC MARITAL1 IAQ_7 NEWGRAMS;
output out=ca_imp;
run;

/*Creating new categorical variables*/
data Exam.da2835p1_imputed_a;
    set Exam.da2835p1_imputed;

    /* Create Low_Birth_Wt categorical variable */
    if NEWGRAMS < 2500 then Low_Birth_Wt = "Yes";
    else Low_Birth_Wt = "No";

    /* Apply formats */
    format Low_Birth_Wt $3.;
run;


/* Unadjusted Logistic Regression for Low_Birth_Wt */
proc surveylogistic data=ca_imp_a;
    strata STRATUM;
    cluster PSU_VAR;
    weight TRMADJMW;
    class Illicit_Substance_Use(ref="No") / param=ref;
    model Low_Birth_Wt(event="Yes") = Illicit_Substance_Use;
run;

proc surveylogistic data=ca_imp_a;
    strata STRATUM;
    cluster PSU_VAR;
    weight TRMADJMW;
    class Illicit_Substance_Use(ref="No") I_RACETH(ref="(1) WHITE")/ param=ref;
    model Low_Birth_Wt(event="Yes") = I_RACETH;
run;

proc surveyfreq data=ca_imp_a;
    strata STRATUM;
    cluster PSU_VAR;
    weight TRMADJMW;
    tables Low_Birth_Wt Illicit_Substance_Use METHPREG CRKPREG COKPREG IQ2901 I_RACETH EDUC MARITAL1 IAQ_7;
run;

/* Adjusted Logistic Regression for Low_Birth_Wt */
proc surveylogistic data=ca_imp_a;
    strata STRATUM;
    cluster PSU_VAR;
    weight TRMADJMW;
    class Illicit_Substance_Use(ref="No") I_RACETH(ref="(1) WHITE") EDUC(ref="(4) 16 + YEARS") MARITAL1(ref="(1) MARRIED") IAQ_7(ref="(1) YES") / param=ref;
    model Low_Birth_Wt(event="Yes") = Illicit_Substance_Use I_RACETH IQ2801 EDUC MARITAL1 IAQ_7;
run;

/* Unadjusted Logistic Regression for Preterm Birth (IQ2901) */
proc surveylogistic data=ca_imp_a;
    strata STRATUM;
    cluster PSU_VAR;
    weight TRMADJMW;
    class Illicit_Substance_Use(ref="No") / param=ref;
    model IQ2901(event="1") = Illicit_Substance_Use;
run;

/* Adjusted Logistic Regression for Preterm Birth (IQ2901) */
proc surveylogistic data=ca_imp_a;
    strata STRATUM;
    cluster PSU_VAR;
    weight TRMADJMW;
    class Illicit_Substance_Use(ref="No") I_RACETH(ref="WHITE") EDUC(ref="16+ YEARS") MARITAL1(ref="1") IAQ_7(ref="1") / param=ref;
    model IQ2901(event="1") = Illicit_Substance_Use I_RACETH IQ2801 EDUC MARITAL1 IAQ_7;
run;



/*Weighted Logistic Regression for Preterm Birth (IQ2901)*/
proc surveylogistic data=nphs.nphs1992;
   strata STRATUM;
   cluster PSU_VAR;
   weight TRMADJMW;
   class I_RACETH (ref='1') METHPREG (ref='2') / param=ref;
   model Low_Birth_Wt(event='1') = I_RACETH METHPREG EDUC MARITAL1 IAQ_7;
run;

proc surveylogistic data=nphs.nphs1992;
   strata STRATUM;
   cluster PSU_VAR;
   weight TRMADJMW;
   class I_RACETH (ref='1') METHPREG (ref='2') / param=ref;
   model IQ2901(event='1') = I_RACETH METHPREG EDUC MARITAL1 IAQ_7;
run;


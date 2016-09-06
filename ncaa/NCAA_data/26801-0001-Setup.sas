/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 26801
 |           NCAA DIVISION I ACADEMIC PROGRESS RATE, 2003-2014
 |
 |
 | SAS setup sections are provided for the ASCII version of this data
 | collection.  These sections are listed below:
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions. Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set.
 |
 | INFILE:  identifies the input file to be read with the input statement.
 | Users must replace the "data-filename" with a filename specifying the
 | directory on the user's computer system in which the downloaded and
 | unzipped data file is physically located (e.g.,
 | "c:\temp\26801-0001-data.txt").
 |
 | INPUT:  assigns the name, type, decimal specification (if any), and
 | specifies the beginning and ending column locations for each variable
 | in the data file.
 |
 | LABEL:  assigns descriptive labels to all variables. Variable labels
 | and variable names may be identical for some variables.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | If any variables have more than one missing value, they are assigned
 | to the standard missing value of a single period (.) in the statement
 | below. To maintain the original meaning of missing codes, users may want
 | to take advantage of the SAS missing values (the letters A-Z or an
 | underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .; 
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables named in the INPUT statement.
 |
 | NOTE:  Users should modify this setup file to suit their specific needs.
 | Sections for PROC FORMAT, FORMAT, and MISSING VALUE RECODES have been
 | commented out (i.e., '/*'). To include these sections in the final SAS
 | setup, users should remove the SAS comment indicators from the desired
 | section(s).
 |
 |------------------------------------------------------------------------*/

* SAS PROC FORMAT;

/*
PROC FORMAT;
VALUE academif  2014='(2014) 2013-14';
VALUE scl_divf  1='(1) Division I' 2='(2) Division II' 3='(3) Division III';
VALUE scl_hbcf  1='(1) Yes' 2='(2) No';
VALUE pub_awaf  0='(0) Team Did Not Receive Award' 1='(1) Team Received Award';
VALUE sport_cf  1='(01) Baseball' 2='(02) Men''s Basketball' 3='(03) Men''s Cross Country'
                4='(04) Football' 5='(05) Men''s Fencing' 6='(06) Men''s Golf' 7='(07) Men''s Gymnastics'
                8='(08) Men''s Ice Hockey' 9='(09) Men''s Lacrosse' 10='(10) Men''s Skiing'
                11='(11) Men''s Soccer' 12='(12) Men''s Swimming' 13='(13) Men''s Tennis'
                14='(14) Men''s Indoor Track' 15='(15) Men''s Outdoor Track' 16='(16) Men''s Volleyball'
                17='(17) Men''s Water Polo' 18='(18) Men''s Wrestling' 19='(19) Women''s Basketball'
                20='(20) Women''s Bowling' 21='(21) Women''s Cross Country' 22='(22) Women''s Rowing'
                23='(23) Women''s Fencing' 24='(24) Women''s Field Hockey' 25='(25) Women''s Golf'
                26='(26) Women''s Gymnastics' 27='(27) Women''s Ice Hockey' 28='(28) Women''s Lacrosse'
                29='(29) Women''s Softball' 30='(30) Women''s Skiing' 31='(31) Women''s Soccer'
                32='(32) Women''s Swimming' 33='(33) Women''s Tennis' 34='(34) Women''s Indoor Track'
                35='(35) Women''s Outdoor Track' 36='(36) Women''s Volleyball'
                37='(37) Women''s Water Polo' 38='(38) Mixed Rifle';
VALUE scl_prif  0='(0) Public' 1='(1) Private';
VALUE raw_or_f  -99='(-99) System Missing' 1='(1) Confidence Interval' 2='(2) Raw Rate';
VALUE scl_subf  -99='(-99) System Missing'
                1='(1) Football Bowl Series (FBS, formerly I-A)'
                2='(2) Football Championship Series (FCS, formerly I-AA)'
                3='(3) Division I (no football, formerly I-AAA)';
VALUE multiyrf  -99='(-99) System Missing';
VALUE multiyr_1f  -99='(-99) System Missing' other=[6.2];
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=629;
INPUT
       DATA_TAB_GENERALINFO 1  SCL_UNITID 2-7
        SCL_NAME $8-65          SPORT_CODE 66-67        SPORT_NAME $68-89
        ACADEMIC_YEAR 90-93     SCL_DIV_14 94           SCL_SUB_14 95-97
        CONFNAME_14 $98-146     D1_FB_CONF_14 $147-181  SCL_HBCU 182
        SCL_PRIVATE 183         DATA_TAB_MULTIYRRATE 184 MULTIYR_APR_RATE_1000_RAW 185-188
        MULTIYR_APR_RATE_1000_CI 189-192 MULTIYR_APR_RATE_1000_OFFICIAL 193-196 MULTIYR_ELIG_RATE 197-210 .10
        MULTIYR_RET_RATE 211-224 .10 MULTIYR_SQUAD_SIZE 225-227 DATA_TAB_ANNUALRATE 228
        APR_RATE_2014_1000 229-232 ELIG_RATE_2014 233-246 .10 RET_RATE_2014 247-260 .10
        NUM_OF_ATHLETES_2014 261-263 APR_RATE_2013_1000 264-267 ELIG_RATE_2013 268-281 .10
        RET_RATE_2013 282-295 .10 NUM_OF_ATHLETES_2013 296-298 APR_RATE_2012_1000 299-302
        ELIG_RATE_2012 303-316 .10 RET_RATE_2012 317-330 .10 NUM_OF_ATHLETES_2012 331-333
        APR_RATE_2011_1000 334-337 ELIG_RATE_2011 338-351 .10 RET_RATE_2011 352-365 .10
        NUM_OF_ATHLETES_2011 366-368 APR_RATE_2010_1000 369-372 ELIG_RATE_2010 373-386 .10
        RET_RATE_2010 387-400 .10 NUM_OF_ATHLETES_2010 401-403 APR_RATE_2009_1000 404-407
        ELIG_RATE_2009 408-421 .10 RET_RATE_2009 422-435 .10 NUM_OF_ATHLETES_2009 436-438
        APR_RATE_2008_1000 439-442 ELIG_RATE_2008 443-456 .10 RET_RATE_2008 457-470 .10
        NUM_OF_ATHLETES_2008 471-473 APR_RATE_2007_1000 474-477 ELIG_RATE_2007 478-491 .10
        RET_RATE_2007 492-505 .10 NUM_OF_ATHLETES_2007 506-508 APR_RATE_2006_1000 509-512
        ELIG_RATE_2006 513-526 .10 RET_RATE_2006 527-540 .10 NUM_OF_ATHLETES_2006 541-543
        APR_RATE_2005_1000 544-547 ELIG_RATE_2005 548-561 .10 RET_RATE_2005 562-575 .10
        NUM_OF_ATHLETES_2005 576-578 APR_RATE_2004_1000 579-582 ELIG_RATE_2004 583-596 .10
        RET_RATE_2004 597-610 .10 NUM_OF_ATHLETES_2004 611-613 DATA_TAB_PUBLICAWARD 614-616
        PUB_AWARD_15 617        PUB_AWARD_14 618        PUB_AWARD_13 619
        PUB_AWARD_12 620        PUB_AWARD_11 621        PUB_AWARD_10 622
        PUB_AWARD_09 623        PUB_AWARD_08 624        PUB_AWARD_07 625
        PUB_AWARD_06 626        RAW_OR_CI 627-629       ;


* SAS LABEL STATEMENT;

LABEL 
   DATA_TAB_GENERALINFO= 'DATA_TAB_GENERALINFO' 
   SCL_UNITID= 'UNITID for Institution' 
   SCL_NAME= 'Institution name' 
   SPORT_CODE= 'Sport Code' 
   SPORT_NAME= 'Sport Name' 
   ACADEMIC_YEAR= 'Academic Year when latest APR data were collected' 
   SCL_DIV_14= 'NCAA Division' 
   SCL_SUB_14= 'NCAA Division I Subdivision' 
   CONFNAME_14= 'Primary Conference 2014-15' 
   D1_FB_CONF_14= 'Football Conference 2014' 
   SCL_HBCU= 'Historically Black College or Univeristy' 
   SCL_PRIVATE= 'Public or Private Institution' 
   DATA_TAB_MULTIYRRATE= 'DATA_TAB_MULTIYRRATE' 
   MULTIYR_APR_RATE_1000_RAW= 'Four_year APR(raw) on 1000-point scale: from 2010-11 to 2013-14' 
   MULTIYR_APR_RATE_1000_CI= 'Four_year APR (Confidence Interval Boundary) on 1000-point scale: from 2010-11 t' 
   MULTIYR_APR_RATE_1000_OFFICIAL= 'Four_year APR (used for official decision) on 1000-point scale: from 2010-11 to' 
   MULTIYR_ELIG_RATE= 'Four_year Eligibility Rate: from 2010-11 to 2013-14' 
   MULTIYR_RET_RATE= 'Four_year Retention Rate: from 2010-11 to 2013-14' 
   MULTIYR_SQUAD_SIZE= 'Four_year Squad Size: from 2010-11 to 2013-14' 
   DATA_TAB_ANNUALRATE= 'DATA_TAB_ANNUALRATE' 
   APR_RATE_2014_1000= 'APR Rate - 2014 on 1000-point scale' 
   ELIG_RATE_2014= 'Eligibility Rate - 2014' 
   RET_RATE_2014= 'Retention Rate - 2014' 
   NUM_OF_ATHLETES_2014= 'Number of Athletes - 2014' 
   APR_RATE_2013_1000= 'APR Rate - 2013 on 1000-point scale' 
   ELIG_RATE_2013= 'Eligibility Rate - 2013' 
   RET_RATE_2013= 'Retention Rate - 2013' 
   NUM_OF_ATHLETES_2013= 'Number of Athletes - 2013' 
   APR_RATE_2012_1000= 'APR Rate - 2012 on 1000-point scale' 
   ELIG_RATE_2012= 'Eligibility Rate - 2012' 
   RET_RATE_2012= 'Retention Rate - 2012' 
   NUM_OF_ATHLETES_2012= 'Number of Athletes - 2012' 
   APR_RATE_2011_1000= 'APR Rate - 2011 on 1000-point scale' 
   ELIG_RATE_2011= 'Eligibility Rate - 2011' 
   RET_RATE_2011= 'Retention Rate - 2011' 
   NUM_OF_ATHLETES_2011= 'Number of Athletes - 2011' 
   APR_RATE_2010_1000= 'APR Rate - 2010 on 1000-point scale' 
   ELIG_RATE_2010= 'Eligibility Rate - 2010' 
   RET_RATE_2010= 'Retention Rate - 2010' 
   NUM_OF_ATHLETES_2010= 'Number of Athletes - 2010' 
   APR_RATE_2009_1000= 'APR Rate - 2009 on 1000-point scale' 
   ELIG_RATE_2009= 'Eligibility Rate - 2009' 
   RET_RATE_2009= 'Retention Rate - 2009' 
   NUM_OF_ATHLETES_2009= 'Number of Athletes - 2009' 
   APR_RATE_2008_1000= 'APR Rate - 2008 on 1000-point scale' 
   ELIG_RATE_2008= 'Eligibility Rate - 2008' 
   RET_RATE_2008= 'Retention Rate - 2008' 
   NUM_OF_ATHLETES_2008= 'Number of Athletes - 2008' 
   APR_RATE_2007_1000= 'APR Rate - 2007 on 1000-point scale' 
   ELIG_RATE_2007= 'Eligibility Rate - 2007' 
   RET_RATE_2007= 'Retention Rate - 2007' 
   NUM_OF_ATHLETES_2007= 'Number of Athletes - 2007' 
   APR_RATE_2006_1000= 'APR Rate - 2006 on 1000-point scale' 
   ELIG_RATE_2006= 'Eligibility Rate - 2006' 
   RET_RATE_2006= 'Retention Rate - 2006' 
   NUM_OF_ATHLETES_2006= 'Number of Athletes - 2006' 
   APR_RATE_2005_1000= 'APR Rate - 2005 on 1000-point scale' 
   ELIG_RATE_2005= 'Eligibility Rate - 2005' 
   RET_RATE_2005= 'Retention Rate - 2005' 
   NUM_OF_ATHLETES_2005= 'Number of Athletes - 2005' 
   APR_RATE_2004_1000= 'APR Rate - 2004 on 1000-point scale' 
   ELIG_RATE_2004= 'Eligibility Rate - 2004' 
   RET_RATE_2004= 'Retention Rate - 2004' 
   NUM_OF_ATHLETES_2004= 'Number of Athletes - 2004' 
   DATA_TAB_PUBLICAWARD= 'DATA_TAB_PUBLICAWARD' 
   PUB_AWARD_15= 'APR Award 2015: based on Multi-year rate from 2010-11 to 2013-14' 
   PUB_AWARD_14= 'APR Award 2014: based on Multi-year rate from 2009-10 to 2012-13' 
   PUB_AWARD_13= 'APR Award 2013: based on Multi-year rate from 2008-09 to 2011-12' 
   PUB_AWARD_12= 'APR Award 2012: based on Multi-year rate from 2007-08 to 2010-11' 
   PUB_AWARD_11= 'APR Award 2011: based on Multi-year rate from 2006-07 to 2009-10' 
   PUB_AWARD_10= 'APR Award 2010: based on Multi-year rate from 2005-06 to 2008-09' 
   PUB_AWARD_09= 'APR Award 2009: based on Multi-year rate from 2004-05 to 2007-08' 
   PUB_AWARD_08= 'APR Award 2008: based on Multi-year rate from 2003-04 to 2005-07' 
   PUB_AWARD_07= 'APR Award 2007: based on Multi-year rate from 2003-04 to 2005-06' 
   PUB_AWARD_06= 'APR Award 2006: based on Multi-year rate from 2003-04 to 2004-05' 
   RAW_OR_CI= 'Use raw APR or Confidence Interval (squad-size adjustment)' 
        ; 


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (SCL_SUB_14 = -99) THEN SCL_SUB_14 = .;
   IF (MULTIYR_APR_RATE_1000_RAW = -99) THEN MULTIYR_APR_RATE_1000_RAW = .;
   IF (MULTIYR_APR_RATE_1000_CI = -99) THEN MULTIYR_APR_RATE_1000_CI = .;
   IF (MULTIYR_APR_RATE_1000_OFFICIAL = -99) THEN MULTIYR_APR_RATE_1000_OFFICIAL = .;
   IF (MULTIYR_ELIG_RATE = -99.0) THEN MULTIYR_ELIG_RATE = .;
   IF (MULTIYR_RET_RATE = -99.0) THEN MULTIYR_RET_RATE = .;
   IF (MULTIYR_SQUAD_SIZE = -99) THEN MULTIYR_SQUAD_SIZE = .;
   IF (APR_RATE_2014_1000 = -99) THEN APR_RATE_2014_1000 = .;
   IF (ELIG_RATE_2014 = -99.0) THEN ELIG_RATE_2014 = .;
   IF (RET_RATE_2014 = -99.0) THEN RET_RATE_2014 = .;
   IF (NUM_OF_ATHLETES_2014 = -99) THEN NUM_OF_ATHLETES_2014 = .;
   IF (APR_RATE_2013_1000 = -99) THEN APR_RATE_2013_1000 = .;
   IF (ELIG_RATE_2013 = -99.0) THEN ELIG_RATE_2013 = .;
   IF (RET_RATE_2013 = -99.0) THEN RET_RATE_2013 = .;
   IF (NUM_OF_ATHLETES_2013 = -99) THEN NUM_OF_ATHLETES_2013 = .;
   IF (APR_RATE_2012_1000 = -99) THEN APR_RATE_2012_1000 = .;
   IF (ELIG_RATE_2012 = -99.0) THEN ELIG_RATE_2012 = .;
   IF (RET_RATE_2012 = -99.0) THEN RET_RATE_2012 = .;
   IF (NUM_OF_ATHLETES_2012 = -99) THEN NUM_OF_ATHLETES_2012 = .;
   IF (APR_RATE_2011_1000 = -99) THEN APR_RATE_2011_1000 = .;
   IF (ELIG_RATE_2011 = -99.0) THEN ELIG_RATE_2011 = .;
   IF (RET_RATE_2011 = -99.0) THEN RET_RATE_2011 = .;
   IF (NUM_OF_ATHLETES_2011 = -99) THEN NUM_OF_ATHLETES_2011 = .;
   IF (APR_RATE_2010_1000 = -99) THEN APR_RATE_2010_1000 = .;
   IF (ELIG_RATE_2010 = -99.0) THEN ELIG_RATE_2010 = .;
   IF (RET_RATE_2010 = -99.0) THEN RET_RATE_2010 = .;
   IF (NUM_OF_ATHLETES_2010 = -99) THEN NUM_OF_ATHLETES_2010 = .;
   IF (APR_RATE_2009_1000 = -99) THEN APR_RATE_2009_1000 = .;
   IF (ELIG_RATE_2009 = -99.0) THEN ELIG_RATE_2009 = .;
   IF (RET_RATE_2009 = -99.0) THEN RET_RATE_2009 = .;
   IF (NUM_OF_ATHLETES_2009 = -99) THEN NUM_OF_ATHLETES_2009 = .;
   IF (APR_RATE_2008_1000 = -99) THEN APR_RATE_2008_1000 = .;
   IF (ELIG_RATE_2008 = -99.0) THEN ELIG_RATE_2008 = .;
   IF (RET_RATE_2008 = -99.0) THEN RET_RATE_2008 = .;
   IF (NUM_OF_ATHLETES_2008 = -99) THEN NUM_OF_ATHLETES_2008 = .;
   IF (APR_RATE_2007_1000 = -99) THEN APR_RATE_2007_1000 = .;
   IF (ELIG_RATE_2007 = -99.0) THEN ELIG_RATE_2007 = .;
   IF (RET_RATE_2007 = -99.0) THEN RET_RATE_2007 = .;
   IF (NUM_OF_ATHLETES_2007 = -99) THEN NUM_OF_ATHLETES_2007 = .;
   IF (APR_RATE_2006_1000 = -99) THEN APR_RATE_2006_1000 = .;
   IF (ELIG_RATE_2006 = -99.0) THEN ELIG_RATE_2006 = .;
   IF (RET_RATE_2006 = -99.0) THEN RET_RATE_2006 = .;
   IF (NUM_OF_ATHLETES_2006 = -99) THEN NUM_OF_ATHLETES_2006 = .;
   IF (APR_RATE_2005_1000 = -99) THEN APR_RATE_2005_1000 = .;
   IF (ELIG_RATE_2005 = -99.0) THEN ELIG_RATE_2005 = .;
   IF (RET_RATE_2005 = -99.0) THEN RET_RATE_2005 = .;
   IF (NUM_OF_ATHLETES_2005 = -99) THEN NUM_OF_ATHLETES_2005 = .;
   IF (APR_RATE_2004_1000 = -99) THEN APR_RATE_2004_1000 = .;
   IF (ELIG_RATE_2004 = -99.0) THEN ELIG_RATE_2004 = .;
   IF (RET_RATE_2004 = -99.0) THEN RET_RATE_2004 = .;
   IF (NUM_OF_ATHLETES_2004 = -99) THEN NUM_OF_ATHLETES_2004 = .;
   IF (RAW_OR_CI = -99) THEN RAW_OR_CI = .;
*/


* SAS FORMAT STATEMENT;

/*
   FORMAT
         ACADEMIC_YEAR academif. APR_RATE_2004_1000 multiyrf. APR_RATE_2005_1000 multiyrf.
         APR_RATE_2006_1000 multiyrf. APR_RATE_2007_1000 multiyrf. APR_RATE_2008_1000 multiyrf.
         APR_RATE_2009_1000 multiyrf. APR_RATE_2010_1000 multiyrf. APR_RATE_2011_1000 multiyrf.
         APR_RATE_2012_1000 multiyrf. APR_RATE_2013_1000 multiyrf. APR_RATE_2014_1000 multiyrf.
         ELIG_RATE_2004 multiyr_1f. ELIG_RATE_2005 multiyr_1f. ELIG_RATE_2006 multiyr_1f.
         ELIG_RATE_2007 multiyr_1f. ELIG_RATE_2008 multiyr_1f. ELIG_RATE_2009 multiyr_1f.
         ELIG_RATE_2010 multiyr_1f. ELIG_RATE_2011 multiyr_1f. ELIG_RATE_2012 multiyr_1f.
         ELIG_RATE_2013 multiyr_1f. ELIG_RATE_2014 multiyr_1f. MULTIYR_APR_RATE_1000_CI multiyrf.
         MULTIYR_APR_RATE_1000_OFFICIAL multiyrf. MULTIYR_APR_RATE_1000_RAW multiyrf. MULTIYR_ELIG_RATE multiyr_1f.
         MULTIYR_RET_RATE multiyr_1f. MULTIYR_SQUAD_SIZE multiyrf. NUM_OF_ATHLETES_2004 multiyrf.
         NUM_OF_ATHLETES_2005 multiyrf. NUM_OF_ATHLETES_2006 multiyrf. NUM_OF_ATHLETES_2007 multiyrf.
         NUM_OF_ATHLETES_2008 multiyrf. NUM_OF_ATHLETES_2009 multiyrf. NUM_OF_ATHLETES_2010 multiyrf.
         NUM_OF_ATHLETES_2011 multiyrf. NUM_OF_ATHLETES_2012 multiyrf. NUM_OF_ATHLETES_2013 multiyrf.
         NUM_OF_ATHLETES_2014 multiyrf. PUB_AWARD_06 pub_awaf. PUB_AWARD_07 pub_awaf.
         PUB_AWARD_08 pub_awaf. PUB_AWARD_09 pub_awaf. PUB_AWARD_10 pub_awaf.
         PUB_AWARD_11 pub_awaf. PUB_AWARD_12 pub_awaf. PUB_AWARD_13 pub_awaf.
         PUB_AWARD_14 pub_awaf. PUB_AWARD_15 pub_awaf. RAW_OR_CI raw_or_f.
         RET_RATE_2004 multiyr_1f. RET_RATE_2005 multiyr_1f. RET_RATE_2006 multiyr_1f.
         RET_RATE_2007 multiyr_1f. RET_RATE_2008 multiyr_1f. RET_RATE_2009 multiyr_1f.
         RET_RATE_2010 multiyr_1f. RET_RATE_2011 multiyr_1f. RET_RATE_2012 multiyr_1f.
         RET_RATE_2013 multiyr_1f. RET_RATE_2014 multiyr_1f. SCL_DIV_14 scl_divf.
         SCL_HBCU scl_hbcf. SCL_PRIVATE scl_prif. SCL_SUB_14 scl_subf.
         SPORT_CODE sport_cf.
    ;
*/

RUN ;

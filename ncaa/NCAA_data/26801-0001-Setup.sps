*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 26801
*            NCAA DIVISION I ACADEMIC PROGRESS RATE, 2003-2014
* 
*
*  SPSS setup sections are provided for the ASCII version of this data
*  collection.  These sections are listed below:
*
*  DATA LIST:  assigns the name, type, decimal specification (if any),
*  and specifies the beginning and ending column locations for each
*  variable in the data file. Users must replace the "data-filename"
*  in the DATA LIST statement with a filename specifying the directory
*  on the user's computer system in which the downloaded and unzipped
*  data file is physically located (e.g., "c:\temp\26801-0001-data.txt").
*
*  VARIABLE LABELS:  assigns descriptive labels to all variables.
*  Labels and variable names may be identical for some data files.
*
*  MISSING VALUES: declares user-defined missing values. Not all
*  variables in this data set necessarily have user-defined missing
*  values. These values can be treated specially in data transformations,
*  statistical calculations, and case selection.
*
*  VALUE LABELS: assigns descriptive labels to codes found in the data
*  file.  Not all codes necessarily have assigned value labels.
*
*  VARIABLE LEVEL: assigns measurement level to each variable (scale,
*  nominal, or ordinal).
*
*  NOTE:  Users should modify this setup file to suit their specific
*  needs. The MISSING VALUES section has been commented out (i.e., '*').
*  To include the MISSING VALUES section in the final SPSS setup, remove
*  the comment indicators from the desired section.
*
*  CREATING A PERMANENT SPSS DATA FILE: If users wish to create and save
*  an SPSS data file for further analysis using SPSS for Windows, the
*  necessary "SAVE OUTFILE" command is provided in the last line of
*  this file.  To activate the command, users must delete the leading
*  asterisk (*) and replace "spss-filename" with a filename specifying
*  the location on the user's computer system to which the new data file
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da26801-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=629.
DATA LIST FILE=DATA /
         DATA_TAB_GENERALINFO 1          SCL_UNITID 2-7
       SCL_NAME 8-65 (A)        SPORT_CODE 66-67    SPORT_NAME 68-89 (A)
     ACADEMIC_YEAR 90-93           SCL_DIV_14 94        SCL_SUB_14 95-97
  CONFNAME_14 98-146 (A) D1_FB_CONF_14 147-181 (A)            SCL_HBCU 182
         SCL_PRIVATE 183 DATA_TAB_MULTIYRRATE 184 MULTIYR_APR_RATE_1000_RAW 185-188
 MULTIYR_APR_RATE_1000_CI 189-192 MULTIYR_APR_RATE_1000_OFFICIAL 193-196 MULTIYR_ELIG_RATE 197-210 (10)
 MULTIYR_RET_RATE 211-224 (10) MULTIYR_SQUAD_SIZE 225-227 DATA_TAB_ANNUALRATE 228
 APR_RATE_2014_1000 229-232 ELIG_RATE_2014 233-246 (10) RET_RATE_2014 247-260 (10)
 NUM_OF_ATHLETES_2014 261-263 APR_RATE_2013_1000 264-267 ELIG_RATE_2013 268-281 (10)
 RET_RATE_2013 282-295 (10) NUM_OF_ATHLETES_2013 296-298 APR_RATE_2012_1000 299-302
 ELIG_RATE_2012 303-316 (10) RET_RATE_2012 317-330 (10) NUM_OF_ATHLETES_2012 331-333
 APR_RATE_2011_1000 334-337 ELIG_RATE_2011 338-351 (10) RET_RATE_2011 352-365 (10)
 NUM_OF_ATHLETES_2011 366-368 APR_RATE_2010_1000 369-372 ELIG_RATE_2010 373-386 (10)
 RET_RATE_2010 387-400 (10) NUM_OF_ATHLETES_2010 401-403 APR_RATE_2009_1000 404-407
 ELIG_RATE_2009 408-421 (10) RET_RATE_2009 422-435 (10) NUM_OF_ATHLETES_2009 436-438
 APR_RATE_2008_1000 439-442 ELIG_RATE_2008 443-456 (10) RET_RATE_2008 457-470 (10)
 NUM_OF_ATHLETES_2008 471-473 APR_RATE_2007_1000 474-477 ELIG_RATE_2007 478-491 (10)
 RET_RATE_2007 492-505 (10) NUM_OF_ATHLETES_2007 506-508 APR_RATE_2006_1000 509-512
 ELIG_RATE_2006 513-526 (10) RET_RATE_2006 527-540 (10) NUM_OF_ATHLETES_2006 541-543
 APR_RATE_2005_1000 544-547 ELIG_RATE_2005 548-561 (10) RET_RATE_2005 562-575 (10)
 NUM_OF_ATHLETES_2005 576-578 APR_RATE_2004_1000 579-582 ELIG_RATE_2004 583-596 (10)
 RET_RATE_2004 597-610 (10) NUM_OF_ATHLETES_2004 611-613 DATA_TAB_PUBLICAWARD 614-616
        PUB_AWARD_15 617        PUB_AWARD_14 618        PUB_AWARD_13 619
        PUB_AWARD_12 620        PUB_AWARD_11 621        PUB_AWARD_10 622
        PUB_AWARD_09 623        PUB_AWARD_08 624        PUB_AWARD_07 625
        PUB_AWARD_06 626       RAW_OR_CI 627-629
   .

* SPSS VARIABLE LABELS COMMAND

VARIABLE LABELS
   DATA_TAB_GENERALINFO 'DATA_TAB_GENERALINFO' /
   SCL_UNITID 'UNITID for Institution' /
   SCL_NAME  'Institution name' /
   SPORT_CODE 'Sport Code' /
   SPORT_NAME 'Sport Name' /
   ACADEMIC_YEAR 'Academic Year when latest APR data were collected' /
   SCL_DIV_14 'NCAA Division' /
   SCL_SUB_14 'NCAA Division I Subdivision' /
   CONFNAME_14 'Primary Conference 2014-15' /
   D1_FB_CONF_14 'Football Conference 2014' /
   SCL_HBCU  'Historically Black College or Univeristy' /
   SCL_PRIVATE 'Public or Private Institution' /
   DATA_TAB_MULTIYRRATE 'DATA_TAB_MULTIYRRATE' /
   MULTIYR_APR_RATE_1000_RAW 'Four_year APR(raw) on 1000-point scale: from 2010-11 to 2013-14' /
   MULTIYR_APR_RATE_1000_CI 'Four_year APR (Confidence Interval Boundary) on 1000-point scale: from 2010-11 t' /
   MULTIYR_APR_RATE_1000_OFFICIAL 'Four_year APR (used for official decision) on 1000-point scale: from 2010-11 to' /
   MULTIYR_ELIG_RATE 'Four_year Eligibility Rate: from 2010-11 to 2013-14' /
   MULTIYR_RET_RATE 'Four_year Retention Rate: from 2010-11 to 2013-14' /
   MULTIYR_SQUAD_SIZE 'Four_year Squad Size: from 2010-11 to 2013-14' /
   DATA_TAB_ANNUALRATE 'DATA_TAB_ANNUALRATE' /
   APR_RATE_2014_1000 'APR Rate - 2014 on 1000-point scale' /
   ELIG_RATE_2014 'Eligibility Rate - 2014' /
   RET_RATE_2014 'Retention Rate - 2014' /
   NUM_OF_ATHLETES_2014 'Number of Athletes - 2014' /
   APR_RATE_2013_1000 'APR Rate - 2013 on 1000-point scale' /
   ELIG_RATE_2013 'Eligibility Rate - 2013' /
   RET_RATE_2013 'Retention Rate - 2013' /
   NUM_OF_ATHLETES_2013 'Number of Athletes - 2013' /
   APR_RATE_2012_1000 'APR Rate - 2012 on 1000-point scale' /
   ELIG_RATE_2012 'Eligibility Rate - 2012' /
   RET_RATE_2012 'Retention Rate - 2012' /
   NUM_OF_ATHLETES_2012 'Number of Athletes - 2012' /
   APR_RATE_2011_1000 'APR Rate - 2011 on 1000-point scale' /
   ELIG_RATE_2011 'Eligibility Rate - 2011' /
   RET_RATE_2011 'Retention Rate - 2011' /
   NUM_OF_ATHLETES_2011 'Number of Athletes - 2011' /
   APR_RATE_2010_1000 'APR Rate - 2010 on 1000-point scale' /
   ELIG_RATE_2010 'Eligibility Rate - 2010' /
   RET_RATE_2010 'Retention Rate - 2010' /
   NUM_OF_ATHLETES_2010 'Number of Athletes - 2010' /
   APR_RATE_2009_1000 'APR Rate - 2009 on 1000-point scale' /
   ELIG_RATE_2009 'Eligibility Rate - 2009' /
   RET_RATE_2009 'Retention Rate - 2009' /
   NUM_OF_ATHLETES_2009 'Number of Athletes - 2009' /
   APR_RATE_2008_1000 'APR Rate - 2008 on 1000-point scale' /
   ELIG_RATE_2008 'Eligibility Rate - 2008' /
   RET_RATE_2008 'Retention Rate - 2008' /
   NUM_OF_ATHLETES_2008 'Number of Athletes - 2008' /
   APR_RATE_2007_1000 'APR Rate - 2007 on 1000-point scale' /
   ELIG_RATE_2007 'Eligibility Rate - 2007' /
   RET_RATE_2007 'Retention Rate - 2007' /
   NUM_OF_ATHLETES_2007 'Number of Athletes - 2007' /
   APR_RATE_2006_1000 'APR Rate - 2006 on 1000-point scale' /
   ELIG_RATE_2006 'Eligibility Rate - 2006' /
   RET_RATE_2006 'Retention Rate - 2006' /
   NUM_OF_ATHLETES_2006 'Number of Athletes - 2006' /
   APR_RATE_2005_1000 'APR Rate - 2005 on 1000-point scale' /
   ELIG_RATE_2005 'Eligibility Rate - 2005' /
   RET_RATE_2005 'Retention Rate - 2005' /
   NUM_OF_ATHLETES_2005 'Number of Athletes - 2005' /
   APR_RATE_2004_1000 'APR Rate - 2004 on 1000-point scale' /
   ELIG_RATE_2004 'Eligibility Rate - 2004' /
   RET_RATE_2004 'Retention Rate - 2004' /
   NUM_OF_ATHLETES_2004 'Number of Athletes - 2004' /
   DATA_TAB_PUBLICAWARD 'DATA_TAB_PUBLICAWARD' /
   PUB_AWARD_15 'APR Award 2015: based on Multi-year rate from 2010-11 to 2013-14' /
   PUB_AWARD_14 'APR Award 2014: based on Multi-year rate from 2009-10 to 2012-13' /
   PUB_AWARD_13 'APR Award 2013: based on Multi-year rate from 2008-09 to 2011-12' /
   PUB_AWARD_12 'APR Award 2012: based on Multi-year rate from 2007-08 to 2010-11' /
   PUB_AWARD_11 'APR Award 2011: based on Multi-year rate from 2006-07 to 2009-10' /
   PUB_AWARD_10 'APR Award 2010: based on Multi-year rate from 2005-06 to 2008-09' /
   PUB_AWARD_09 'APR Award 2009: based on Multi-year rate from 2004-05 to 2007-08' /
   PUB_AWARD_08 'APR Award 2008: based on Multi-year rate from 2003-04 to 2005-07' /
   PUB_AWARD_07 'APR Award 2007: based on Multi-year rate from 2003-04 to 2005-06' /
   PUB_AWARD_06 'APR Award 2006: based on Multi-year rate from 2003-04 to 2004-05' /
   RAW_OR_CI 'Use raw APR or Confidence Interval (squad-size adjustment)' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   SPORT_CODE 1 'Baseball' 2 'Men''s Basketball' 3 'Men''s Cross Country'
             4 'Football' 5 'Men''s Fencing' 6 'Men''s Golf'
             7 'Men''s Gymnastics' 8 'Men''s Ice Hockey' 9 'Men''s Lacrosse'
             10 'Men''s Skiing' 11 'Men''s Soccer' 12 'Men''s Swimming'
             13 'Men''s Tennis' 14 'Men''s Indoor Track'
             15 'Men''s Outdoor Track' 16 'Men''s Volleyball'
             17 'Men''s Water Polo' 18 'Men''s Wrestling'
             19 'Women''s Basketball' 20 'Women''s Bowling'
             21 'Women''s Cross Country' 22 'Women''s Rowing'
             23 'Women''s Fencing' 24 'Women''s Field Hockey'
             25 'Women''s Golf' 26 'Women''s Gymnastics'
             27 'Women''s Ice Hockey' 28 'Women''s Lacrosse'
             29 'Women''s Softball' 30 'Women''s Skiing' 31 'Women''s Soccer'
             32 'Women''s Swimming' 33 'Women''s Tennis'
             34 'Women''s Indoor Track' 35 'Women''s Outdoor Track'
             36 'Women''s Volleyball' 37 'Women''s Water Polo'
             38 'Mixed Rifle' /
   ACADEMIC_YEAR 2014 '2013-14' /
   SCL_DIV_14 1 'Division I' 2 'Division II' 3 'Division III' /
   SCL_SUB_14 -99 'System Missing'
             1 'Football Bowl Series (FBS, formerly I-A)'
             2 'Football Championship Series (FCS, formerly I-AA)'
             3 'Division I (no football, formerly I-AAA)' /
   SCL_HBCU  1 'Yes' 2 'No' /
   SCL_PRIVATE 0 'Public' 1 'Private' /
   MULTIYR_APR_RATE_1000_RAW -99 'System Missing' /
   MULTIYR_APR_RATE_1000_CI -99 'System Missing' /
   MULTIYR_APR_RATE_1000_OFFICIAL -99 'System Missing' /
   MULTIYR_ELIG_RATE -99 'System Missing' /
   MULTIYR_RET_RATE -99 'System Missing' /
   MULTIYR_SQUAD_SIZE -99 'System Missing' /
   APR_RATE_2014_1000 -99 'System Missing' /
   ELIG_RATE_2014 -99 'System Missing' /
   RET_RATE_2014 -99 'System Missing' /
   NUM_OF_ATHLETES_2014 -99 'System Missing' /
   APR_RATE_2013_1000 -99 'System Missing' /
   ELIG_RATE_2013 -99 'System Missing' /
   RET_RATE_2013 -99 'System Missing' /
   NUM_OF_ATHLETES_2013 -99 'System Missing' /
   APR_RATE_2012_1000 -99 'System Missing' /
   ELIG_RATE_2012 -99 'System Missing' /
   RET_RATE_2012 -99 'System Missing' /
   NUM_OF_ATHLETES_2012 -99 'System Missing' /
   APR_RATE_2011_1000 -99 'System Missing' /
   ELIG_RATE_2011 -99 'System Missing' /
   RET_RATE_2011 -99 'System Missing' /
   NUM_OF_ATHLETES_2011 -99 'System Missing' /
   APR_RATE_2010_1000 -99 'System Missing' /
   ELIG_RATE_2010 -99 'System Missing' /
   RET_RATE_2010 -99 'System Missing' /
   NUM_OF_ATHLETES_2010 -99 'System Missing' /
   APR_RATE_2009_1000 -99 'System Missing' /
   ELIG_RATE_2009 -99 'System Missing' /
   RET_RATE_2009 -99 'System Missing' /
   NUM_OF_ATHLETES_2009 -99 'System Missing' /
   APR_RATE_2008_1000 -99 'System Missing' /
   ELIG_RATE_2008 -99 'System Missing' /
   RET_RATE_2008 -99 'System Missing' /
   NUM_OF_ATHLETES_2008 -99 'System Missing' /
   APR_RATE_2007_1000 -99 'System Missing' /
   ELIG_RATE_2007 -99 'System Missing' /
   RET_RATE_2007 -99 'System Missing' /
   NUM_OF_ATHLETES_2007 -99 'System Missing' /
   APR_RATE_2006_1000 -99 'System Missing' /
   ELIG_RATE_2006 -99 'System Missing' /
   RET_RATE_2006 -99 'System Missing' /
   NUM_OF_ATHLETES_2006 -99 'System Missing' /
   APR_RATE_2005_1000 -99 'System Missing' /
   ELIG_RATE_2005 -99 'System Missing' /
   RET_RATE_2005 -99 'System Missing' /
   NUM_OF_ATHLETES_2005 -99 'System Missing' /
   APR_RATE_2004_1000 -99 'System Missing' /
   ELIG_RATE_2004 -99 'System Missing' /
   RET_RATE_2004 -99 'System Missing' /
   NUM_OF_ATHLETES_2004 -99 'System Missing' /
   PUB_AWARD_15 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_14 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_13 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_12 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_11 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_10 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_09 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_08 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_07 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   PUB_AWARD_06 0 'Team Did Not Receive Award' 1 'Team Received Award' /
   RAW_OR_CI -99 'System Missing' 1 'Confidence Interval' 2 'Raw Rate' /
   .

* SPSS MISSING VALUES COMMAND.

* MISSING VALUES
     SCL_SUB_14 (-99) /
     MULTIYR_APR_RATE_1000_RAW (-99) /
     MULTIYR_APR_RATE_1000_CI (-99) /
     MULTIYR_APR_RATE_1000_OFFICIAL (-99) /
     MULTIYR_ELIG_RATE (-99.0) /
     MULTIYR_RET_RATE (-99.0) /
     MULTIYR_SQUAD_SIZE (-99) /
     APR_RATE_2014_1000 (-99) /
     ELIG_RATE_2014 (-99.0) /
     RET_RATE_2014 (-99.0) /
     NUM_OF_ATHLETES_2014 (-99) /
     APR_RATE_2013_1000 (-99) /
     ELIG_RATE_2013 (-99.0) /
     RET_RATE_2013 (-99.0) /
     NUM_OF_ATHLETES_2013 (-99) /
     APR_RATE_2012_1000 (-99) /
     ELIG_RATE_2012 (-99.0) /
     RET_RATE_2012 (-99.0) /
     NUM_OF_ATHLETES_2012 (-99) /
     APR_RATE_2011_1000 (-99) /
     ELIG_RATE_2011 (-99.0) /
     RET_RATE_2011 (-99.0) /
     NUM_OF_ATHLETES_2011 (-99) /
     APR_RATE_2010_1000 (-99) /
     ELIG_RATE_2010 (-99.0) /
     RET_RATE_2010 (-99.0) /
     NUM_OF_ATHLETES_2010 (-99) /
     APR_RATE_2009_1000 (-99) /
     ELIG_RATE_2009 (-99.0) /
     RET_RATE_2009 (-99.0) /
     NUM_OF_ATHLETES_2009 (-99) /
     APR_RATE_2008_1000 (-99) /
     ELIG_RATE_2008 (-99.0) /
     RET_RATE_2008 (-99.0) /
     NUM_OF_ATHLETES_2008 (-99) /
     APR_RATE_2007_1000 (-99) /
     ELIG_RATE_2007 (-99.0) /
     RET_RATE_2007 (-99.0) /
     NUM_OF_ATHLETES_2007 (-99) /
     APR_RATE_2006_1000 (-99) /
     ELIG_RATE_2006 (-99.0) /
     RET_RATE_2006 (-99.0) /
     NUM_OF_ATHLETES_2006 (-99) /
     APR_RATE_2005_1000 (-99) /
     ELIG_RATE_2005 (-99.0) /
     RET_RATE_2005 (-99.0) /
     NUM_OF_ATHLETES_2005 (-99) /
     APR_RATE_2004_1000 (-99) /
     ELIG_RATE_2004 (-99.0) /
     RET_RATE_2004 (-99.0) /
     NUM_OF_ATHLETES_2004 (-99) /
     RAW_OR_CI (-99) /
   .

EXECUTE.

* SPSS VARIABLE LEVEL COMMAND.

VARIABLE LEVEL
   DATA_TAB_GENERALINFO
   SCL_UNITID
   DATA_TAB_MULTIYRRATE
   MULTIYR_APR_RATE_1000_RAW
   MULTIYR_APR_RATE_1000_CI
   MULTIYR_APR_RATE_1000_OFFICIAL
   MULTIYR_ELIG_RATE
   MULTIYR_RET_RATE
   MULTIYR_SQUAD_SIZE
   DATA_TAB_ANNUALRATE
   APR_RATE_2014_1000
   ELIG_RATE_2014
   RET_RATE_2014
   NUM_OF_ATHLETES_2014
   APR_RATE_2013_1000
   ELIG_RATE_2013
   RET_RATE_2013
   NUM_OF_ATHLETES_2013
   APR_RATE_2012_1000
   ELIG_RATE_2012
   RET_RATE_2012
   NUM_OF_ATHLETES_2012
   APR_RATE_2011_1000
   ELIG_RATE_2011
   RET_RATE_2011
   NUM_OF_ATHLETES_2011
   APR_RATE_2010_1000
   ELIG_RATE_2010
   RET_RATE_2010
   NUM_OF_ATHLETES_2010
   APR_RATE_2009_1000
   ELIG_RATE_2009
   RET_RATE_2009
   NUM_OF_ATHLETES_2009
   APR_RATE_2008_1000
   ELIG_RATE_2008
   RET_RATE_2008
   NUM_OF_ATHLETES_2008
   APR_RATE_2007_1000
   ELIG_RATE_2007
   RET_RATE_2007
   NUM_OF_ATHLETES_2007
   APR_RATE_2006_1000
   ELIG_RATE_2006
   RET_RATE_2006
   NUM_OF_ATHLETES_2006
   APR_RATE_2005_1000
   ELIG_RATE_2005
   RET_RATE_2005
   NUM_OF_ATHLETES_2005
   APR_RATE_2004_1000
   ELIG_RATE_2004
   RET_RATE_2004
   NUM_OF_ATHLETES_2004
   DATA_TAB_PUBLICAWARD
    (scale).

VARIABLE LEVEL
   SCL_NAME
   SPORT_CODE
   SPORT_NAME
   ACADEMIC_YEAR
   SCL_DIV_14
   SCL_SUB_14
   CONFNAME_14
   D1_FB_CONF_14
   SCL_HBCU
   SCL_PRIVATE
   PUB_AWARD_15
   PUB_AWARD_14
   PUB_AWARD_13
   PUB_AWARD_12
   PUB_AWARD_11
   PUB_AWARD_10
   PUB_AWARD_09
   PUB_AWARD_08
   PUB_AWARD_07
   PUB_AWARD_06
   RAW_OR_CI
    (nominal).

* SPSS PRINT FORMAT COMMAND.

PRINT FORMAT
   DATA_TAB_GENERALINFO (F1)
   SCL_UNITID (F6)
   SPORT_CODE (F2)
   ACADEMIC_YEAR (F4)
   SCL_DIV_14 (F1)
   SCL_SUB_14 (F3)
   SCL_HBCU (F1)
   SCL_PRIVATE (F1)
   DATA_TAB_MULTIYRRATE (F1)
   MULTIYR_APR_RATE_1000_RAW (F4)
   MULTIYR_APR_RATE_1000_CI (F4)
   MULTIYR_APR_RATE_1000_OFFICIAL (F4)
   MULTIYR_ELIG_RATE (F6.2)
   MULTIYR_RET_RATE (F6.2)
   MULTIYR_SQUAD_SIZE (F3)
   DATA_TAB_ANNUALRATE (F1)
   APR_RATE_2014_1000 (F4)
   ELIG_RATE_2014 (F6.2)
   RET_RATE_2014 (F6.2)
   NUM_OF_ATHLETES_2014 (F3)
   APR_RATE_2013_1000 (F4)
   ELIG_RATE_2013 (F6.2)
   RET_RATE_2013 (F6.2)
   NUM_OF_ATHLETES_2013 (F3)
   APR_RATE_2012_1000 (F4)
   ELIG_RATE_2012 (F6.2)
   RET_RATE_2012 (F6.2)
   NUM_OF_ATHLETES_2012 (F3)
   APR_RATE_2011_1000 (F4)
   ELIG_RATE_2011 (F6.2)
   RET_RATE_2011 (F6.2)
   NUM_OF_ATHLETES_2011 (F3)
   APR_RATE_2010_1000 (F4)
   ELIG_RATE_2010 (F6.2)
   RET_RATE_2010 (F6.2)
   NUM_OF_ATHLETES_2010 (F3)
   APR_RATE_2009_1000 (F4)
   ELIG_RATE_2009 (F6.2)
   RET_RATE_2009 (F6.2)
   NUM_OF_ATHLETES_2009 (F3)
   APR_RATE_2008_1000 (F4)
   ELIG_RATE_2008 (F6.2)
   RET_RATE_2008 (F6.2)
   NUM_OF_ATHLETES_2008 (F3)
   APR_RATE_2007_1000 (F4)
   ELIG_RATE_2007 (F6.2)
   RET_RATE_2007 (F6.2)
   NUM_OF_ATHLETES_2007 (F3)
   APR_RATE_2006_1000 (F4)
   ELIG_RATE_2006 (F6.2)
   RET_RATE_2006 (F6.2)
   NUM_OF_ATHLETES_2006 (F3)
   APR_RATE_2005_1000 (F4)
   ELIG_RATE_2005 (F6.2)
   RET_RATE_2005 (F6.2)
   NUM_OF_ATHLETES_2005 (F3)
   APR_RATE_2004_1000 (F4)
   ELIG_RATE_2004 (F6.2)
   RET_RATE_2004 (F6.2)
   NUM_OF_ATHLETES_2004 (F3)
   DATA_TAB_PUBLICAWARD (F3)
   PUB_AWARD_15 (F1)
   PUB_AWARD_14 (F1)
   PUB_AWARD_13 (F1)
   PUB_AWARD_12 (F1)
   PUB_AWARD_11 (F1)
   PUB_AWARD_10 (F1)
   PUB_AWARD_09 (F1)
   PUB_AWARD_08 (F1)
   PUB_AWARD_07 (F1)
   PUB_AWARD_06 (F1)
   RAW_OR_CI (F3)
  .

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".

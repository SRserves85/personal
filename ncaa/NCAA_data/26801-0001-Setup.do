/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 26801
 |           NCAA DIVISION I ACADEMIC PROGRESS RATE, 2003-2014
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 26801-0001-statasetup.do)
 |
 **************************************************************************/

set mem 20m  /* Allocating 20 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/********************************************************************

 Section 3: Reformat

  This section applies optimized formats to variables.

*********************************************************************/

format DATA_TAB_GENERALINFO %1.0f
format SCL_UNITID %6.0f
format SPORT_CODE %2.0f
format ACADEMIC_YEAR %4.0f
format SCL_DIV_14 %1.0f
format SCL_SUB_14 %3.0f
format SCL_HBCU %1.0f
format SCL_PRIVATE %1.0f
format DATA_TAB_MULTIYRRATE %1.0f
format MULTIYR_APR_RATE_1000_RAW %4.0f
format MULTIYR_APR_RATE_1000_CI %4.0f
format MULTIYR_APR_RATE_1000_OFFICIAL %4.0f
format MULTIYR_ELIG_RATE %6.2f
format MULTIYR_RET_RATE %6.2f
format MULTIYR_SQUAD_SIZE %3.0f
format DATA_TAB_ANNUALRATE %1.0f
format APR_RATE_2014_1000 %4.0f
format ELIG_RATE_2014 %6.2f
format RET_RATE_2014 %6.2f
format NUM_OF_ATHLETES_2014 %3.0f
format APR_RATE_2013_1000 %4.0f
format ELIG_RATE_2013 %6.2f
format RET_RATE_2013 %6.2f
format NUM_OF_ATHLETES_2013 %3.0f
format APR_RATE_2012_1000 %4.0f
format ELIG_RATE_2012 %6.2f
format RET_RATE_2012 %6.2f
format NUM_OF_ATHLETES_2012 %3.0f
format APR_RATE_2011_1000 %4.0f
format ELIG_RATE_2011 %6.2f
format RET_RATE_2011 %6.2f
format NUM_OF_ATHLETES_2011 %3.0f
format APR_RATE_2010_1000 %4.0f
format ELIG_RATE_2010 %6.2f
format RET_RATE_2010 %6.2f
format NUM_OF_ATHLETES_2010 %3.0f
format APR_RATE_2009_1000 %4.0f
format ELIG_RATE_2009 %6.2f
format RET_RATE_2009 %6.2f
format NUM_OF_ATHLETES_2009 %3.0f
format APR_RATE_2008_1000 %4.0f
format ELIG_RATE_2008 %6.2f
format RET_RATE_2008 %6.2f
format NUM_OF_ATHLETES_2008 %3.0f
format APR_RATE_2007_1000 %4.0f
format ELIG_RATE_2007 %6.2f
format RET_RATE_2007 %6.2f
format NUM_OF_ATHLETES_2007 %3.0f
format APR_RATE_2006_1000 %4.0f
format ELIG_RATE_2006 %6.2f
format RET_RATE_2006 %6.2f
format NUM_OF_ATHLETES_2006 %3.0f
format APR_RATE_2005_1000 %4.0f
format ELIG_RATE_2005 %6.2f
format RET_RATE_2005 %6.2f
format NUM_OF_ATHLETES_2005 %3.0f
format APR_RATE_2004_1000 %4.0f
format ELIG_RATE_2004 %6.2f
format RET_RATE_2004 %6.2f
format NUM_OF_ATHLETES_2004 %3.0f
format DATA_TAB_PUBLICAWARD %3.0f
format PUB_AWARD_15 %1.0f
format PUB_AWARD_14 %1.0f
format PUB_AWARD_13 %1.0f
format PUB_AWARD_12 %1.0f
format PUB_AWARD_11 %1.0f
format PUB_AWARD_10 %1.0f
format PUB_AWARD_09 %1.0f
format PUB_AWARD_08 %1.0f
format PUB_AWARD_07 %1.0f
format PUB_AWARD_06 %1.0f
format RAW_OR_CI %3.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "NCAA Division I Academic Progress Rate, 2003-2014"

#delimit ;
label define SPORT_CODE 1 "Baseball" 2 "Men's Basketball"
                       3 "Men's Cross Country" 4 "Football" 5 "Men's Fencing"
                       6 "Men's Golf" 7 "Men's Gymnastics"
                       8 "Men's Ice Hockey" 9 "Men's Lacrosse"
                       10 "Men's Skiing" 11 "Men's Soccer"
                       12 "Men's Swimming" 13 "Men's Tennis"
                       14 "Men's Indoor Track" 15 "Men's Outdoor Track"
                       16 "Men's Volleyball" 17 "Men's Water Polo"
                       18 "Men's Wrestling" 19 "Women's Basketball"
                       20 "Women's Bowling" 21 "Women's Cross Country"
                       22 "Women's Rowing" 23 "Women's Fencing"
                       24 "Women's Field Hockey" 25 "Women's Golf"
                       26 "Women's Gymnastics" 27 "Women's Ice Hockey"
                       28 "Women's Lacrosse" 29 "Women's Softball"
                       30 "Women's Skiing" 31 "Women's Soccer"
                       32 "Women's Swimming" 33 "Women's Tennis"
                       34 "Women's Indoor Track" 35 "Women's Outdoor Track"
                       36 "Women's Volleyball" 37 "Women's Water Polo"
                       38 "Mixed Rifle" ;
label define ACADEMIC_YEAR 2014 "2013-14" ;
label define SCL_DIV_14 1 "Division I" 2 "Division II" 3 "Division III" ;
label define SCL_SUB_14 -99 "System Missing"
                       1 "Football Bowl Series (FBS, formerly I-A)"
                       2 "Football Championship Series (FCS, formerly I-AA)"
                       3 "Division I (no football, formerly I-AAA)" ;
label define SCL_HBCU  1 "Yes" 2 "No" ;
label define SCL_PRIVATE 0 "Public" 1 "Private" ;
label define MULTIYR_APR_RATE_1000_RAW -99 "System Missing" ;
label define MULTIYR_APR_RATE_1000_CI -99 "System Missing" ;
label define MULTIYR_APR_RATE_1000_OFFICIAL -99 "System Missing" ;
label define MULTIYR_ELIG_RATE -99 "System Missing" ;
label define MULTIYR_RET_RATE -99 "System Missing" ;
label define MULTIYR_SQUAD_SIZE -99 "System Missing" ;
label define APR_RATE_2014_1000 -99 "System Missing" ;
label define ELIG_RATE_2014 -99 "System Missing" ;
label define RET_RATE_2014 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2014 -99 "System Missing" ;
label define APR_RATE_2013_1000 -99 "System Missing" ;
label define ELIG_RATE_2013 -99 "System Missing" ;
label define RET_RATE_2013 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2013 -99 "System Missing" ;
label define APR_RATE_2012_1000 -99 "System Missing" ;
label define ELIG_RATE_2012 -99 "System Missing" ;
label define RET_RATE_2012 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2012 -99 "System Missing" ;
label define APR_RATE_2011_1000 -99 "System Missing" ;
label define ELIG_RATE_2011 -99 "System Missing" ;
label define RET_RATE_2011 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2011 -99 "System Missing" ;
label define APR_RATE_2010_1000 -99 "System Missing" ;
label define ELIG_RATE_2010 -99 "System Missing" ;
label define RET_RATE_2010 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2010 -99 "System Missing" ;
label define APR_RATE_2009_1000 -99 "System Missing" ;
label define ELIG_RATE_2009 -99 "System Missing" ;
label define RET_RATE_2009 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2009 -99 "System Missing" ;
label define APR_RATE_2008_1000 -99 "System Missing" ;
label define ELIG_RATE_2008 -99 "System Missing" ;
label define RET_RATE_2008 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2008 -99 "System Missing" ;
label define APR_RATE_2007_1000 -99 "System Missing" ;
label define ELIG_RATE_2007 -99 "System Missing" ;
label define RET_RATE_2007 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2007 -99 "System Missing" ;
label define APR_RATE_2006_1000 -99 "System Missing" ;
label define ELIG_RATE_2006 -99 "System Missing" ;
label define RET_RATE_2006 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2006 -99 "System Missing" ;
label define APR_RATE_2005_1000 -99 "System Missing" ;
label define ELIG_RATE_2005 -99 "System Missing" ;
label define RET_RATE_2005 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2005 -99 "System Missing" ;
label define APR_RATE_2004_1000 -99 "System Missing" ;
label define ELIG_RATE_2004 -99 "System Missing" ;
label define RET_RATE_2004 -99 "System Missing" ;
label define NUM_OF_ATHLETES_2004 -99 "System Missing" ;
label define PUB_AWARD_15 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_14 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_13 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_12 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_11 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_10 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_09 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_08 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_07 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define PUB_AWARD_06 0 "Team Did Not Receive Award" 1 "Team Received Award" ;
label define RAW_OR_CI -99 "System Missing" 1 "Confidence Interval"
                       2 "Raw Rate" ;


#delimit cr


/***************************************************************************

 Section 5: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
replace SCL_SUB_14 = . if (SCL_SUB_14 == -99)
replace MULTIYR_APR_RATE_1000_RAW = . if (MULTIYR_APR_RATE_1000_RAW == -99)
replace MULTIYR_APR_RATE_1000_CI = . if (MULTIYR_APR_RATE_1000_CI == -99)
replace MULTIYR_APR_RATE_1000_OFFICIAL = . if (MULTIYR_APR_RATE_1000_OFFICIAL == -99)
replace MULTIYR_ELIG_RATE = . if (MULTIYR_ELIG_RATE == -99.0)
replace MULTIYR_RET_RATE = . if (MULTIYR_RET_RATE == -99.0)
replace MULTIYR_SQUAD_SIZE = . if (MULTIYR_SQUAD_SIZE == -99)
replace APR_RATE_2014_1000 = . if (APR_RATE_2014_1000 == -99)
replace ELIG_RATE_2014 = . if (ELIG_RATE_2014 == -99.0)
replace RET_RATE_2014 = . if (RET_RATE_2014 == -99.0)
replace NUM_OF_ATHLETES_2014 = . if (NUM_OF_ATHLETES_2014 == -99)
replace APR_RATE_2013_1000 = . if (APR_RATE_2013_1000 == -99)
replace ELIG_RATE_2013 = . if (ELIG_RATE_2013 == -99.0)
replace RET_RATE_2013 = . if (RET_RATE_2013 == -99.0)
replace NUM_OF_ATHLETES_2013 = . if (NUM_OF_ATHLETES_2013 == -99)
replace APR_RATE_2012_1000 = . if (APR_RATE_2012_1000 == -99)
replace ELIG_RATE_2012 = . if (ELIG_RATE_2012 == -99.0)
replace RET_RATE_2012 = . if (RET_RATE_2012 == -99.0)
replace NUM_OF_ATHLETES_2012 = . if (NUM_OF_ATHLETES_2012 == -99)
replace APR_RATE_2011_1000 = . if (APR_RATE_2011_1000 == -99)
replace ELIG_RATE_2011 = . if (ELIG_RATE_2011 == -99.0)
replace RET_RATE_2011 = . if (RET_RATE_2011 == -99.0)
replace NUM_OF_ATHLETES_2011 = . if (NUM_OF_ATHLETES_2011 == -99)
replace APR_RATE_2010_1000 = . if (APR_RATE_2010_1000 == -99)
replace ELIG_RATE_2010 = . if (ELIG_RATE_2010 == -99.0)
replace RET_RATE_2010 = . if (RET_RATE_2010 == -99.0)
replace NUM_OF_ATHLETES_2010 = . if (NUM_OF_ATHLETES_2010 == -99)
replace APR_RATE_2009_1000 = . if (APR_RATE_2009_1000 == -99)
replace ELIG_RATE_2009 = . if (ELIG_RATE_2009 == -99.0)
replace RET_RATE_2009 = . if (RET_RATE_2009 == -99.0)
replace NUM_OF_ATHLETES_2009 = . if (NUM_OF_ATHLETES_2009 == -99)
replace APR_RATE_2008_1000 = . if (APR_RATE_2008_1000 == -99)
replace ELIG_RATE_2008 = . if (ELIG_RATE_2008 == -99.0)
replace RET_RATE_2008 = . if (RET_RATE_2008 == -99.0)
replace NUM_OF_ATHLETES_2008 = . if (NUM_OF_ATHLETES_2008 == -99)
replace APR_RATE_2007_1000 = . if (APR_RATE_2007_1000 == -99)
replace ELIG_RATE_2007 = . if (ELIG_RATE_2007 == -99.0)
replace RET_RATE_2007 = . if (RET_RATE_2007 == -99.0)
replace NUM_OF_ATHLETES_2007 = . if (NUM_OF_ATHLETES_2007 == -99)
replace APR_RATE_2006_1000 = . if (APR_RATE_2006_1000 == -99)
replace ELIG_RATE_2006 = . if (ELIG_RATE_2006 == -99.0)
replace RET_RATE_2006 = . if (RET_RATE_2006 == -99.0)
replace NUM_OF_ATHLETES_2006 = . if (NUM_OF_ATHLETES_2006 == -99)
replace APR_RATE_2005_1000 = . if (APR_RATE_2005_1000 == -99)
replace ELIG_RATE_2005 = . if (ELIG_RATE_2005 == -99.0)
replace RET_RATE_2005 = . if (RET_RATE_2005 == -99.0)
replace NUM_OF_ATHLETES_2005 = . if (NUM_OF_ATHLETES_2005 == -99)
replace APR_RATE_2004_1000 = . if (APR_RATE_2004_1000 == -99)
replace ELIG_RATE_2004 = . if (ELIG_RATE_2004 == -99.0)
replace RET_RATE_2004 = . if (RET_RATE_2004 == -99.0)
replace NUM_OF_ATHLETES_2004 = . if (NUM_OF_ATHLETES_2004 == -99)
replace RAW_OR_CI = . if (RAW_OR_CI == -99)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace


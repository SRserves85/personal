/*-------------------------------------------------------------------------
 |                                                                         
 |             SAS SUPPLEMENTAL SYNTAX FILE FOR ICPSR 26801
 |           NCAA DIVISION I ACADEMIC PROGRESS RATE, 2003-2014
 |
 | This SAS program is provided for optional use with the SAS transport
 | version of this data file as distributed by ICPSR. The metadata
 | provided below are not stored in the SAS transport version of this data
 | collection.  Users need to use SAS PROC CIMPORT to import the SAS
 | transport file to a SAS data set on their system. This program can
 | then be used in conjunction with the SAS system data file.
 |
 | DATA:  begins a SAS data step and names an output SAS data set. Users
 | should replace "SAS-dataset" with their name for the SAS data set copied
 | from the SAS transport file. Users can add a SAS libname statement
 | and an output SAS data set name to make a permanent SAS data set.
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
 | NOTE:  Users should modify this file to suit their specific needs.
 | The MISSING VALUE RECODES section has been commented out (i.e., '/*').
 | To make this section active in the program, users should remove the SAS
 | comment indicators from this section.
 |
 |------------------------------------------------------------------------*/


* SAS DATA STEP;
DATA;
SET SAS-dataset ;


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

RUN ;

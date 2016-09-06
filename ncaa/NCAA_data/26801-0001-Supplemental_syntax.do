/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 26801
 |           NCAA DIVISION I ACADEMIC PROGRESS RATE, 2003-2014
 |
 |
 | This Stata missing value recode program is provided for optional use with
 | the Stata system version of this data file as distributed by ICPSR.
 | The program replaces user-defined numeric missing values (e.g., -9)
 | with generic system missing "."  Note that Stata allows you to specify
 | up to 27 unique missing value codes.  Only variables with user-defined
 | missing values are included in this program.
 |
 | To apply the missing value recodes, users need to first open the
 | Stata data file on their system, apply the missing value recodes if
 | desired, then save a new copy of the data file with the missing values
 | applied.  Users are strongly advised to use a different filename when
 | saving the new file.
 |
 *------------------------------------------------------------------------*/

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



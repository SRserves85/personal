import pandas as pd
import numpy as np

def ncaa_formatter():
	raw = pd.read_table('documents/NCAA_data/26801-0001-Data.tsv')

	usefull = raw[['ACADEMIC_YEAR',
				   'SPORT_NAME',
				   'SPORT_CODE',
				   'SCL_NAME', 
				   'ELIG_RATE_2014', 
				   'RET_RATE_2014', 
				   'NUM_OF_ATHLETES_2014', 
				   'ELIG_RATE_2013', 
				   'RET_RATE_2013', 
				   'NUM_OF_ATHLETES_2013', 
				   'ELIG_RATE_2012', 
				   'RET_RATE_2012', 
				   'NUM_OF_ATHLETES_2012', 
				   'ELIG_RATE_2011', 
				   'RET_RATE_2011', 
				   'NUM_OF_ATHLETES_2011', 
				   'ELIG_RATE_2010', 
				   'RET_RATE_2010', 
				   'NUM_OF_ATHLETES_2010',
				   'ELIG_RATE_2009', 
				   'RET_RATE_2009', 
				   'NUM_OF_ATHLETES_2009',
				   'ELIG_RATE_2008', 
				   'RET_RATE_2008', 
				   'NUM_OF_ATHLETES_2008',
				   'ELIG_RATE_2007', 
				   'RET_RATE_2007', 
				   'NUM_OF_ATHLETES_2007',
				   'ELIG_RATE_2006', 
				   'RET_RATE_2006', 
				   'NUM_OF_ATHLETES_2006',
				   'ELIG_RATE_2005', 
				   'RET_RATE_2005', 
				   'NUM_OF_ATHLETES_2005',
				   ]]

	out = []

	df2014 = pd.DataFrame()
	df2014['school'] = usefull['SCL_NAME']
	df2014['sport'] = usefull['SPORT_CODE']
	df2014['sport_name'] = usefull['SPORT_NAME']
	df2014['elg_rate'] = usefull['ELIG_RATE_2014']
	df2014['ret_rate'] = usefull['RET_RATE_2014']
	df2014['num_athletes'] = usefull['NUM_OF_ATHLETES_2014']
	df2014['year'] = '2014'
	out.append(df2014)

	df2013 = pd.DataFrame()
	df2013['school'] = usefull['SCL_NAME']
	df2013['sport'] = usefull['SPORT_CODE']
	df2013['sport_name'] = usefull['SPORT_NAME']
	df2013['elg_rate'] = usefull['ELIG_RATE_2013']
	df2013['ret_rate'] = usefull['RET_RATE_2013']
	df2013['num_athletes'] = usefull['NUM_OF_ATHLETES_2013']
	df2013['year'] = '2013'
	out.append(df2013)

	df2012 = pd.DataFrame()
	df2012['school'] = usefull['SCL_NAME']
	df2012['sport'] = usefull['SPORT_CODE']
	df2012['sport_name'] = usefull['SPORT_NAME']
	df2012['elg_rate'] = usefull['ELIG_RATE_2012']
	df2012['ret_rate'] = usefull['RET_RATE_2012']
	df2012['num_athletes'] = usefull['NUM_OF_ATHLETES_2012']
	df2012['year'] = '2012'
	out.append(df2012)

	df2011 = pd.DataFrame()
	df2011['school'] = usefull['SCL_NAME']
	df2011['sport'] = usefull['SPORT_CODE']
	df2011['sport_name'] = usefull['SPORT_NAME']
	df2011['elg_rate'] = usefull['ELIG_RATE_2011']
	df2011['ret_rate'] = usefull['RET_RATE_2011']
	df2011['num_athletes'] = usefull['NUM_OF_ATHLETES_2011']
	df2011['year'] = '2011'
	out.append(df2011)

	df2010 = pd.DataFrame()
	df2010['school'] = usefull['SCL_NAME']
	df2010['sport'] = usefull['SPORT_CODE']
	df2010['sport_name'] = usefull['SPORT_NAME']
	df2010['elg_rate'] = usefull['ELIG_RATE_2010']
	df2010['ret_rate'] = usefull['RET_RATE_2010']
	df2010['num_athletes'] = usefull['NUM_OF_ATHLETES_2010']
	df2010['year'] = '2010'
	out.append(df2010)

	df2009 = pd.DataFrame()
	df2009['school'] = usefull['SCL_NAME']
	df2009['sport'] = usefull['SPORT_CODE']
	df2009['sport_name'] = usefull['SPORT_NAME']
	df2009['elg_rate'] = usefull['ELIG_RATE_2009']
	df2009['ret_rate'] = usefull['RET_RATE_2009']
	df2009['num_athletes'] = usefull['NUM_OF_ATHLETES_2009']
	df2009['year'] = '2009'
	out.append(df2009)

	df2008 = pd.DataFrame()
	df2008['school'] = usefull['SCL_NAME']
	df2008['sport'] = usefull['SPORT_CODE']
	df2008['sport_name'] = usefull['SPORT_NAME']
	df2008['elg_rate'] = usefull['ELIG_RATE_2008']
	df2008['ret_rate'] = usefull['RET_RATE_2008']
	df2008['num_athletes'] = usefull['NUM_OF_ATHLETES_2008']
	df2008['year'] = '2008'
	out.append(df2008)

	df2007 = pd.DataFrame()
	df2007['school'] = usefull['SCL_NAME']
	df2007['sport'] = usefull['SPORT_CODE']
	df2007['sport_name'] = usefull['SPORT_NAME']
	df2007['elg_rate'] = usefull['ELIG_RATE_2007']
	df2007['ret_rate'] = usefull['RET_RATE_2007']
	df2007['num_athletes'] = usefull['NUM_OF_ATHLETES_2007']
	df2007['year'] = '2007'
	out.append(df2007)

	df2006 = pd.DataFrame()
	df2006['school'] = usefull['SCL_NAME']
	df2006['sport'] = usefull['SPORT_CODE']
	df2006['sport_name'] = usefull['SPORT_NAME']
	df2006['elg_rate'] = usefull['ELIG_RATE_2006']
	df2006['ret_rate'] = usefull['RET_RATE_2006']
	df2006['num_athletes'] = usefull['NUM_OF_ATHLETES_2006']
	df2006['year'] = '2006'
	out.append(df2006)

	df2005 = pd.DataFrame()
	df2005['school'] = usefull['SCL_NAME']
	df2005['sport'] = usefull['SPORT_CODE']
	df2005['sport_name'] = usefull['SPORT_NAME']
	df2005['elg_rate'] = usefull['ELIG_RATE_2005']
	df2005['ret_rate'] = usefull['RET_RATE_2005']
	df2005['num_athletes'] = usefull['NUM_OF_ATHLETES_2005']
	df2005['year'] = '2005'
	out.append(df2005)

	final = pd.concat(out)
	final = final[final['elg_rate'] >= 0].drop_duplicates()
	return final

if __name__ == '__main__':

	data = ncaa_formatter()



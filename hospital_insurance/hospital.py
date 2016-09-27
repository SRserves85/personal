import pandas as pd
import numpy as np

df = pd.read_csv('personal/hospital_insurance/data/inpatientCharges.csv')
df.columns = df.columns.str.strip()
df['Average Covered Charges'] = df['Average Covered Charges'].str.replace('$', '').astype(float)
df['Average Total Payments'] = df['Average Total Payments'].str.replace('$', '').astype(float)
df['Average Medicare Payments'] = df['Average Medicare Payments'].str.replace('$', '').astype(float)
df['Total Cost'] = df[['Average Covered Charges', 'Average Total Payments', 'Average Medicare Payments']].sum(axis=1)
df['Insurance Covered Ratio'] = (df['Average Covered Charges'] / df['Total Cost'])
df['Cost per Discharge'] = (df['Total Cost'] / df['Total Discharges'])


# Eliminate Rare Insurance Companies and Illness Conditions
provider_count = df.groupby(['Provider Id']).apply(lambda x: len(x) > 50)
df = df[df['Provider Id'].isin(provider_count[provider_count].index)]
drg_count = df.groupby(['DRG Definition']).apply(lambda x: len(x) > 200)
df = df[df['DRG Definition'].isin(drg_count[drg_count].index)]

# drop outliers for cost for each individual DRG Definition
def drop_by_std_dev(df):
    list_of_DRG = df['DRG Definition'].unique().tolist()
    out = []
    for drg in list_of_DRG:
        data = df[df['DRG Definition'] == drg]
        mean, std = data['Total Cost'].mean(), data['Total Cost'].std()
        inliers = data[(data['Total Cost'] <= (mean + (std*2))) & (data['Total Cost'] >= (mean - (std*2)))]
        try:
            out.append(inliers)
        except:
            import pdb; pdb.set_trace()
    return out

test = drop_by_std_dev(df)
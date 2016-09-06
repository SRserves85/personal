import os
import pandas as pd

out = []
rootdir = 'Desktop/nyc_bike_share'
for root, dirs, filenames in os.walk(rootdir):
    for f in filenames:
        if f == 'bikeshare_nyc_raw.csv':
            outputname = root + '/' + f
            try:
                file = pd.read_table(outputname)
            except:
                try:
                    file = pd.read_table(outputname, error_bad_lines=False)
                except:
                    import ipdb; ipdb.set_trace()
            out.append(file)
out = pd.concat(out)[['_lat', '_long', 'avail_bikes', 'avail_docks', 'date', 'dock_id', 'hour', 'minute', 'pm']]
out['date'] = pd.to_datetime(out['date'])

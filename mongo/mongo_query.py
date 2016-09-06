import pandas as pd
from pymongo import MongoClient

with MongoClient() as curser:
    db = curser.off
    data = db.products.aggregate([])
    
test = []
for item in data:
    test.append(item)
test = pd.DataFrame(test)
    
    



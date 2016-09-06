import pandas as pd
from sqlalchemy import create_engine 
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine('postgresql://SRserves85:1silberman@localhost/test')

Base = declarative_base()
import pandas as pd
import numpy as np
from ncaa import ncaa_formatter
from sklearn import cross_validation
from sklearn.naive_bayes import GaussianNB
from sklearn.ensemble import RandomForestClassifier 

def data_prepare():
	df = ncaa_formatter()

	features = df[['elg_rate', 'ret_rate', 'num_athletes']].values
	target = df['sport'].values

	X_train, X_test, y_train, y_test = cross_validation.train_test_split(features, target, test_size=0.4, random_state=42)
	return X_train, X_test, y_train, y_test

if __name__ == '__main__':
	print "Preparing the data..."
	X_train, X_test, y_train, y_test = data_prepare()
	print "modeling Gaussian data..."
	gauss_clf = GaussianNB()
	gauss_clf.fit(X_train, y_train)
	print "testing Gaussian data..."
	gauss_score = gauss_clf.score(X_test, y_test)
	print "modeling RandomForest data..."
	forest_clf = RandomForestClassifier()
	forest_clf.fit(X_train, y_train)
	print 'testing forest model...'
	forest_score = forest_clf.score(X_test, y_test)
	print "Gaussian Score = {}".format(gauss_score)
	print "Forest Score = {}".format(forest_score)



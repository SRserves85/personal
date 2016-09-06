import pandas as pd
import datetime
from sklearn.ensemble import RandomForestClassifier
from sklearn.naive_bayes import GaussianNB
import warnings


warnings.filterwarnings('ignore')


def data_formatter(df):
    now_date = datetime.datetime.now().year
    data = df[df['usertype'] == 'Subscriber']
    data['starttime'] = pd.to_datetime(data['starttime'])
    data['user_age'] = now_date - data['birthyear']
    data['tripduration'] = data['tripduration'] / 60
    data['over'] = (data['tripduration'] > 30).astype(int)
    data['time_of_day'] = data['starttime'].apply(lambda x: x.hour)
    return data[['gender', 'user_age', 'tripduration', 'over', 'time_of_day']]


def prepare_data(df, features):

    gender_dummies = df['gender'].str.get_dummies()
    for col in gender_dummies.columns:
        df[col] = gender_dummies[col]
    features = df[features]
    target = df['over']
    return features, target

if __name__ == '__main__':

    print 'reading data...'
    raw_2014 = pd.read_csv('personal/divvy_project/data/Divvy_Trips_2014-Q3-07.csv').dropna(how='any')
    raw_2015 = pd.read_csv('personal/divvy_project/data/Divvy_Trips_2015_07.csv').dropna(how='any')
    raw_2016_09 = pd.read_csv('personal/divvy_project/data/Divvy_Trips_2015_09.csv').dropna(how='any')
    print 'formatting data...'
    test_data = data_formatter(raw_2014)
    train_data = data_formatter(raw_2016_09)
    feature_list = ['Male', 'Female', 'user_age', 'time_of_day']
    print "preparing data..."
    X_train, y_train = prepare_data(test_data, feature_list)
    X_test, y_test = prepare_data(train_data, feature_list)

    print 'fitting randomtrees model...'
    random_trees_clf = RandomForestClassifier(n_estimators=30)
    random_trees_clf.fit(X_train, y_train)
    trees_score = random_trees_clf.score(X_test, y_test)
    print("Mean RandomTrees Accuracy: {:.2%}".format(trees_score))

    print 'fitting NaiveBayes model...'
    bayes_clf = GaussianNB()
    bayes_clf.fit(X_train, y_train)
    bayes_score = bayes_clf.score(X_test, y_test)
    print("Mean NaiveBayes Accuracy: {:.2%}".format(bayes_score))

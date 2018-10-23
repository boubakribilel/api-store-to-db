FROM python:3
ADD __main__.py /
ADD requirements.txt /
ADD _version.py /
RUN pip install -r requirements.txt
CMD [ "python", "./__main__.py -H mongodb-api -P 27017 -D ma_database_mongo -u mon_user_mongo -p mon_password_mongo -A api-bracelet" ]

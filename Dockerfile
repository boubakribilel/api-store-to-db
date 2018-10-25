FROM python:3
RUN mkdir /app && chmod 777 /app
ADD __main__.py /app
ADD requirements.txt /app
ADD _version.py /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD [ "python", "/app/__main__.py -H mongodb-api -P 27017 -D ma_database_mongo -u mon_user_mongo -p mon_password_mongo -A api-bracelet" ]

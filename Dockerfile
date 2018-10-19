FROM python:3
ADD __main__.py /
ADD requirements.txt /
RUN pip install -r requirements.txt
CMD [ "python", "./__main__.py -H mon_serveur_mongo -P 27017 -D ma_database_mongo -u mon_user_mongo -p mon_password_mongo -A api-store-to-db" ]

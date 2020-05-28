docker run -it --restart=always -d --name=postgis \
-e POSTGRES_USER=geoserver -e POSTGRES_PASS=geoserver \
-e POSTGRES_DBNAME=geoserver -e ALLOW_IP_RANGE=0.0.0.0/0 \
-e DEFAULT_ENCODING=UTF8 -e DEFAULT_COLLATION=id_ID.utf8 \
-e DEFAULT_CTYPE=id_ID.utf8 -p 5432:5432 docker/postgis

# -v /opt/docker/postgres:/var/lib/postgresql:Z \
docker run -it --restart=always -d --name=postgis --network=geoswarm \
-e POSTGRES_USER=geoserver -e POSTGRES_PASS=geoserver \
-e POSTGRES_DBNAME=geoserver -e ALLOW_IP_RANGE=0.0.0.0/0 \
-e DEFAULT_ENCODING=UTF8 -e DEFAULT_COLLATION=id_ID.utf8 \
-e DEFAULT_CTYPE=id_ID.utf8 \
-e DATADIR=/opt/postgres/data \
-v /opt/docker/postgres:/opt/postgres/data:Z \
-v /opt/docker/xfer:/opt/xfer:Z \
-p 5432:5432 docker/postgis

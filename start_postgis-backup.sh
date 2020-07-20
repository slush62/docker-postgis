# -v /home/docker/postgres:/var/lib/postgresql:Z \
# docker run -it --restart=always -d --name=postgis --network=geoswarm \
docker run -it --rm --name=postgis-backup --network=geoswarm \
-e REPLICATE_FROM=postgis \
-e REPLICATE_PORT=5432 \
-e DESTROY_DATABASE_ON_RESTART=False \
-e REPLICATION_USER=replicator \
-e REPLICATION_PASS=replicator \
-e ALLOW_IP_RANGE=0.0.0.0/0 \
-e DATADIR=/opt/postgres/data \
-v /home/docker/postgis-backup:/opt/postgres/data:Z \
-p 15433:5432 docker/postgis

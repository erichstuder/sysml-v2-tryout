#!/bin/bash

docker rm -f syson syson-postgres 2>/dev/null || true
docker network create syson-network 2>/dev/null || true

docker run --network syson-network \
           --name syson-postgres \
           -e POSTGRES_USER=dbuser \
           -e POSTGRES_PASSWORD=dbpwd \
           -e POSTGRES_DB=syson-db \
           -d postgres

echo "Waiting for PostgreSQL to start... this could be done better by polling."
sleep 5

docker build -t syson .
docker run --network syson-network \
           -p 8080:8080 \
           syson

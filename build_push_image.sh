#!/bin/sh

# melakukan build pada dockerfile
docker build -t item-app:v1 .

# cek list docker image 
docker image ls

# push docker image ke docker hub
docker tag item-app:v1 hcr.io/alpianreza/item-app:v1

echo $CR_PAT | docker login ghcr.io -u alpianreza --password-stdin

docker push ghcr.io/alpianreza/item-app:v1

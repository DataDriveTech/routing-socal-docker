# routing-socal-docker
Django + OSRM + AI in one docker image + Southern California Map 

## Build

docker build -t routing-socal .

## Publish

docker image tag routing-socal sebmilardo/routing-socal:latest
docker image push sebmilardo/routing-socal:latest

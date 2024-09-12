#! /bin/bash
echo "[$(date)] | removing alpine custom images..."
docker images emerson-alpine:latest -q | xargs docker rmi -f
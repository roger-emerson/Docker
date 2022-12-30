#! /bin/bash
echo "[$(date)] | removing alpine custom images..."
docker images emerson-alpine:latest | xargs docker rmi -f
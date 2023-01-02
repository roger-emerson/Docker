#! /bin/bash
docker network create \
--driver=bridge \
--scope=local
--subnet=10.1.0.0/16 \
--ip-range=10.1.200.0/24 \
--gateway=10.1.200.1 \
container-lab
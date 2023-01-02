#! /bin/bash
docker network create \
--label=lab \
--driver=bridge \
--scope=local \
--subnet=10.1.0.0/16 \
--ip-range=10.1.200.2/24 \
--gateway=10.1.200.1 \
container-lab
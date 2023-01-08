#! /bin/bash
echo "[$(date)] | Building the Docker Image..."
docker build -t emerson-alpine .


#! /bin/bash
echo  "[$(date)] | Updating repos..."
apk update
sleep 1

echo "[$(date)] | Installing net-tools..."
apk add net-tools 
sleep 1
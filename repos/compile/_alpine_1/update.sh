#! /bin/bash
echo  "[$(date)] | Updating repos..."
apk update
sleep 1

echo "[$(date)] | Installing net-tools..."
apk get net-tools 
sleep 1
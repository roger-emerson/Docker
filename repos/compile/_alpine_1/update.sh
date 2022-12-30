echo "[$(date)======== updating repos ========]"
apk update
sleep 1

echo "[$(date)======== installing net-tools ========]"
apk get net-tools 
sleep 1
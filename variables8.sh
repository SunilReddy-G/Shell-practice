#!bin/b
START_TIME=$(date +%s)
echo "script executed at: $TIMESTAMP"
sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$(($END_TIME-$START_TIME))
echo " Script excuted at: $TOTAL_TIME"
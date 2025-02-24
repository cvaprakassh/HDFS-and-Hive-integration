#!/bin/bash

echo "Fetching Data..."
./fetch_data.sh

echo "Storing Data in HDFS..."
./store_data.sh

echo "Setting up Hive..."
docker exec -it hive-server hive -f create_hive_table.hql
docker exec -it hive-server hive -f load_data.hql

echo "Hive Data Pipeline Completed!"

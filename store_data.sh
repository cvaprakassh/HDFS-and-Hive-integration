#!/bin/bash

HDFS_DIR="/Users/sivaprakash/Desktop/HDFS-and-Hive-integration"

# Start HDFS
docker exec -it namenode hdfs dfs -mkdir -p $HDFS_DIR

docker cp datafile.csv namenode:/datafile.csv


# Upload data to HDFS
docker exec -it namenode hdfs dfs -put -f datafile.csv $HDFS_DIR/

# Verify file upload
docker exec -it namenode hdfs dfs -ls $HDFS_DIR

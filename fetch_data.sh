#!/bin/bash

# Define URL and filename
DATA_URL="https://www2.census.gov/programs-surveys/popest/datasets/"
OUTPUT_FILE="datafile.csv"

# Download file
wget -O $OUTPUT_FILE $DATA_URL || curl -o $OUTPUT_FILE $DATA_URL

# Verify download
if [ -f "$OUTPUT_FILE" ]; then
    echo "Downloaded successfully!"
else
    echo "Download failed!"
    exit 1
fi

USE mydb;
LOAD DATA INPATH '/user/hive/data/datafile.csv' INTO TABLE test_table;
SELECT * FROM test_table LIMIT 10;

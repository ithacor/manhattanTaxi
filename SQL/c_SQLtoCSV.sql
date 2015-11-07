-- --------------------------------------------------------------------------------
-- move from SQL to CSV, one month at a time
-- --------------------------------------------------------------------------------

-- Datasets:
-- - trip_x

-- --------------------------------------------------------------------------------
-- size of the dataset for month
-- --------------------------------------------------------------------------------

-- the data and fare dataset has the same number of rows
select count(*) from trip_data_12; -- 13,971,118
select count(*) from trip_fare_12; -- 13,971,118 
select count(*) from trip_12; -- 13,971,118 

-- the index in the file indicates the month number
select distinct month(pickup_datetime) from trip_data_12; -- 12
select distinct month(pickup_datetime) from trip_fare_12; -- 12

-- --------------------------------------------------------------------------------
-- medallion_ids
-- --------------------------------------------------------------------------------

CREATE TABLE medallion_ids (
  medallion varchar(255)
);

INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_12;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_11;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_10;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_9;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_8;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_7;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_6;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_5;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_4;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_3;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_2;
INSERT INTO medallion_ids SELECT distinct(medallion) FROM trip_data_1;

CREATE TABLE medallion_ids_unique (
  medallion varchar(255)
);

INSERT INTO medallion_ids_unique SELECT distinct(medallion) FROM medallion_ids;

SELECT
	*
FROM medallion_ids_unique
INTO OUTFILE '/tmp/medallion_ids_unique.csv' 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
-- NOTE: I have not figured out a way to get headers in the CSV file
-- cp /tmp/medallion_ids_unique.csv ~/Documents/Projects/NYC_Taxi/_R/SQLInputToR

-- --------------------------------------------------------------------------------
-- hack_license_ids
-- --------------------------------------------------------------------------------

CREATE TABLE hack_license_ids (
  hack_license varchar(255)
);

INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_12;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_11;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_10;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_9;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_8;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_7;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_6;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_5;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_4;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_3;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_2;
INSERT INTO hack_license_ids SELECT distinct(hack_license) FROM trip_data_1;

CREATE TABLE hack_license_ids_unique (
  hack_license varchar(255)
);

INSERT INTO hack_license_ids_unique SELECT distinct(hack_license) FROM hack_license_ids;

SELECT
	*
FROM hack_license_ids_unique
INTO OUTFILE '/tmp/hack_license_ids_unique.csv' 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
-- NOTE: I have not figured out a way to get headers in the CSV file
-- cp /tmp/hack_license_ids_unique.csv ~/Documents/Projects/NYC_Taxi/_R/SQLInputToR

-- --------------------------------------------------------------------------------
-- trip
-- --------------------------------------------------------------------------------

SELECT
	*
FROM trip_12
INTO OUTFILE '/tmp/trip_12.csv' 
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
-- NOTE: I have not figured out a way to get headers in the CSV file
-- cp /tmp/trip_12.csv ~/Documents/Projects/NYC_Taxi/_R/SQLInputToR



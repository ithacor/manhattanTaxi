-- --------------------------------------------------------------------------------
-- import data from CSV to SQL
-- --------------------------------------------------------------------------------

-- Datasets:
-- - trip_data_i, where 1 = 1:12
-- - fare_data_i, where 1 = 1:12

-- --------------------------------------------------------------------------------
-- trip_data
-- --------------------------------------------------------------------------------

CREATE TABLE trip_data_1 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_1.csv' 
INTO TABLE trip_data_1
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_2 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_2.csv' 
INTO TABLE trip_data_2
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_3 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_3.csv' 
INTO TABLE trip_data_3
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_4 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_4.csv' 
INTO TABLE trip_data_4
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_5 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_5.csv' 
INTO TABLE trip_data_5
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_6 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_6.csv' 
INTO TABLE trip_data_6
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_7 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_7.csv' 
INTO TABLE trip_data_7
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_8 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_8.csv' 
INTO TABLE trip_data_8
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_9 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_9.csv' 
INTO TABLE trip_data_9
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_10 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_10.csv' 
INTO TABLE trip_data_10
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_11 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_11.csv' 
INTO TABLE trip_data_11
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_data_12 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  rate_code varchar(10),
  store_and_fwd_flag varchar(10),
  pickup_datetime varchar(255),
  dropoff_datetime varchar(255),
  passenger_count int(3),
  trip_time_in_secs int(6),
  trip_distance numeric(10,2),
  pickup_longitude numeric(10,7),
  pickup_latitude numeric(10,7),
  dropoff_longitude numeric(10,7),
  dropoff_latitude numeric(10,7)
);

-- load files into trip_data one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_data_12.csv' 
INTO TABLE trip_data_12
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- --------------------------------------------------------------------------------
-- fare_data
-- --------------------------------------------------------------------------------

CREATE TABLE trip_fare_1 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_1.csv' 
INTO TABLE trip_fare_1
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_2 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_2.csv' 
INTO TABLE trip_fare_2
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_3 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_3.csv' 
INTO TABLE trip_fare_3
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_4 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_4.csv' 
INTO TABLE trip_fare_4
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_5 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_5.csv' 
INTO TABLE trip_fare_5
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_6 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_6.csv' 
INTO TABLE trip_fare_6
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_7 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_7.csv' 
INTO TABLE trip_fare_7
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_8 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_8.csv' 
INTO TABLE trip_fare_8
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_9 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_9.csv' 
INTO TABLE trip_fare_9
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_10 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_10.csv' 
INTO TABLE trip_fare_10
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_11 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_11.csv' 
INTO TABLE trip_fare_11
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE trip_fare_12 (
  medallion varchar(255),
  hack_license varchar(255),
  vendor_id varchar(10),
  pickup_datetime varchar(255),
  payment_type varchar(255),
  fare_amount numeric(10,2),
  surcharge numeric(10,2),
  mta_tax numeric(10,2),
  tip_amount numeric(10,2),
  tolls_amount numeric(10,2),
  total_amount numeric(10,2)
);

-- load files into trip_fare one by one
LOAD DATA LOCAL INFILE '/Users/Steven/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/trip_fare_12.csv' 
INTO TABLE trip_fare_12
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- --------------------------------------------------------------------------------
-- views fare
-- --------------------------------------------------------------------------------

create view trip_1
as (
	select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
	from trip_fare_1 as a
	left join trip_data_1 as b
	on 
		(a.medallion = b.medallion) and
		(a.hack_license = b.hack_license) and
		(a.vendor_id = b.vendor_id) and
		(a.pickup_datetime = b.pickup_datetime)
);

create view trip_2
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_2 as a
  left join trip_data_2 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_3
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_3 as a
  left join trip_data_3 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_4
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_4 as a
  left join trip_data_4 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_5
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_5 as a
  left join trip_data_5 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_6
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_6 as a
  left join trip_data_6 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_7
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_7 as a
  left join trip_data_7 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_8
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_8 as a
  left join trip_data_8 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_9
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_9 as a
  left join trip_data_9 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_10
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_10 as a
  left join trip_data_10 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_11
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_11 as a
  left join trip_data_11 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);

create view trip_12
as (
  select 
    a.medallion,
    a.hack_license,
    a.vendor_id,
    a.pickup_datetime,
    b.dropoff_datetime,
    b.trip_time_in_secs,
    a.payment_type,
    a.fare_amount,
    a.surcharge,
    a.mta_tax,
    a.tip_amount,
    a.tolls_amount,
    a.total_amount,
    b.rate_code,
    b.store_and_fwd_flag,
    b.passenger_count,
    b.trip_distance,
    b.pickup_longitude,
    b.pickup_latitude,
    b.dropoff_longitude,
    b.dropoff_latitude
  from trip_fare_12 as a
  left join trip_data_12 as b
  on 
    (a.medallion = b.medallion) and
    (a.hack_license = b.hack_license) and
    (a.vendor_id = b.vendor_id) and
    (a.pickup_datetime = b.pickup_datetime)
);



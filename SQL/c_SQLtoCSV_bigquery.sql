#=================================================================================
# NYC 2014 Taxi Dataset
# Google Bigquery
#=================================================================================

#---------------------------------------------------------------------------------

-- 1,319,556
select 
  trip_data.medallion,
  trip_data.hack_license,
  trip_fare.payment_type,
  sum(FLOAT(trip_data.trip_time_in_secs)) as trip_time_in_secs,
  sum(FLOAT(trip_data.trip_distance)) as trip_distance,
  sum(FLOAT(trip_data.passenger_count)) as passenger_count,
  sum(FLOAT(trip_fare.fare_amount)) as fare_amount, 
  sum(FLOAT(trip_fare.surcharge)) as surcharge, 
  sum(FLOAT(trip_fare.mta_tax)) as mta_tax, 
  sum(FLOAT(trip_fare.tip_amount)) as tip_amount, 
  sum(FLOAT(trip_fare.tolls_amount)) as tolls_amount, 
  sum(FLOAT(trip_fare.total_amount)) as total_amount
FROM (
  select 
    medallion,
    hack_license,
    pickup_datetime,
    DAYOFYEAR (pickup_datetime) as day,
    HOUR (pickup_datetime) as hour,
    passenger_count,
    trip_time_in_secs,
    trip_distance
  FROM [833682135931:nyctaxi.trip_data] 
) as trip_data
join each [833682135931:nyctaxi.trip_fare] as trip_fare
  ON trip_data.medallion = trip_fare.medallion
  AND trip_data.hack_license = trip_fare.hack_license
  AND trip_data.pickup_datetime = trip_fare.pickup_datetime
group by
  trip_data.medallion, 
  trip_data.hack_license,
  trip_fare.payment_type
  
-- 737,862
select 
  count(trip_data.medallion) as medallion,
  trip_data.hack_license,
  trip_data.hour,
  sum(FLOAT(trip_data.trip_time_in_secs)) as trip_time_in_secs,
  sum(FLOAT(trip_data.trip_distance)) as trip_distance,
  sum(FLOAT(trip_data.passenger_count)) as passenger_count,
  sum(FLOAT(trip_fare.fare_amount)) as fare_amount, 
  sum(FLOAT(trip_fare.surcharge)) as surcharge, 
  sum(FLOAT(trip_fare.mta_tax)) as mta_tax, 
  sum(FLOAT(trip_fare.tip_amount)) as tip_amount, 
  sum(FLOAT(trip_fare.tolls_amount)) as tolls_amount, 
  sum(FLOAT(trip_fare.total_amount)) as total_amount
FROM (
  select 
    medallion,
    hack_license,
    pickup_datetime,
    DAYOFYEAR (pickup_datetime) as day,
    HOUR (pickup_datetime) as hour,
    passenger_count,
    trip_time_in_secs,
    trip_distance
  FROM [833682135931:nyctaxi.trip_data] 
) as trip_data
join each [833682135931:nyctaxi.trip_fare] as trip_fare
  ON trip_data.medallion = trip_fare.medallion
  AND trip_data.hack_license = trip_fare.hack_license
  AND trip_data.pickup_datetime = trip_fare.pickup_datetime
group by
  trip_data.hack_license, 
  trip_data.hour

-- 319,283
select 
  trip_data.medallion,
  count(trip_data.hack_license) as hack_license,
  trip_data.hour,
  sum(FLOAT(trip_data.trip_time_in_secs)) as trip_time_in_secs,
  sum(FLOAT(trip_data.trip_distance)) as trip_distance,
  sum(FLOAT(trip_data.passenger_count)) as passenger_count,
  sum(FLOAT(trip_fare.fare_amount)) as fare_amount, 
  sum(FLOAT(trip_fare.surcharge)) as surcharge, 
  sum(FLOAT(trip_fare.mta_tax)) as mta_tax, 
  sum(FLOAT(trip_fare.tip_amount)) as tip_amount, 
  sum(FLOAT(trip_fare.tolls_amount)) as tolls_amount, 
  sum(FLOAT(trip_fare.total_amount)) as total_amount
FROM (
  select 
    medallion,
    hack_license,
    pickup_datetime,
    DAYOFYEAR (pickup_datetime) as day,
    HOUR (pickup_datetime) as hour,
    passenger_count,
    trip_time_in_secs,
    trip_distance
  FROM [833682135931:nyctaxi.trip_data] 
) as trip_data
join each [833682135931:nyctaxi.trip_fare] as trip_fare
ON trip_data.medallion = trip_fare.medallion
AND trip_data.hack_license = trip_fare.hack_license
AND trip_data.pickup_datetime = trip_fare.pickup_datetime
group by
  trip_data.medallion, 
  trip_data.hour

-- 271,537
select 
  count(trip_data.medallion) as medallion,
  count(trip_data.hack_license) as hack_license,
  trip_data.day,
  trip_data.hour,
  trip_data.rate_code,
  trip_data.store_and_fwd_flag,
  trip_fare.vendor_id,
  trip_fare.payment_type,
  sum(FLOAT(trip_data.trip_time_in_secs)) as trip_time_in_secs,
  sum(FLOAT(trip_data.trip_distance)) as trip_distance,
  sum(FLOAT(trip_data.passenger_count)) as passenger_count,
  sum(FLOAT(trip_fare.fare_amount)) as fare_amount, 
  sum(FLOAT(trip_fare.surcharge)) as surcharge, 
  sum(FLOAT(trip_fare.mta_tax)) as mta_tax, 
  sum(FLOAT(trip_fare.tip_amount)) as tip_amount, 
  sum(FLOAT(trip_fare.tolls_amount)) as tolls_amount, 
  sum(FLOAT(trip_fare.total_amount)) as total_amount
FROM (
  select 
    medallion,
    hack_license,
    rate_code,
    store_and_fwd_flag,
    pickup_datetime,
    DAYOFYEAR (pickup_datetime) as day,
    HOUR (pickup_datetime) as hour,
    passenger_count,
    trip_time_in_secs,
    trip_distance
  FROM [833682135931:nyctaxi.trip_data] 
) as trip_data
join each [833682135931:nyctaxi.trip_fare] as trip_fare
  ON trip_data.medallion = trip_fare.medallion
  AND trip_data.hack_license = trip_fare.hack_license
  AND trip_data.pickup_datetime = trip_fare.pickup_datetime
group by
  trip_data.day,
  trip_data.hour,
  trip_data.rate_code,
  trip_data.store_and_fwd_flag,
  trip_fare.vendor_id,  
  trip_fare.payment_type

-- 652,309
select 
  count(trip_data.medallion) as medallion,
  count(trip_data.hack_license) as hack_license,
  trip_data.pickup_longitude,
  trip_data.pickup_latitude,
  trip_data.hour,
  sum(FLOAT(trip_data.trip_time_in_secs)) as trip_time_in_secs,
  sum(FLOAT(trip_data.trip_distance)) as trip_distance,
  sum(FLOAT(trip_data.passenger_count)) as passenger_count,
  sum(FLOAT(trip_fare.fare_amount)) as fare_amount, 
  sum(FLOAT(trip_fare.surcharge)) as surcharge, 
  sum(FLOAT(trip_fare.mta_tax)) as mta_tax, 
  sum(FLOAT(trip_fare.tip_amount)) as tip_amount, 
  sum(FLOAT(trip_fare.tolls_amount)) as tolls_amount, 
  sum(FLOAT(trip_fare.total_amount)) as total_amount
FROM (
  select 
    round(FLOAT(pickup_longitude), 4) as pickup_longitude,
    round(FLOAT(pickup_latitude(, 4) as pickup_latitude,
    medallion,
    hack_license,
    rate_code,
    store_and_fwd_flag,
    pickup_datetime,
    DAYOFYEAR (pickup_datetime) as day,
    HOUR (pickup_datetime) as hour,
    passenger_count,
    trip_time_in_secs,
    trip_distance
  FROM [833682135931:nyctaxi.trip_data] 
) as trip_data
join each [833682135931:nyctaxi.trip_fare] as trip_fare
  ON trip_data.medallion = trip_fare.medallion
  AND trip_data.hack_license = trip_fare.hack_license
  AND trip_data.pickup_datetime = trip_fare.pickup_datetime
group by
  trip_data.pickup_longitude,
  trip_data.pickup_latitude,
  trip_data.hour


  
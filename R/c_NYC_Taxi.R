#=================================================================================
# cleans and complies data
# november 2015
#=================================================================================

#---------------------------------------------------------------------------------
# setup 
rm(list = ls())
setwd('~/Documents/Projects/NYC_Taxi/_R')
packrat::on()
source('~/Documents/Projects/NYC_Taxi/_R/_project_library.R')
set.seed(94305)
par(mfrow = c(1,1))

#=================================================================================
# read data
#=================================================================================

#---------------------------------------------------------------------------------
# trip_data_12

setwd('~/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/')
fileNames <- c('trip_data_12')
trip_data_12 <- 
  read_csv(paste(fileNames, '.csv', sep = ''), col_names = T, 
  	       col_types = 'cccccTTcnnnnnn')

#---------------------------------------------------------------------------------
# trip_fare_12

setwd('~/Documents/Projects/NYC_Taxi/Data/NYC_Taxi/')
fileNames <- c('trip_fare_12')
trip_fare_12 <- 
  read_csv(paste(fileNames, '.csv', sep = ''), col_names = T, 
  	       col_types = 'cccTcnnnnnn')

#=================================================================================
# save data
#=================================================================================
setwd('~/Documents/Projects/NYC_Taxi/_R/RData')
save(trip_data_12,
	 trip_data_12,
     file = 'NYC_Taxi_Trip_12.RData')
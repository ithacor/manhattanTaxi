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
setwd('~/Documents/Projects/NYC_Taxi/_R/RData')
load('NYC_Taxi_Trip_12.RData')
load('NYC_Taxi_Trip_IDs.RData')

#=================================================================================
# analyze data
#=================================================================================

trip_data_12 %>%
mutate(medallion = as.factor(medallion)) %>%
left_join(medallion_ids, by = c('medallion' = 'medallion'))
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
# hack_license_ids_unique

setwd('~/Documents/Projects/NYC_Taxi/_R/SQLInputToR')
fileNames <- c('medallion_ids_unique')
data <- 
  read_csv(paste(fileNames, '.csv', sep = ''), col_names = F, 
  	       col_types = 'c')
colnames(data) <- 'medallion'
medallion_ids <-
  data %>%
  arrange(medallion) %>%
  mutate(ID = 1,
  	     ID = cumsum(ID),
  	     medallion = as.factor(medallion))

#---------------------------------------------------------------------------------
# hack_license_ids_unique

setwd('~/Documents/Projects/NYC_Taxi/_R/SQLInputToR')
fileNames <- c('hack_license_ids_unique')
data <- 
  read_csv(paste(fileNames, '.csv', sep = ''), col_names = F, 
  	       col_types = 'c')
colnames(data) <- 'hack_license'
hack_license_ids <-
  data %>%
  arrange(hack_license) %>%
  mutate(ID = 1,
  	     ID = cumsum(ID),
  	     hack_license = as.factor(hack_license))

#=================================================================================
# save data
#=================================================================================
setwd('~/Documents/Projects/NYC_Taxi/_R/RData')
	save(medallion_ids,
		 hack_license_ids,
	     file = 'NYC_Taxi_Trip_IDs.RData')
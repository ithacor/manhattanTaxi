#=================================================================================
# setups up Packrat
# last revision: april 2015
# author: steven wong
#=================================================================================

#---------------------------------------------------------------------------------
# setup

# first, install
if (!require("devtools")) install.packages("devtools")
devtools::install_github("rstudio/packrat")

# then, loads the list of used packages
source('~/Documents/Projects/NYC_Taxi/_R/_project_library.R')

# placed in Packrat mode, after initializing the project; a project in Packrat
# mode has its own private package library - any packages installed from inside
# a Packrat project are only available to that project
# - the package vintage is maintained at the built for the project
# - this means that upgrading a package for one project won’t break a totally 
#   different project that just happens to reside on the same machine, even if that 
#   package contained incompatible changes.
# set the current working directory
packrat::init('~/Documents/Projects/NYC_Taxi/_R')

#---------------------------------------------------------------------------------
# future initializations
rm(list = ls())

# set the current working directory
setwd('~/Documents/Projects/NYC_Taxi/_R')

# uses the project's package directory
packrat::on()

# loads the packages
# note that this is a truncated list, used only for this project
source('~/Documents/Projects/NYC_Taxi/_R/_project_library.R')

#---------------------------------------------------------------------------------
# management:

# list of packages uses in code
packrat::status()

# update
packrat::snapshot()  # save the current state of your library
packrat::clean()  # remove unused packages from your library

# go back to the most recent snapshot
packrat::restore()  # restore the library state saved in the most recent snapshot
# say if you move the project from one computer to another

# share
packrat::bundle()  # bundle a packrat project, for easy sharing.
packrat::unbundle()  # unbundle, generating a project directory with libraries re

# toggle between project and main libraries
packrat::on()
packrat::off()

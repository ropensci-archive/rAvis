# initialize package.
# file for developing purposes

# dependencies
library(stringr)
library(XML)
library(tools)
library(RCurl)
library(scrapeR)
library(gdata)
library(scales)
library(maptools)
library(raster)
library(rgdal)

# package functions
source.with.encoding('rAvis/R/loginFunctions.R', encoding='UTF-8')
source.with.encoding('rAvis/R/remoteSpeciesDataFunctions.R', encoding='UTF-8')
source.with.encoding('rAvis/R/remoteUsersDataFunctions.R', encoding='UTF-8')
source.with.encoding('rAvis/R/searchInterfaceFunctions.R', encoding='UTF-8')
source.with.encoding('rAvis/R/plotFunctions.R', encoding='UTF-8')
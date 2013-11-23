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
source.with.encoding('loginFunctions.R', encoding='UTF-8')
source.with.encoding('remoteSpeciesDataFunctions.R', encoding='UTF-8')
source.with.encoding('remoteUsersDataFunctions.R', encoding='UTF-8')
source.with.encoding('searchInterfaceFunctions.R', encoding='UTF-8')
source.with.encoding('plotFunctions.R', encoding='UTF-8')
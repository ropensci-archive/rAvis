# initialize package 

# dependencies
library(stringr)
library(XML)
library(tools)
library(RCurl)
library(scrapeR)
library(XLConnect)
library(gdata)

# package functions
source.with.encoding('loginFunctions.R', encoding='UTF-8')
source.with.encoding('remoteSpeciesDataFunctions.R', encoding='UTF-8')
source.with.encoding('remoteUsersDataFunctions.R', encoding='UTF-8')
source.with.encoding('searchInterfaceFunctions.R', encoding='UTF-8')
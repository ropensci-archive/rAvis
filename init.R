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
source.with.encoding('remoteDataFetchFunctions.R', encoding='UTF-8')
source.with.encoding('searchInterfaceFunctions.R', encoding='UTF-8')
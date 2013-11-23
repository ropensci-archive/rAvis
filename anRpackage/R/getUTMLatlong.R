getUTMLatlong <-
function(){
  if(is.null(ravisUTMLatLong)){
    ravisUTMLatLong<- read.table ("utm_latlon.csv", sep=",", header=T)
    assign("ravisUTMLatLong", ravisUTMLatLong, envir = .GlobalEnv)
  }
  
  return (ravisUTMLatLong)
}

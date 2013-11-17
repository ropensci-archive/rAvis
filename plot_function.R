library (scales)
library (raster)
library (rgdal)
library (maptools)
#load maps
adm_PI<- readShapePoly ("C:\\Users\\sara\\Documents\\_CIENCIAS\\avis\\ESP_adm2.shp") 
PI<- brick ("PI.tif")
canarias<- brick ("canarias.tif")
utm_latlon<- read.table ("utm_latlon.csv", sep=",", header=T)

obs<- obs_avis (name)
coord<- data.frame (utm_latlon$x [match (substring(obs$UTM,4), utm_latlon$utm)], 
                    utm_latlon$y [match (substring(obs$UTM,4), utm_latlon$utm)]) 

ravisMap<- function (name, map){
  par(mar = c(0, 0, 0, 0))
  layout(matrix(c(1,1,1,1,1,1,1,1,2), 3, 3, byrow = TRUE))
  if (map==2){
    plotRGB (PI)
  } 
  if (map==1){
  plot (adm_PI, border="grey75", ylim=c(34,44), xlim=c(-10,5))
  }
  points(coord, col=alpha ("red", 0.5), pch=19, cex=1.2)
  text(-9.5, 34.2, name,  font=3, cex=2, adj=c(0,0))
  if (map==2){
  plotRGB (canarias)
  } 
  if (map==1) { 
  plot (adm_PI, border="grey75", ylim=c(27.5, 29.5), xlim=c(-18.5,-13.5))
  rect(-18.5, 21, -11, 30, density = NULL, angle = 45,
       col = NA, border = "grey40", lwd=2)
  }
  points(coord, col=alpha ("red", 0.5), pch=19, cex=1.2)
}



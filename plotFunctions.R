#load maps
adm_PI<- readShapePoly ("ESP_adm2.shp") 
PI<- brick ("PI.tif")
canarias<- brick ("canarias.tif")


avisMapSpecies<- function (name, maptype = 'admin'){
  obs<- avisQuerySpecies (name)
  avisMap(obs, maptype, name)
}

avisMap<-function(obs, name, maptype = 'admin')
{
  par(mar = c(0, 0, 0, 0))
  layout(matrix(c(1,1,1,1,1,1,1,1,2), 3, 3, byrow = TRUE))
  if (maptype=='phys'){
    plotRGB (PI)
    points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
    text(-9.5, 34.2, name,  font=3, cex=2, adj=c(0,0))
    plotRGB (canarias)
    points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
  } else if(maptype=='admin'){
    plot (adm_PI, border="grey75", ylim=c(34,44), xlim=c(-10,5))
    points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
    text(-9.5, 34.2, name,  font=3, cex=2, adj=c(0,0))
    plotRGB (canarias)
    plot (adm_PI, border="grey75", ylim=c(27.5, 29.5), xlim=c(-18.5,-13.5))
    rect(-18.5, 21, -11, 30, density = NULL, angle = 45,
         col = NA, border = "grey40", lwd=2)
    points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
  } else {
    stop("dfnnsjk")
  }
}




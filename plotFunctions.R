
# global shapes and images
ravis_shape_spain<-NULL
ravis_img_ipeninsula<-NULL
ravis_img_canarias<-NULL

avisMapSpecies<- function (name, maptype = 'admin'){
  obs<- avisQuerySpecies (name)
  avisMap(obs, name, maptype)
}

avisMap<-function(obs, name, maptype = 'admin')
{
  par(mar = c(0, 0, 0, 0))
  layout(matrix(c(1,1,1,1,1,1,1,1,2), 3, 3, byrow = TRUE))
  if (maptype=='phys'){
    avisRenderMapPhysical(obs, name)
  } else if(maptype=='admin'){
    avisRenderMapAdmin(obs, name)
  } else {
    stop(paste("Map type '", maptype, "' not available. Available map types are: 'admin' and 'phys'"));
  }
}

avisRenderMapPhysical<-function(obs, name)
{
  peninsulaImg<-avisReadPeninsulaImg()
  canariasImg<-avisReadCanariasImg()

  plotRGB (peninsulaImg)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
  text(-9.5, 34.2, name,  font=3, cex=2, adj=c(0,0))
  plotRGB (canariasImg)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
}

avisRenderMapAdmin<-function(obs, name)
{
  shapeSpain<-avisReadShapeSpain();

  plot (shapeSpain, border="grey75", ylim=c(34,44), xlim=c(-10,5))
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
  text(-9.5, 34.2, name,  font=3, cex=2, adj=c(0,0))
  plot (shapeSpain, border="grey75", ylim=c(27.5, 29.5), xlim=c(-18.5,-13.5))
  rect(-18.5, 21, -11, 30, density = NULL, angle = 45,
   col = NA, border = "grey40", lwd=2)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
}

avisReadShapeSpain<-function()
{
  # TODO: package private property... easier way to cache stuff?
  if(is.null(ravis_shape_spain)){
    ravis_shape_spain<-readShapePoly ("ESP_adm2.shp")
    assign("ravis_shape_spain", ravis_shape_spain, envir = .GlobalEnv)
  }
  return (ravis_shape_spain)  
}

avisReadPeninsulaImg<-function()
{
  if(is.null(ravis_img_ipeninsula)){
    ravis_img_ipeninsula<-brick ("PI.tif")
    assign("ravis_img_ipeninsula", ravis_img_ipeninsula, envir = .GlobalEnv)
  }
  return (ravis_img_ipeninsula)
}

avisReadCanariasImg<-function()
{
  if(is.null(ravis_img_canarias)){
    ravis_img_canarias<-brick ("canarias.tif")
    assign("ravis_img_canarias", ravis_img_canarias, envir = .GlobalEnv)
  }
  return (ravis_img_canarias)
}
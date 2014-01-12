
# Renders a map for each species provided in names list / string
# Types of map are the same as for avisMap
# 
# 'names' argument might be a string or a list of species names

# eg:
#  avisMapSpecies("Bubo bubo", "phys")
#  avisMapSpecies(list("Tyto alba", "Bubo bubo", "Asio capensis"))
#  
avisMapSpecies<- function (names, maptype = 'admin')
{
  if(!is.list(names))
  {
    names <- list(names)
  }

  for (name in names) 
  {
    obs<- avisQuerySpecies (name)
    avisMap(obs, name, maptype)
  }
}

# Renders a map for the observations provided in 'obs'.
# 'obs' may be the set of observations returned by any of the avisQueryXXX functions
# 'label' label for the map
# 
# Available types of map are 'admin' (by default) and 'phys'. 
# 
avisMap<-function(obs, label = '', maptype = 'admin')
{
  if(is.null(obs$x) || is.null(obs$y)){
    stop("missing x or y columns in provided obs parameter")
  }

  par(mar = c(0, 0, 0, 0))
  layout(matrix(c(1,1,1,1,1,1,1,1,2), 3, 3, byrow = TRUE))
  if (maptype=='phys'){
    .avisRenderMapPhysical(obs, label)
  } else if(maptype=='admin'){
    .avisRenderMapAdmin(obs, label)
  } else {
    stop(paste("Map type '", maptype, "' not available. Available map types are: 'admin' and 'phys'"));
  }
}

.avisRenderMapPhysical<-function(obs, label)
{
  peninsulaImg<-.avisReadPeninsulaImg()
  canariasImg<-.avisReadCanariasImg()

  raster::plotRGB (peninsulaImg)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
  raster::text(-9.5, 34.2, label,  font=3, cex=2, adj=c(0,0))
  raster::plotRGB (canariasImg)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
}

.avisRenderMapAdmin<-function(obs, label)
{
  # ravis_shape_spain: shape in package data folder

  plot (ravis_shape_spain, border="grey75", ylim=c(34,44), xlim=c(-10,5))
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
  raster::text(-9.5, 34.2, label,  font=3, cex=2, adj=c(0,0))
  plot (ravis_shape_spain, border="grey75", ylim=c(27.5, 29.5), xlim=c(-18.5,-13.5))
  rect(-18.5, 21, -11, 30, density = NULL, angle = 45,
   col = NA, border = "grey40", lwd=2)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
}

.avisReadPeninsulaImg<-function()
{
  .avisCacheReturnOrSetup(".ravis_img_ipeninsula", function(){

      brick ( system.file('extdata/peninsula.tif', package="rAvis"))

  })
}

.avisReadCanariasImg<-function()
{
  .avisCacheReturnOrSetup(".ravis_img_canarias", function(){

      brick ( system.file('extdata/canarias.tif', package="rAvis"))

  })
}
avisMap <-
function(obs, label = '', maptype = 'admin')
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

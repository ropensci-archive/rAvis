\name{ravis_img_canarias}
\alias{ravis_img_canarias}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(ravis_img_canarias)}
\format{
  The format is:
Formal class 'RasterBrick' [package "raster"] with 12 slots
  ..@ file    :Formal class '.RasterFile' [package "raster"] with 13 slots
  .. .. ..@ name        : chr "C:\\proyectos\\r\\ravis\\canarias.tif"
  .. .. ..@ datanotation: chr "FLT8S"
  .. .. ..@ byteorder   : chr "little"
  .. .. ..@ nodatavalue : num -Inf
  .. .. ..@ NAchanged   : logi FALSE
  .. .. ..@ nbands      : int 3
  .. .. ..@ bandorder   : chr "BIL"
  .. .. ..@ offset      : int 0
  .. .. ..@ toptobottom : logi TRUE
  .. .. ..@ blockrows   : int [1:3] 1 1 1
  .. .. ..@ blockcols   : int [1:3] 487 487 487
  .. .. ..@ driver      : chr "gdal"
  .. .. ..@ open        : logi FALSE
  ..@ data    :Formal class '.MultipleRasterData' [package "raster"] with 14 slots
  .. .. ..@ values    : logi[0 , 0 ] 
  .. .. ..@ offset    : num 0
  .. .. ..@ gain      : num 1
  .. .. ..@ inmemory  : logi FALSE
  .. .. ..@ fromdisk  : logi TRUE
  .. .. ..@ nlayers   : int 3
  .. .. ..@ dropped   : NULL
  .. .. ..@ isfactor  : logi FALSE
  .. .. ..@ attributes: list()
  .. .. ..@ haveminmax: logi TRUE
  .. .. ..@ min       : num [1:3] 88 98 79
  .. .. ..@ max       : num [1:3] 255 255 255
  .. .. ..@ unit      : chr ""
  .. .. ..@ names     : chr [1:3] "canarias.1" "canarias.2" "canarias.3"
  ..@ legend  :Formal class '.RasterLegend' [package "raster"] with 5 slots
  .. .. ..@ type      : chr(0) 
  .. .. ..@ values    : logi(0) 
  .. .. ..@ color     : logi(0) 
  .. .. ..@ names     : logi(0) 
  .. .. ..@ colortable: logi(0) 
  ..@ title   : chr(0) 
  ..@ extent  :Formal class 'Extent' [package "raster"] with 4 slots
  .. .. ..@ xmin: num -18.6
  .. .. ..@ xmax: num -13.2
  .. .. ..@ ymin: num 26.4
  .. .. ..@ ymax: num 30.1
  ..@ rotated : logi FALSE
  ..@ rotation:Formal class '.Rotation' [package "raster"] with 2 slots
  .. .. ..@ geotrans: num(0) 
  .. .. ..@ transfun:function ()  
  ..@ ncols   : int 487
  ..@ nrows   : int 373
  ..@ crs     :Formal class 'CRS' [package "sp"] with 1 slots
  .. .. ..@ projargs: chr "+proj=longlat +ellps=WGS84 +no_defs"
  ..@ history : list()
  ..@ z       : list()
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(ravis_img_canarias)
## maybe str(ravis_img_canarias) ; plot(ravis_img_canarias) ...
}
\keyword{datasets}

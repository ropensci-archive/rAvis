\name{ravis_img_ipeninsula}
\alias{ravis_img_ipeninsula}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(ravis_img_ipeninsula)}
\format{
  The format is:
Formal class 'RasterBrick' [package "raster"] with 12 slots
  ..@ file    :Formal class '.RasterFile' [package "raster"] with 13 slots
  .. .. ..@ name        : chr "C:\\proyectos\\r\\ravis\\PI.tif"
  .. .. ..@ datanotation: chr "FLT8S"
  .. .. ..@ byteorder   : chr "little"
  .. .. ..@ nodatavalue : num -Inf
  .. .. ..@ NAchanged   : logi FALSE
  .. .. ..@ nbands      : int 3
  .. .. ..@ bandorder   : chr "BIL"
  .. .. ..@ offset      : int 0
  .. .. ..@ toptobottom : logi TRUE
  .. .. ..@ blockrows   : int [1:3] 1 1 1
  .. .. ..@ blockcols   : int [1:3] 689 689 689
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
  .. .. ..@ min       : num [1:3] 79 98 78
  .. .. ..@ max       : num [1:3] 255 255 255
  .. .. ..@ unit      : chr ""
  .. .. ..@ names     : chr [1:3] "PI.1" "PI.2" "PI.3"
  ..@ legend  :Formal class '.RasterLegend' [package "raster"] with 5 slots
  .. .. ..@ type      : chr(0) 
  .. .. ..@ values    : logi(0) 
  .. .. ..@ color     : logi(0) 
  .. .. ..@ names     : logi(0) 
  .. .. ..@ colortable: logi(0) 
  ..@ title   : chr(0) 
  ..@ extent  :Formal class 'Extent' [package "raster"] with 4 slots
  .. .. ..@ xmin: num -10.1
  .. .. ..@ xmax: num 5.12
  .. .. ..@ ymin: num 33.9
  .. .. ..@ ymax: num 44.1
  ..@ rotated : logi FALSE
  ..@ rotation:Formal class '.Rotation' [package "raster"] with 2 slots
  .. .. ..@ geotrans: num(0) 
  .. .. ..@ transfun:function ()  
  ..@ ncols   : int 689
  ..@ nrows   : int 597
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
data(ravis_img_ipeninsula)
## maybe str(ravis_img_ipeninsula) ; plot(ravis_img_ipeninsula) ...
}
\keyword{datasets}

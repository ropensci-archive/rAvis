\name{ravis_shape_spain}
\alias{ravis_shape_spain}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data(ravis_shape_spain)}
\format{
  The format is:
Formal class 'SpatialPolygonsDataFrame' [package "sp"] with 5 slots
  ..@ data       :'data.frame':	51 obs. of  18 variables:
  .. ..$ ID_0      : int [1:51] 70 70 70 70 70 70 70 70 70 70 ...
  .. ..$ ISO       : Factor w/ 1 level "ESP": 1 1 1 1 1 1 1 1 1 1 ...
  .. ..$ NAME_0    : Factor w/ 1 level "Spain": 1 1 1 1 1 1 1 1 1 1 ...
  .. ..$ ID_1      : int [1:51] 935 935 935 935 935 935 935 935 936 936 ...
  .. ..$ NAME_1    : Factor w/ 18 levels "Andalucía","Aragón",..: 1 1 1 1 1 1 1 1 2 2 ...
  .. ..$ ID_2      : int [1:51] 13596 13597 13598 13599 13600 13601 13602 13603 13604 13605 ...
  .. ..$ NAME_2    : Factor w/ 51 levels "A Coruña","Álava",..: 5 13 18 21 24 26 33 42 25 45 ...
  .. ..$ VARNAME_2 : Factor w/ 5 levels "Alacant","Araba",..: NA NA NA NA NA NA NA NA NA NA ...
  .. ..$ NL_NAME_2 : Factor w/ 0 levels: NA NA NA NA NA NA NA NA NA NA ...
  .. ..$ HASC_2    : Factor w/ 51 levels "ES.AN.AM","ES.AN.CD",..: 1 2 3 4 5 6 7 8 9 10 ...
  .. ..$ CC_2      : Factor w/ 51 levels "01","02","03",..: 4 11 14 18 21 23 29 40 22 43 ...
  .. ..$ TYPE_2    : Factor w/ 2 levels "Ciudad Autónoma",..: 2 2 2 2 2 2 2 2 2 2 ...
  .. ..$ ENGTYPE_2 : Factor w/ 2 levels "Autonomous City",..: 2 2 2 2 2 2 2 2 2 2 ...
  .. ..$ VALIDFR_2 : Factor w/ 1 level "Unknown": 1 1 1 1 1 1 1 1 1 1 ...
  .. ..$ VALIDTO_2 : Factor w/ 1 level "Present": 1 1 1 1 1 1 1 1 1 1 ...
  .. ..$ REMARKS_2 : Factor w/ 0 levels: NA NA NA NA NA NA NA NA NA NA ...
  .. ..$ Shape_Leng: num [1:51] 6.51 8.05 8.05 7.29 10.21 ...
  .. ..$ Shape_Area: num [1:51] 0.891 0.748 1.412 1.286 1.029 ...
  .. ..- attr(*, "data_types")= chr [1:18] "N" "C" "C" "N" ...
  ..@ polygons   :List of 51
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.34 37.2
  .. .. .. .. .. .. ..@ area   : num 0.891
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:7659, 1:2] -2.18 -2.17 -2.16 -2.16 -2.15 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -2.34 37.2
  .. .. .. ..@ ID       : chr "0"
  .. .. .. ..@ area     : num 0.891
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 6
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.22 36.38
  .. .. .. .. .. .. ..@ area   : num 7.44e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:37, 1:2] -6.22 -6.22 -6.22 -6.22 -6.22 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.32 36.53
  .. .. .. .. .. .. ..@ area   : num 7.22e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:31, 1:2] -6.32 -6.32 -6.32 -6.32 -6.32 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.32 36.61
  .. .. .. .. .. .. ..@ area   : num 1.44e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] -6.32 -6.32 -6.32 -6.32 -6.32 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.32 36.61
  .. .. .. .. .. .. ..@ area   : num 1.54e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:37, 1:2] -6.32 -6.32 -6.32 -6.32 -6.32 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.47 36.74
  .. .. .. .. .. .. ..@ area   : num 9.51e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:39, 1:2] -6.47 -6.47 -6.47 -6.47 -6.47 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.76 36.55
  .. .. .. .. .. .. ..@ area   : num 0.748
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:10803, 1:2] -5.43 -5.43 -5.43 -5.42 -5.42 ...
  .. .. .. ..@ plotOrder: int [1:6] 6 5 1 2 4 3
  .. .. .. ..@ labpt    : num [1:2] -5.76 36.55
  .. .. .. ..@ ID       : chr "1"
  .. .. .. ..@ area     : num 0.748
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 2
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.05 37.63
  .. .. .. .. .. .. ..@ area   : num 0.000664
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:26, 1:2] -5.05 -5.05 -5.04 -5.03 -5.03 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.81 37.99
  .. .. .. .. .. .. ..@ area   : num 1.41
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:1058, 1:2] -5.05 -5.03 -5.02 -5.02 -5.01 ...
  .. .. .. ..@ plotOrder: int [1:2] 2 1
  .. .. .. ..@ labpt    : num [1:2] -4.81 37.99
  .. .. .. ..@ ID       : chr "2"
  .. .. .. ..@ area     : num 1.41
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.27 37.31
  .. .. .. .. .. .. ..@ area   : num 1.29
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:2802, 1:2] -2.55 -2.55 -2.54 -2.53 -2.52 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -3.27 37.31
  .. .. .. ..@ ID       : chr "3"
  .. .. .. ..@ area     : num 1.29
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 12
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.83 37.11
  .. .. .. .. .. .. ..@ area   : num 5.7e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:79, 1:2] -6.84 -6.84 -6.84 -6.84 -6.84 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.84 37.12
  .. .. .. .. .. .. ..@ area   : num 7.77e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:113, 1:2] -6.84 -6.84 -6.84 -6.84 -6.84 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.85 37.13
  .. .. .. .. .. .. ..@ area   : num 8.35e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:105, 1:2] -6.85 -6.85 -6.85 -6.85 -6.85 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.9 37.2
  .. .. .. .. .. .. ..@ area   : num 0.000229
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:611, 1:2] -6.92 -6.92 -6.92 -6.92 -6.92 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.95 37.19
  .. .. .. .. .. .. ..@ area   : num 0.000886
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:756, 1:2] -6.97 -6.97 -6.97 -6.97 -6.97 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.16 37.23
  .. .. .. .. .. .. ..@ area   : num 6.62e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:89, 1:2] -7.16 -7.16 -7.16 -7.16 -7.16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.01 37.23
  .. .. .. .. .. .. ..@ area   : num 9.62e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:47, 1:2] -7 -7 -7 -7 -7 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.98 37.23
  .. .. .. .. .. .. ..@ area   : num 0.000489
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:426, 1:2] -6.98 -6.98 -6.98 -6.98 -6.98 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.88 37.26
  .. .. .. .. .. .. ..@ area   : num 6.94e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:307, 1:2] -6.88 -6.88 -6.88 -6.88 -6.88 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.97 37.28
  .. .. .. .. .. .. ..@ area   : num 3.36e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:37, 1:2] -6.97 -6.97 -6.97 -6.97 -6.97 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.97 37.29
  .. .. .. .. .. .. ..@ area   : num 7.57e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:56, 1:2] -6.97 -6.97 -6.97 -6.97 -6.97 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.83 37.58
  .. .. .. .. .. .. ..@ area   : num 1.03
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:14000, 1:2] -6.97 -6.97 -6.97 -6.97 -6.97 ...
  .. .. .. ..@ plotOrder: int [1:12] 12 5 8 4 9 6 7 3 2 11 ...
  .. .. .. ..@ labpt    : num [1:2] -6.83 37.58
  .. .. .. ..@ ID       : chr "4"
  .. .. .. ..@ area     : num 1.03
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.44 38.02
  .. .. .. .. .. .. ..@ area   : num 1.38
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:788, 1:2] -2.73 -2.71 -2.7 -2.7 -2.67 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -3.44 38.02
  .. .. .. ..@ ID       : chr "5"
  .. .. .. ..@ area     : num 1.38
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 2
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.42 36.71
  .. .. .. .. .. .. ..@ area   : num 4.47e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:35, 1:2] -4.42 -4.42 -4.42 -4.42 -4.42 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.73 36.81
  .. .. .. .. .. .. ..@ area   : num 0.738
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:5303, 1:2] -4.41 -4.41 -4.4 -4.4 -4.39 ...
  .. .. .. ..@ plotOrder: int [1:2] 2 1
  .. .. .. ..@ labpt    : num [1:2] -4.73 36.81
  .. .. .. ..@ ID       : chr "6"
  .. .. .. ..@ area     : num 0.738
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 2
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.68 37.44
  .. .. .. .. .. .. ..@ area   : num 1.43
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:1110, 1:2] -5.72 -5.71 -5.71 -5.71 -5.7 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.05 37.63
  .. .. .. .. .. .. ..@ area   : num 0.000664
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:26, 1:2] -5.02 -5.03 -5.03 -5.03 -5.03 ...
  .. .. .. ..@ plotOrder: int [1:2] 1 2
  .. .. .. ..@ labpt    : num [1:2] -5.68 37.44
  .. .. .. ..@ ID       : chr "7"
  .. .. .. ..@ area     : num 1.43
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.073 42.203
  .. .. .. .. .. .. ..@ area   : num 1.7
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:994, 1:2] -0.746 -0.744 -0.727 -0.728 -0.734 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -0.073 42.203
  .. .. .. ..@ ID       : chr "8"
  .. .. .. ..@ area     : num 1.7
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.815 40.661
  .. .. .. .. .. .. ..@ area   : num 1.58
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:983, 1:2] -0.559 -0.551 -0.543 -0.522 -0.521 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -0.815 40.661
  .. .. .. ..@ ID       : chr "9"
  .. .. .. ..@ area     : num 1.58
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -1.06 41.62
  .. .. .. .. .. .. ..@ area   : num 1.87
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:1162, 1:2] -0.897 -0.907 -0.904 -0.911 -0.916 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -1.06 41.62
  .. .. .. ..@ ID       : chr "10"
  .. .. .. ..@ area     : num 1.87
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 7
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.28 43.24
  .. .. .. .. .. .. ..@ area   : num 0.00218
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:28, 1:2] -3.28 -3.28 -3.29 -3.3 -3.29 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.02 43.45
  .. .. .. .. .. .. ..@ area   : num 7.87e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:17, 1:2] -4.02 -4.02 -4.02 -4.02 -4.02 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.73 43.47
  .. .. .. .. .. .. ..@ area   : num 1.91e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:51, 1:2] -3.73 -3.73 -3.73 -3.73 -3.73 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.91 43.48
  .. .. .. .. .. .. ..@ area   : num 5.02e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:41, 1:2] -3.91 -3.91 -3.91 -3.91 -3.91 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.03 43.2
  .. .. .. .. .. .. ..@ area   : num 0.587
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:9393, 1:2] -3.59 -3.59 -3.59 -3.59 -3.59 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.1 42.8
  .. .. .. .. .. .. ..@ area   : num 0.000557
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:11, 1:2] -4.11 -4.11 -4.11 -4.11 -4.11 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.17 42.82
  .. .. .. .. .. .. ..@ area   : num 0.000173
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:7, 1:2] -4.16 -4.18 -4.18 -4.17 -4.16 ...
  .. .. .. ..@ plotOrder: int [1:7] 5 1 6 7 3 2 4
  .. .. .. ..@ labpt    : num [1:2] -4.03 43.2
  .. .. .. ..@ ID       : chr "11"
  .. .. .. ..@ area     : num 0.589
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.95 40.57
  .. .. .. .. .. .. ..@ area   : num 0.856
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:767, 1:2] -5.01 -5 -4.99 -4.99 -4.98 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -4.95 40.57
  .. .. .. ..@ ID       : chr "12"
  .. .. .. ..@ area     : num 0.856
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 5
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.25 42.73
  .. .. .. .. .. .. ..@ area   : num 0.000136
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:5, 1:2] -4.24 -4.25 -4.26 -4.26 -4.24 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.7 42.7
  .. .. .. .. .. .. ..@ area   : num 0.0307
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:137, 1:2] -2.83 -2.83 -2.82 -2.81 -2.79 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.6 42.4
  .. .. .. .. .. .. ..@ area   : num 1.53
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:1196, 1:2] -3.25 -3.24 -3.23 -3.23 -3.23 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.09 42.15
  .. .. .. .. .. .. ..@ area   : num 0.000972
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:20, 1:2] -4.08 -4.09 -4.11 -4.11 -4.1 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.03 42.09
  .. .. .. .. .. .. ..@ area   : num 0.000125
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:11, 1:2] -4.03 -4.04 -4.04 -4.04 -4.03 ...
  .. .. .. ..@ plotOrder: int [1:5] 3 2 4 1 5
  .. .. .. ..@ labpt    : num [1:2] -3.6 42.4
  .. .. .. ..@ ID       : chr "13"
  .. .. .. ..@ area     : num 1.56
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 2
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.84 42.62
  .. .. .. .. .. .. ..@ area   : num 1.71
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:993, 1:2] -4.85 -4.85 -4.84 -4.84 -4.83 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.33 42.26
  .. .. .. .. .. .. ..@ area   : num 0.00117
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:22, 1:2] -5.35 -5.35 -5.34 -5.34 -5.34 ...
  .. .. .. ..@ plotOrder: int [1:2] 1 2
  .. .. .. ..@ labpt    : num [1:2] -5.84 42.62
  .. .. .. ..@ ID       : chr "14"
  .. .. .. ..@ area     : num 1.71
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 7
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.03 42.09
  .. .. .. .. .. .. ..@ area   : num 0.000125
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:11, 1:2] -4.02 -4.03 -4.03 -4.03 -4.04 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.09 42.15
  .. .. .. .. .. .. ..@ area   : num 0.000972
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:20, 1:2] -4.08 -4.07 -4.07 -4.07 -4.07 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.17 42.82
  .. .. .. .. .. .. ..@ area   : num 0.000173
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:7, 1:2] -4.16 -4.17 -4.18 -4.18 -4.16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.1 42.8
  .. .. .. .. .. .. ..@ area   : num 0.000557
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:11, 1:2] -4.09 -4.1 -4.11 -4.11 -4.11 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.02 42.79
  .. .. .. .. .. .. ..@ area   : num 0.00213
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:28, 1:2] -4 -4 -4 -4 -4 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.54 42.37
  .. .. .. .. .. .. ..@ area   : num 0.876
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:760, 1:2] -4.46 -4.46 -4.45 -4.44 -4.43 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.25 42.73
  .. .. .. .. .. .. ..@ area   : num 0.000136
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:5, 1:2] -4.26 -4.25 -4.24 -4.26 -4.26 ...
  .. .. .. ..@ plotOrder: int [1:7] 6 5 2 4 3 7 1
  .. .. .. ..@ labpt    : num [1:2] -4.54 42.37
  .. .. .. ..@ ID       : chr "15"
  .. .. .. ..@ area     : num 0.88
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.07 40.8
  .. .. .. .. .. .. ..@ area   : num 1.32
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:3409, 1:2] -6.48 -6.47 -6.45 -6.45 -6.44 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -6.07 40.8
  .. .. .. ..@ ID       : chr "16"
  .. .. .. ..@ area     : num 1.32
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.05 41.17
  .. .. .. .. .. .. ..@ area   : num 0.743
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:594, 1:2] -3.89 -3.89 -3.88 -3.88 -3.87 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -4.05 41.17
  .. .. .. ..@ ID       : chr "17"
  .. .. .. ..@ area     : num 0.743
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.59 41.62
  .. .. .. .. .. .. ..@ area   : num 1.11
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:727, 1:2] -2.35 -2.34 -2.33 -2.33 -2.32 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -2.59 41.62
  .. .. .. ..@ ID       : chr "18"
  .. .. .. ..@ area     : num 1.11
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 3
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.47 42.02
  .. .. .. .. .. .. ..@ area   : num 0.00408
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:48, 1:2] -5.45 -5.44 -5.43 -5.42 -5.42 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.33 42.26
  .. .. .. .. .. .. ..@ area   : num 0.00117
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:22, 1:2] -5.33 -5.32 -5.31 -5.3 -5.3 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.84 41.63
  .. .. .. .. .. .. ..@ area   : num 0.871
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:844, 1:2] -5.09 -5.09 -5.08 -5.08 -5.08 ...
  .. .. .. ..@ plotOrder: int [1:3] 3 1 2
  .. .. .. ..@ labpt    : num [1:2] -4.84 41.63
  .. .. .. ..@ ID       : chr "19"
  .. .. .. ..@ area     : num 0.876
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.98 41.73
  .. .. .. .. .. .. ..@ area   : num 1.14
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:2795, 1:2] -6.77 -6.76 -6.74 -6.73 -6.73 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -5.98 41.73
  .. .. .. ..@ ID       : chr "20"
  .. .. .. ..@ area     : num 1.14
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -1.98 38.83
  .. .. .. .. .. .. ..@ area   : num 1.55
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:696, 1:2] -1.49 -1.49 -1.49 -1.49 -1.48 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -1.98 38.83
  .. .. .. ..@ ID       : chr "21"
  .. .. .. ..@ area     : num 1.55
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 2
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.84 39.46
  .. .. .. .. .. .. ..@ area   : num 0.0241
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:68, 1:2] -4.77 -4.77 -4.75 -4.76 -4.76 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.82 38.92
  .. .. .. .. .. .. ..@ area   : num 2.03
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:866, 1:2] -4.14 -4.12 -4.1 -4.09 -4.08 ...
  .. .. .. ..@ plotOrder: int [1:2] 2 1
  .. .. .. ..@ labpt    : num [1:2] -3.82 38.92
  .. .. .. ..@ ID       : chr "22"
  .. .. .. ..@ area     : num 2.06
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.2 39.9
  .. .. .. .. .. .. ..@ area   : num 1.8
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:787, 1:2] -2.12 -2.11 -2.11 -2.1 -2.09 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -2.2 39.9
  .. .. .. ..@ ID       : chr "23"
  .. .. .. ..@ area     : num 1.8
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 2
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.37 40.63
  .. .. .. .. .. .. ..@ area   : num 0.000141
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:12, 1:2] -3.36 -3.37 -3.37 -3.37 -3.37 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.62 40.81
  .. .. .. .. .. .. ..@ area   : num 1.3
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:909, 1:2] -2.91 -2.9 -2.89 -2.88 -2.88 ...
  .. .. .. ..@ plotOrder: int [1:2] 2 1
  .. .. .. ..@ labpt    : num [1:2] -2.62 40.81
  .. .. .. ..@ ID       : chr "24"
  .. .. .. ..@ area     : num 1.3
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.15 39.79
  .. .. .. .. .. .. ..@ area   : num 1.62
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:969, 1:2] -4.36 -4.35 -4.35 -4.35 -4.34 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -4.15 39.79
  .. .. .. ..@ ID       : chr "25"
  .. .. .. ..@ area     : num 1.62
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 6
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.17 41.34
  .. .. .. .. .. .. ..@ area   : num 4.94e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:17, 1:2] 2.17 2.17 2.17 2.17 2.17 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.67 42.11
  .. .. .. .. .. .. ..@ area   : num 0.00034
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:13, 1:2] 1.66 1.66 1.68 1.69 1.69 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.98 41.73
  .. .. .. .. .. .. ..@ area   : num 0.837
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:5146, 1:2] 1.9 1.92 1.93 1.94 1.94 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.02 42.12
  .. .. .. .. .. .. ..@ area   : num 0.000351
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:17, 1:2] 2.02 2.02 2.01 2 2.01 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.72 41.89
  .. .. .. .. .. .. ..@ area   : num 0.000116
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:14, 1:2] 1.71 1.71 1.71 1.71 1.72 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.64 41.31
  .. .. .. .. .. .. ..@ area   : num 3.2e-05
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:6, 1:2] 1.63 1.64 1.64 1.64 1.63 ...
  .. .. .. ..@ plotOrder: int [1:6] 3 4 2 5 6 1
  .. .. .. ..@ labpt    : num [1:2] 1.98 41.73
  .. .. .. ..@ ID       : chr "26"
  .. .. .. ..@ area     : num 0.837
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 8
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 3.19 41.86
  .. .. .. .. .. .. ..@ area   : num 4.01e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:15, 1:2] 3.19 3.19 3.19 3.19 3.19 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 3.23 42.04
  .. .. .. .. .. .. ..@ area   : num 4.78e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:15, 1:2] 3.23 3.23 3.23 3.23 3.23 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 3.23 42.04
  .. .. .. .. .. .. ..@ area   : num 5.79e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:35, 1:2] 3.23 3.23 3.23 3.23 3.23 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 3.22 42.05
  .. .. .. .. .. .. ..@ area   : num 2.89e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:70, 1:2] 3.23 3.23 3.23 3.23 3.23 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.02 42.12
  .. .. .. .. .. .. ..@ area   : num 0.000351
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:17, 1:2] 2.03 2.03 2.02 2.02 2.02 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 3.32 42.32
  .. .. .. .. .. .. ..@ area   : num 8.71e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:53, 1:2] 3.32 3.32 3.32 3.32 3.32 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.98 42.47
  .. .. .. .. .. .. ..@ area   : num 0.0014
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:43, 1:2] 1.99 1.98 1.98 1.97 1.97 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.68 42.13
  .. .. .. .. .. .. ..@ area   : num 0.642
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:6550, 1:2] 1.76 1.76 1.76 1.77 1.79 ...
  .. .. .. ..@ plotOrder: int [1:8] 8 7 5 4 6 3 2 1
  .. .. .. ..@ labpt    : num [1:2] 2.68 42.13
  .. .. .. ..@ ID       : chr "27"
  .. .. .. ..@ area     : num 0.644
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 3
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.72 41.89
  .. .. .. .. .. .. ..@ area   : num 0.000116
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:14, 1:2] 1.71 1.72 1.72 1.72 1.72 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.05 42.04
  .. .. .. .. .. .. ..@ area   : num 1.32
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:1149, 1:2] 0.715 0.716 0.723 0.735 0.735 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.67 42.11
  .. .. .. .. .. .. ..@ area   : num 0.00034
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:13, 1:2] 1.66 1.66 1.65 1.64 1.67 ...
  .. .. .. ..@ plotOrder: int [1:3] 2 3 1
  .. .. .. ..@ labpt    : num [1:2] 1.05 42.04
  .. .. .. ..@ ID       : chr "28"
  .. .. .. ..@ area     : num 1.32
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 4
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 0.735 40.776
  .. .. .. .. .. .. ..@ area   : num 6.31e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:127, 1:2] 0.73 0.73 0.73 0.73 0.731 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.61 41.19
  .. .. .. .. .. .. ..@ area   : num 5.86e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:23, 1:2] 1.61 1.61 1.61 1.61 1.61 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.64 41.31
  .. .. .. .. .. .. ..@ area   : num 3.2e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:6, 1:2] 1.64 1.64 1.63 1.63 1.64 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 0.818 41.088
  .. .. .. .. .. .. ..@ area   : num 0.676
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:8462, 1:2] 1.44 1.45 1.45 1.44 1.43 ...
  .. .. .. ..@ plotOrder: int [1:4] 4 1 3 2
  .. .. .. ..@ labpt    : num [1:2] 0.818 41.088
  .. .. .. ..@ ID       : chr "29"
  .. .. .. ..@ area     : num 0.676
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.34 35.89
  .. .. .. .. .. .. ..@ area   : num 0.00207
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:745, 1:2] -5.37 -5.37 -5.36 -5.36 -5.36 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -5.34 35.89
  .. .. .. ..@ ID       : chr "30"
  .. .. .. ..@ area     : num 0.00207
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.95 35.3
  .. .. .. .. .. .. ..@ area   : num 0.000749
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:255, 1:2] -2.95 -2.95 -2.95 -2.95 -2.95 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -2.95 35.3
  .. .. .. ..@ ID       : chr "31"
  .. .. .. ..@ area     : num 0.000749
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 3
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.29 40.66
  .. .. .. .. .. .. ..@ area   : num 0.00133
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:16, 1:2] -4.26 -4.26 -4.27 -4.3 -4.32 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.72 40.49
  .. .. .. .. .. .. ..@ area   : num 0.852
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:913, 1:2] -3.54 -3.54 -3.53 -3.53 -3.51 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.37 40.63
  .. .. .. .. .. .. ..@ area   : num 0.000141
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:12, 1:2] -3.38 -3.37 -3.37 -3.37 -3.37 ...
  .. .. .. ..@ plotOrder: int [1:3] 2 1 3
  .. .. .. ..@ labpt    : num [1:2] -3.72 40.49
  .. .. .. ..@ ID       : chr "32"
  .. .. .. ..@ area     : num 0.853
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -1.65 42.67
  .. .. .. .. .. .. ..@ area   : num 1.14
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:997, 1:2] -1.65 -1.64 -1.64 -1.64 -1.63 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -1.65 42.67
  .. .. .. ..@ ID       : chr "33"
  .. .. .. ..@ area     : num 1.14
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 6
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.457 38.161
  .. .. .. .. .. .. ..@ area   : num 3e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] -0.457 -0.457 -0.456 -0.456 -0.456 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.475 38.165
  .. .. .. .. .. .. ..@ area   : num 5.23e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:148, 1:2] -0.487 -0.487 -0.483 -0.483 -0.482 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.131 38.502
  .. .. .. .. .. .. ..@ area   : num 7.48e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:35, 1:2] -0.131 -0.131 -0.13 -0.13 -0.129 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.072 38.537
  .. .. .. .. .. .. ..@ area   : num 1.92e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:20, 1:2] -0.0721 -0.0721 -0.0724 -0.0724 -0.0726 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 0.23 38.76
  .. .. .. .. .. .. ..@ area   : num 1.41e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:23, 1:2] 0.232 0.232 0.232 0.232 0.232 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.568 38.479
  .. .. .. .. .. .. ..@ area   : num 0.601
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:7066, 1:2] -0.155 -0.148 -0.102 -0.0949 -0.092 ...
  .. .. .. ..@ plotOrder: int [1:6] 6 2 5 3 1 4
  .. .. .. ..@ labpt    : num [1:2] -0.568 38.479
  .. .. .. ..@ ID       : chr "34"
  .. .. .. ..@ area     : num 0.601
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 4
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 0.671 39.875
  .. .. .. .. .. .. ..@ area   : num 5.33e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] 0.672 0.672 0.672 0.672 0.673 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 0.668 39.891
  .. .. .. .. .. .. ..@ area   : num 5.24e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:31, 1:2] 0.668 0.668 0.668 0.668 0.668 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 0.686 39.897
  .. .. .. .. .. .. ..@ area   : num 2.84e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:104, 1:2] 0.687 0.687 0.688 0.688 0.688 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.147 40.241
  .. .. .. .. .. .. ..@ area   : num 0.702
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:5106, 1:2] -0.0647 -0.0559 -0.0537 -0.0436 -0.0307 ...
  .. .. .. ..@ plotOrder: int [1:4] 4 3 1 2
  .. .. .. ..@ labpt    : num [1:2] -0.147 40.241
  .. .. .. ..@ ID       : chr "35"
  .. .. .. ..@ area     : num 0.702
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 4
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.32 39.43
  .. .. .. .. .. .. ..@ area   : num 0.000105
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:260, 1:2] -0.328 -0.328 -0.327 -0.327 -0.326 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.306 39.445
  .. .. .. .. .. .. ..@ area   : num 5.21e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:105, 1:2] -0.304 -0.304 -0.303 -0.303 -0.303 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.784 39.345
  .. .. .. .. .. .. ..@ area   : num 1.09
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:4738, 1:2] -0.991 -0.976 -0.968 -0.952 -0.949 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -1.27 40.08
  .. .. .. .. .. .. ..@ area   : num 0.0391
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:104, 1:2] -1.28 -1.25 -1.25 -1.24 -1.25 ...
  .. .. .. ..@ plotOrder: int [1:4] 3 4 1 2
  .. .. .. ..@ labpt    : num [1:2] -0.784 39.345
  .. .. .. ..@ ID       : chr "36"
  .. .. .. ..@ area     : num 1.13
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.14 38.71
  .. .. .. .. .. .. ..@ area   : num 2.25
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:5310, 1:2] -4.67 -4.67 -4.68 -4.69 -4.69 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -6.14 38.71
  .. .. .. ..@ ID       : chr "37"
  .. .. .. ..@ area     : num 2.25
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.16 39.71
  .. .. .. .. .. .. ..@ area   : num 2.09
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:4032, 1:2] -6.23 -6.22 -6.22 -6.21 -6.2 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -6.16 39.71
  .. .. .. ..@ ID       : chr "38"
  .. .. .. ..@ area     : num 2.09
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 22
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.01 42.47
  .. .. .. .. .. .. ..@ area   : num 0.000307
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:218, 1:2] -9.02 -9.02 -9.01 -9.01 -9.01 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9 42.5
  .. .. .. .. .. .. ..@ area   : num 5.71e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] -9 -9 -9 -9 -9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.01 42.49
  .. .. .. .. .. .. ..@ area   : num 5.17e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:23, 1:2] -9 -9 -9 -9 -9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.01 42.5
  .. .. .. .. .. .. ..@ area   : num 2.14e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:58, 1:2] -9 -9 -9 -9 -9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.05 42.51
  .. .. .. .. .. .. ..@ area   : num 5.8e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:97, 1:2] -9.04 -9.04 -9.04 -9.04 -9.04 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.08 42.52
  .. .. .. .. .. .. ..@ area   : num 4.16e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] -9.08 -9.08 -9.08 -9.08 -9.08 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.88 42.6
  .. .. .. .. .. .. ..@ area   : num 4.7e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:21, 1:2] -8.88 -8.88 -8.88 -8.88 -8.88 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.09 42.64
  .. .. .. .. .. .. ..@ area   : num 1.18e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:41, 1:2] -9.09 -9.09 -9.09 -9.09 -9.09 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.08 42.73
  .. .. .. .. .. .. ..@ area   : num 4.63e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] -9.08 -9.08 -9.08 -9.08 -9.08 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.15 42.74
  .. .. .. .. .. .. ..@ area   : num 2.13e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:43, 1:2] -9.15 -9.15 -9.14 -9.14 -9.14 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.96 42.77
  .. .. .. .. .. .. ..@ area   : num 1.55e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:45, 1:2] -8.96 -8.96 -8.96 -8.96 -8.96 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.17 42.8
  .. .. .. .. .. .. ..@ area   : num 2.78e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:55, 1:2] -9.17 -9.17 -9.17 -9.17 -9.17 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.15 42.81
  .. .. .. .. .. .. ..@ area   : num 2.41e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:59, 1:2] -9.15 -9.15 -9.15 -9.15 -9.14 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.17 42.86
  .. .. .. .. .. .. ..@ area   : num 4.23e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:49, 1:2] -9.17 -9.17 -9.17 -9.17 -9.17 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -9.19 42.88
  .. .. .. .. .. .. ..@ area   : num 4.54e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:87, 1:2] -9.19 -9.19 -9.19 -9.19 -9.19 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.84 43.36
  .. .. .. .. .. .. ..@ area   : num 0.000105
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:178, 1:2] -8.84 -8.84 -8.84 -8.84 -8.84 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.38 43.37
  .. .. .. .. .. .. ..@ area   : num 3.09e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:29, 1:2] -8.38 -8.38 -8.38 -8.38 -8.38 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.45 43.38
  .. .. .. .. .. .. ..@ area   : num 2.03e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:71, 1:2] -8.45 -8.45 -8.45 -8.45 -8.45 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.34 43.51
  .. .. .. .. .. .. ..@ area   : num 3.24e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] -8.34 -8.34 -8.34 -8.34 -8.34 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.84 43.71
  .. .. .. .. .. .. ..@ area   : num 1.42e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:45, 1:2] -7.83 -7.83 -7.83 -7.83 -7.83 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.87 43.78
  .. .. .. .. .. .. ..@ area   : num 5.17e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] -7.87 -7.87 -7.87 -7.87 -7.87 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.46 43.13
  .. .. .. .. .. .. ..@ area   : num 0.882
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:24560, 1:2] -7.69 -7.69 -7.69 -7.69 -7.69 ...
  .. .. .. ..@ plotOrder: int [1:22] 22 1 16 5 15 14 12 13 4 10 ...
  .. .. .. ..@ labpt    : num [1:2] -8.46 43.13
  .. .. .. ..@ ID       : chr "39"
  .. .. .. ..@ area     : num 0.882
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 6
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.44 43.7
  .. .. .. .. .. .. ..@ area   : num 1.24e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:45, 1:2] -7.44 -7.44 -7.44 -7.44 -7.44 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.44 43.7
  .. .. .. .. .. .. ..@ area   : num 5.25e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] -7.44 -7.44 -7.44 -7.44 -7.44 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.44 43.71
  .. .. .. .. .. .. ..@ area   : num 6.09e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] -7.44 -7.44 -7.44 -7.44 -7.44 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.44 43.72
  .. .. .. .. .. .. ..@ area   : num 5.33e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:39, 1:2] -7.44 -7.44 -7.44 -7.44 -7.44 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.45 43.01
  .. .. .. .. .. .. ..@ area   : num 1.09
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:4516, 1:2] -7.64 -7.64 -7.64 -7.64 -7.64 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.63 43.76
  .. .. .. .. .. .. ..@ area   : num 2.69e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:51, 1:2] -7.63 -7.63 -7.63 -7.63 -7.63 ...
  .. .. .. ..@ plotOrder: int [1:6] 5 6 1 3 4 2
  .. .. .. ..@ labpt    : num [1:2] -7.45 43.01
  .. .. .. ..@ ID       : chr "40"
  .. .. .. ..@ area     : num 1.09
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -7.59 42.2
  .. .. .. .. .. .. ..@ area   : num 0.793
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:3656, 1:2] -7.93 -7.92 -7.91 -7.89 -7.89 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -7.59 42.2
  .. .. .. ..@ ID       : chr "41"
  .. .. .. ..@ area     : num 0.793
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 18
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.86 42.15
  .. .. .. .. .. .. ..@ area   : num 9.8e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:33, 1:2] -8.86 -8.86 -8.86 -8.86 -8.86 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.86 42.15
  .. .. .. .. .. .. ..@ area   : num 1.63e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:50, 1:2] -8.86 -8.86 -8.85 -8.85 -8.85 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.91 42.18
  .. .. .. .. .. .. ..@ area   : num 6.02e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] -8.91 -8.91 -8.91 -8.91 -8.91 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.9 42.2
  .. .. .. .. .. .. ..@ area   : num 0.000188
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:242, 1:2] -8.91 -8.91 -8.91 -8.91 -8.91 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.91 42.23
  .. .. .. .. .. .. ..@ area   : num 0.000356
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:403, 1:2] -8.91 -8.91 -8.91 -8.91 -8.91 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.94 42.35
  .. .. .. .. .. .. ..@ area   : num 3.94e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:75, 1:2] -8.93 -8.93 -8.93 -8.93 -8.93 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.94 42.38
  .. .. .. .. .. .. ..@ area   : num 0.000514
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:466, 1:2] -8.92 -8.92 -8.92 -8.92 -8.92 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.71 42.41
  .. .. .. .. .. .. ..@ area   : num 2.45e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:82, 1:2] -8.71 -8.71 -8.71 -8.71 -8.71 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.85 42.46
  .. .. .. .. .. .. ..@ area   : num 7.79e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:34, 1:2] -8.85 -8.85 -8.85 -8.85 -8.85 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.86 42.46
  .. .. .. .. .. .. ..@ area   : num 8.95e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:53, 1:2] -8.86 -8.86 -8.86 -8.86 -8.86 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.85 42.47
  .. .. .. .. .. .. ..@ area   : num 2.32e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] -8.85 -8.85 -8.85 -8.85 -8.85 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.83 42.49
  .. .. .. .. .. .. ..@ area   : num 1.37e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:45, 1:2] -8.83 -8.83 -8.83 -8.83 -8.83 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.85 42.49
  .. .. .. .. .. .. ..@ area   : num 0.000125
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:208, 1:2] -8.84 -8.84 -8.84 -8.84 -8.84 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.9 42.5
  .. .. .. .. .. .. ..@ area   : num 1.56e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:64, 1:2] -8.9 -8.9 -8.9 -8.9 -8.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.92 42.55
  .. .. .. .. .. .. ..@ area   : num 9.96e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:50, 1:2] -8.92 -8.92 -8.92 -8.92 -8.92 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.87 42.55
  .. .. .. .. .. .. ..@ area   : num 0.000675
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:850, 1:2] -8.88 -8.88 -8.88 -8.88 -8.88 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.78 42.62
  .. .. .. .. .. .. ..@ area   : num 6.78e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:118, 1:2] -8.78 -8.78 -8.78 -8.78 -8.78 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -8.46 42.44
  .. .. .. .. .. .. ..@ area   : num 0.49
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:10996, 1:2] -8.18 -8.18 -8.18 -8.16 -8.16 ...
  .. .. .. ..@ plotOrder: int [1:18] 18 16 7 5 4 13 17 6 8 2 ...
  .. .. .. ..@ labpt    : num [1:2] -8.46 42.44
  .. .. .. ..@ ID       : chr "42"
  .. .. .. ..@ area     : num 0.492
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 51
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.43 38.78
  .. .. .. .. .. .. ..@ area   : num 2.78e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:23, 1:2] 1.43 1.43 1.43 1.43 1.43 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.48 38.79
  .. .. .. .. .. .. ..@ area   : num 6.17e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] 1.48 1.48 1.48 1.48 1.48 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.42 38.79
  .. .. .. .. .. .. ..@ area   : num 1.02e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:41, 1:2] 1.42 1.42 1.42 1.42 1.42 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.46 38.69
  .. .. .. .. .. .. ..@ area   : num 0.00904
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:2251, 1:2] 1.42 1.42 1.42 1.42 1.42 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.48 38.8
  .. .. .. .. .. .. ..@ area   : num 7.55e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:140, 1:2] 1.48 1.48 1.48 1.48 1.48 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.4 38.8
  .. .. .. .. .. .. ..@ area   : num 2.77e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:19, 1:2] 1.4 1.4 1.4 1.4 1.4 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.4 38.8
  .. .. .. .. .. .. ..@ area   : num 3.78e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:17, 1:2] 1.4 1.4 1.4 1.4 1.4 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.41 38.82
  .. .. .. .. .. .. ..@ area   : num 1.28e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:45, 1:2] 1.41 1.41 1.41 1.41 1.41 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.21 38.87
  .. .. .. .. .. .. ..@ area   : num 3.5e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:55, 1:2] 1.21 1.21 1.21 1.21 1.22 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.2 38.9
  .. .. .. .. .. .. ..@ area   : num 8.51e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:124, 1:2] 1.2 1.2 1.2 1.2 1.2 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.43 38.88
  .. .. .. .. .. .. ..@ area   : num 5.71e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:21, 1:2] 1.44 1.44 1.44 1.44 1.44 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.44 38.89
  .. .. .. .. .. .. ..@ area   : num 3.86e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:23, 1:2] 1.44 1.44 1.44 1.44 1.44 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.42 38.9
  .. .. .. .. .. .. ..@ area   : num 4.09e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:19, 1:2] 1.42 1.42 1.42 1.42 1.42 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.19 38.96
  .. .. .. .. .. .. ..@ area   : num 4.15e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:77, 1:2] 1.19 1.19 1.2 1.2 1.2 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.17 38.97
  .. .. .. .. .. .. ..@ area   : num 5.71e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:19, 1:2] 1.17 1.17 1.17 1.17 1.17 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.22 38.97
  .. .. .. .. .. .. ..@ area   : num 2.86e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:57, 1:2] 1.22 1.22 1.22 1.22 1.22 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.17 38.97
  .. .. .. .. .. .. ..@ area   : num 9.34e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:35, 1:2] 1.17 1.17 1.17 1.17 1.17 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.16 38.98
  .. .. .. .. .. .. ..@ area   : num 1.68e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:47, 1:2] 1.16 1.16 1.16 1.16 1.16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.58 38.98
  .. .. .. .. .. .. ..@ area   : num 1.34e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:39, 1:2] 1.59 1.59 1.59 1.59 1.58 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.21 38.99
  .. .. .. .. .. .. ..@ area   : num 0.00015
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:222, 1:2] 1.21 1.21 1.21 1.21 1.22 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.64 39.04
  .. .. .. .. .. .. ..@ area   : num 7.98e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:124, 1:2] 1.64 1.64 1.64 1.64 1.64 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.32 39.05
  .. .. .. .. .. .. ..@ area   : num 4.86e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:31, 1:2] 1.32 1.32 1.32 1.32 1.32 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.43 39.09
  .. .. .. .. .. .. ..@ area   : num 3.7e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] 1.43 1.43 1.43 1.43 1.43 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 1.41 38.98
  .. .. .. .. .. .. ..@ area   : num 0.06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:5228, 1:2] 1.53 1.53 1.53 1.53 1.54 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.94 39.13
  .. .. .. .. .. .. ..@ area   : num 4.16e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] 2.94 2.94 2.94 2.94 2.94 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.96 39.13
  .. .. .. .. .. .. ..@ area   : num 4.86e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:23, 1:2] 2.96 2.96 2.96 2.96 2.96 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.94 39.15
  .. .. .. .. .. .. ..@ area   : num 0.00128
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:899, 1:2] 2.95 2.95 2.95 2.95 2.95 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.98 39.17
  .. .. .. .. .. .. ..@ area   : num 1.44e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:35, 1:2] 2.98 2.98 2.98 2.98 2.98 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.96 39.18
  .. .. .. .. .. .. ..@ area   : num 0.00016
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:162, 1:2] 2.97 2.97 2.97 2.97 2.97 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.97 39.2
  .. .. .. .. .. .. ..@ area   : num 7.65e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] 2.97 2.97 2.97 2.97 2.97 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.97 39.2
  .. .. .. .. .. .. ..@ area   : num 4.55e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] 2.97 2.97 2.98 2.98 2.97 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.98 39.21
  .. .. .. .. .. .. ..@ area   : num 2.08e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:19, 1:2] 2.98 2.98 2.98 2.98 2.98 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 3.01 39.3
  .. .. .. .. .. .. ..@ area   : num 7.17e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:27, 1:2] 3.01 3.01 3.01 3.01 3.01 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.98 39.33
  .. .. .. .. .. .. ..@ area   : num 3.24e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:21, 1:2] 2.98 2.98 2.98 2.98 2.98 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.47 39.46
  .. .. .. .. .. .. ..@ area   : num 1.77e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] 2.47 2.47 2.47 2.47 2.47 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.45 39.5
  .. .. .. .. .. .. ..@ area   : num 1.98e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:83, 1:2] 2.46 2.46 2.46 2.46 2.46 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.55 39.5
  .. .. .. .. .. .. ..@ area   : num 7.17e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:35, 1:2] 2.54 2.54 2.55 2.55 2.55 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.59 39.53
  .. .. .. .. .. .. ..@ area   : num 8.18e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:41, 1:2] 2.59 2.59 2.59 2.59 2.59 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.35 39.58
  .. .. .. .. .. .. ..@ area   : num 5.25e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:31, 1:2] 2.35 2.35 2.35 2.35 2.35 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.32 39.58
  .. .. .. .. .. .. ..@ area   : num 0.000326
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:324, 1:2] 2.34 2.34 2.34 2.34 2.34 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.29 39.8
  .. .. .. .. .. .. ..@ area   : num 4.42e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:108, 1:2] 4.29 4.29 4.29 4.29 4.29 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.3 39.9
  .. .. .. .. .. .. ..@ area   : num 3.68e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:77, 1:2] 4.3 4.3 4.3 4.3 4.3 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.29 39.89
  .. .. .. .. .. .. ..@ area   : num 4.47e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:23, 1:2] 4.29 4.29 4.29 4.29 4.29 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 3.15 39.92
  .. .. .. .. .. .. ..@ area   : num 1.47e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:41, 1:2] 3.15 3.15 3.15 3.15 3.15 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 2.96 39.61
  .. .. .. .. .. .. ..@ area   : num 0.382
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:14633, 1:2] 3.21 3.21 3.21 3.21 3.21 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.28 39.96
  .. .. .. .. .. .. ..@ area   : num 8.06e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:132, 1:2] 4.28 4.28 4.28 4.28 4.28 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.21 40.02
  .. .. .. .. .. .. ..@ area   : num 2.1e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:53, 1:2] 4.21 4.21 4.21 4.21 4.21 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.14 40.05
  .. .. .. .. .. .. ..@ area   : num 6.09e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:33, 1:2] 4.14 4.14 4.14 4.14 4.14 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.03 40.07
  .. .. .. .. .. .. ..@ area   : num 9.26e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:33, 1:2] 4.03 4.03 4.03 4.03 4.03 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.07 39.96
  .. .. .. .. .. .. ..@ area   : num 0.074
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:6782, 1:2] 4.08 4.08 4.08 4.08 4.08 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] 4.08 40.09
  .. .. .. .. .. .. ..@ area   : num 1.33e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:49, 1:2] 4.08 4.08 4.08 4.08 4.08 ...
  .. .. .. ..@ plotOrder: int [1:51] 45 50 24 4 27 40 29 20 10 46 ...
  .. .. .. ..@ labpt    : num [1:2] 2.96 39.61
  .. .. .. ..@ ID       : chr "43"
  .. .. .. ..@ area     : num 0.527
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 45
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -18 27.7
  .. .. .. .. .. .. ..@ area   : num 0.025
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:2547, 1:2] -17.9 -17.9 -17.9 -17.9 -17.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.4 28
  .. .. .. .. .. .. ..@ area   : num 3.93e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:19, 1:2] -15.4 -15.4 -15.4 -15.4 -15.4 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -14.5 28.1
  .. .. .. .. .. .. ..@ area   : num 6.4e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:35, 1:2] -14.5 -14.5 -14.5 -14.5 -14.5 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.4 28.1
  .. .. .. .. .. .. ..@ area   : num 1.08e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:41, 1:2] -15.4 -15.4 -15.4 -15.4 -15.4 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.4 28.1
  .. .. .. .. .. .. ..@ area   : num 1.42e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:54, 1:2] -15.4 -15.4 -15.4 -15.4 -15.4 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.6 28
  .. .. .. .. .. .. ..@ area   : num 0.144
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:6269, 1:2] -15.4 -15.4 -15.4 -15.4 -15.4 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -17.2 28.1
  .. .. .. .. .. .. ..@ area   : num 0.0342
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:2666, 1:2] -17.3 -17.3 -17.3 -17.3 -17.3 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16.2 28.5
  .. .. .. .. .. .. ..@ area   : num 1.09e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:63, 1:2] -16.2 -16.2 -16.2 -16.2 -16.2 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16.6 28.3
  .. .. .. .. .. .. ..@ area   : num 0.188
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:8099, 1:2] -16.2 -16.2 -16.2 -16.2 -16.2 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16.2 28.6
  .. .. .. .. .. .. ..@ area   : num 9.95e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:31, 1:2] -16.2 -16.2 -16.2 -16.2 -16.2 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -14 28.4
  .. .. .. .. .. .. ..@ area   : num 0.154
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:7649, 1:2] -13.9 -13.9 -13.9 -13.9 -13.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -13.8 28.8
  .. .. .. .. .. .. ..@ area   : num 0.000498
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:249, 1:2] -13.8 -13.8 -13.8 -13.8 -13.8 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -17.9 28.7
  .. .. .. .. .. .. ..@ area   : num 0.0661
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:3614, 1:2] -17.9 -17.9 -17.9 -17.9 -17.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -13.5 29.1
  .. .. .. .. .. .. ..@ area   : num 6.94e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:31, 1:2] -13.5 -13.5 -13.5 -13.5 -13.5 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -13.6 29
  .. .. .. .. .. .. ..@ area   : num 0.0758
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:5121, 1:2] -13.5 -13.5 -13.5 -13.5 -13.5 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -13.3 29.3
  .. .. .. .. .. .. ..@ area   : num 7.25e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:37, 1:2] -13.3 -13.3 -13.3 -13.3 -13.3 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -13.5 29.3
  .. .. .. .. .. .. ..@ area   : num 0.00271
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:814, 1:2] -13.5 -13.5 -13.5 -13.5 -13.5 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -13.5 29.3
  .. .. .. .. .. .. ..@ area   : num 0.000159
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:188, 1:2] -13.5 -13.5 -13.5 -13.5 -13.5 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -13.5 29.3
  .. .. .. .. .. .. ..@ area   : num 4.01e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:21, 1:2] -13.5 -13.5 -13.5 -13.5 -13.5 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -13.5 29.4
  .. .. .. .. .. .. ..@ area   : num 0.00104
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:443, 1:2] -13.5 -13.5 -13.5 -13.5 -13.5 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 2.76e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:97, 1:2] -16.1 -16.1 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 6.92e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:179, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 4.08e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:22, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 1.77e-07
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:53, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 2.63e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:33, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 5.17e-09
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:14, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 4.55e-09
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:11, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 5.59e-09
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:15, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 1.6e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:15, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 3.91e-07
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:60, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 7.4e-09
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:14, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 1.07e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:15, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 8.08e-09
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:14, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 5.55e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:37, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30
  .. .. .. .. .. .. ..@ area   : num 5.33e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:39, 1:2] -16.1 -16.1 -16.1 -16.1 -16.1 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -16 30.1
  .. .. .. .. .. .. ..@ area   : num 1.17e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:85, 1:2] -16 -16 -16 -16 -16 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 0.000269
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:233, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 1.46e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:17, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 5.71e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:24, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 5.66e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:29, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 3.03e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:22, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 2.86e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 1.09e-07
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:39, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 2.48e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:18, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -15.9 30.1
  .. .. .. .. .. .. ..@ area   : num 1.34e-08
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:15, 1:2] -15.9 -15.9 -15.9 -15.9 -15.9 ...
  .. .. .. ..@ plotOrder: int [1:45] 9 11 6 15 13 7 1 17 20 12 ...
  .. .. .. ..@ labpt    : num [1:2] -16.6 28.3
  .. .. .. ..@ ID       : chr "44"
  .. .. .. ..@ area     : num 0.692
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.52 42.28
  .. .. .. .. .. .. ..@ area   : num 0.551
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:686, 1:2] -3 -3 -2.99 -2.99 -2.98 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -2.52 42.28
  .. .. .. ..@ ID       : chr "45"
  .. .. .. ..@ area     : num 0.551
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 2
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.72 42.83
  .. .. .. .. .. .. ..@ area   : num 0.369
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:615, 1:2] -3.01 -3.01 -2.98 -2.98 -2.98 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.7 42.7
  .. .. .. .. .. .. ..@ area   : num 0.0307
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:137, 1:2] -2.84 -2.84 -2.85 -2.85 -2.85 ...
  .. .. .. ..@ plotOrder: int [1:2] 1 2
  .. .. .. ..@ labpt    : num [1:2] -2.72 42.83
  .. .. .. ..@ ID       : chr "46"
  .. .. .. ..@ area     : num 0.369
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 1
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.19 43.14
  .. .. .. .. .. .. ..@ area   : num 0.219
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:2814, 1:2] -1.79 -1.79 -1.79 -1.79 -1.79 ...
  .. .. .. ..@ plotOrder: int 1
  .. .. .. ..@ labpt    : num [1:2] -2.19 43.14
  .. .. .. ..@ ID       : chr "47"
  .. .. .. ..@ area     : num 0.219
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 4
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.5 43.4
  .. .. .. .. .. .. ..@ area   : num 8.1e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:35, 1:2] -2.49 -2.49 -2.49 -2.49 -2.49 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.68 43.43
  .. .. .. .. .. .. ..@ area   : num 8.56e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:51, 1:2] -2.69 -2.69 -2.69 -2.69 -2.69 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -2.85 43.24
  .. .. .. .. .. .. ..@ area   : num 0.244
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:4104, 1:2] -2.75 -2.75 -2.75 -2.75 -2.75 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -3.28 43.24
  .. .. .. .. .. .. ..@ area   : num 0.00218
  .. .. .. .. .. .. ..@ hole   : logi TRUE
  .. .. .. .. .. .. ..@ ringDir: int -1
  .. .. .. .. .. .. ..@ coords : num [1:28, 1:2] -3.3 -3.3 -3.29 -3.3 -3.3 ...
  .. .. .. ..@ plotOrder: int [1:4] 3 4 2 1
  .. .. .. ..@ labpt    : num [1:2] -2.85 43.24
  .. .. .. ..@ ID       : chr "48"
  .. .. .. ..@ area     : num 0.244
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 5
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -4.58 43.4
  .. .. .. .. .. .. ..@ area   : num 6.71e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:29, 1:2] -4.57 -4.57 -4.57 -4.57 -4.57 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.99 43.56
  .. .. .. .. .. .. ..@ area   : num 1.38e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:51, 1:2] -6.99 -6.99 -6.99 -6.99 -6.99 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.95 43.58
  .. .. .. .. .. .. ..@ area   : num 6.64e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:25, 1:2] -6.95 -6.95 -6.95 -6.95 -6.95 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -6.03 43.59
  .. .. .. .. .. .. ..@ area   : num 7.57e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:31, 1:2] -6.03 -6.03 -6.03 -6.03 -6.03 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -5.99 43.29
  .. .. .. .. .. .. ..@ area   : num 1.18
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:11564, 1:2] -5.84 -5.84 -5.84 -5.84 -5.84 ...
  .. .. .. ..@ plotOrder: int [1:5] 5 2 4 1 3
  .. .. .. ..@ labpt    : num [1:2] -5.99 43.29
  .. .. .. ..@ ID       : chr "49"
  .. .. .. ..@ area     : num 1.18
  .. ..$ :Formal class 'Polygons' [package "sp"] with 5 slots
  .. .. .. ..@ Polygons :List of 10
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -1.55 37.41
  .. .. .. .. .. .. ..@ area   : num 1.09e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:36, 1:2] -1.55 -1.55 -1.55 -1.55 -1.54 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -1.27 37.56
  .. .. .. .. .. .. ..@ area   : num 1.03e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:55, 1:2] -1.27 -1.27 -1.27 -1.27 -1.27 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.969 37.559
  .. .. .. .. .. .. ..@ area   : num 7.67e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:36, 1:2] -0.967 -0.968 -0.968 -0.968 -0.968 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.649 37.656
  .. .. .. .. .. .. ..@ area   : num 2.31e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:40, 1:2] -0.648 -0.648 -0.648 -0.648 -0.648 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.749 37.666
  .. .. .. .. .. .. ..@ area   : num 3.99e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:26, 1:2] -0.748 -0.748 -0.747 -0.747 -0.747 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.77 37.7
  .. .. .. .. .. .. ..@ area   : num 9.5e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:144, 1:2] -0.771 -0.771 -0.771 -0.77 -0.77 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.799 37.7
  .. .. .. .. .. .. ..@ area   : num 2.87e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:106, 1:2] -0.8 -0.8 -0.799 -0.799 -0.799 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.707 37.728
  .. .. .. .. .. .. ..@ area   : num 2.1e-05
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:73, 1:2] -0.705 -0.705 -0.705 -0.705 -0.705 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -0.747 37.787
  .. .. .. .. .. .. ..@ area   : num 3.41e-06
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:39, 1:2] -0.748 -0.748 -0.748 -0.748 -0.747 ...
  .. .. .. .. ..$ :Formal class 'Polygon' [package "sp"] with 5 slots
  .. .. .. .. .. .. ..@ labpt  : num [1:2] -1.49 38
  .. .. .. .. .. .. ..@ area   : num 1.16
  .. .. .. .. .. .. ..@ hole   : logi FALSE
  .. .. .. .. .. .. ..@ ringDir: int 1
  .. .. .. .. .. .. ..@ coords : num [1:9216, 1:2] -1.18 -1.12 -1.12 -1.05 -1.03 ...
  .. .. .. ..@ plotOrder: int [1:10] 10 6 7 8 1 2 3 5 9 4
  .. .. .. ..@ labpt    : num [1:2] -1.49 38
  .. .. .. ..@ ID       : chr "50"
  .. .. .. ..@ area     : num 1.16
  ..@ plotOrder  : int [1:51] 38 39 23 11 24 15 9 26 10 14 ...
  ..@ bbox       : num [1:2, 1:2] -18.16 27.64 4.33 43.79
  .. ..- attr(*, "dimnames")=List of 2
  .. .. ..$ : chr [1:2] "x" "y"
  .. .. ..$ : chr [1:2] "min" "max"
  ..@ proj4string:Formal class 'CRS' [package "sp"] with 1 slots
  .. .. ..@ projargs: chr NA
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
data(ravis_shape_spain)
## maybe str(ravis_shape_spain) ; plot(ravis_shape_spain) ...
}
\keyword{datasets}

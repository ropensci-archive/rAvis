
[![Build Status](https://travis-ci.org/ropensci/rAvis.svg)](https://travis-ci.org/ropensci/rAvis)

[![Coverage Status](https://coveralls.io/repos/ropensci/rAvis/badge.svg)](https://coveralls.io/r/ropensci/rAvis)
[![rstudio mirror downloads](http://cranlogs.r-pkg.org/badges/rAvis)](https://github.com/metacran/cranlogs.app)
[![cran version](http://www.r-pkg.org/badges/version/rAvis)](http://cran.rstudio.com/web/packages/rAvis)


rAvis
=====





`rAvis`: an R-package to download the information stored in “proyectoavis”, a citizen science bird project.

[Proyectoavis web site](http://proyectoavis.com/cgi-bin/portada.cgi)

## Installation

### Stable version from CRAN:


```r
install.packages("rAvis")
library("rAvis")
```


### Install with devtools

In the meantime you can install this development version with devtools package


```r
install.packages("devtools")
library("devtools")
install_github("ropensci/rAvis")
library("rAvis")
```


Load the library


```r
library("rAvis")
```



## Try some command

### Get species observation data


```r
Bubo <- avisQuerySpecies("Bubo bubo")
head(Bubo)
```

```
##   Id..Obs. Nombre.comun   Especie     Fecha Numero              Com.Aut
## 1    88274    Búho Real Bubo bubo 20-4-2014      2               Aragón
## 2    87902    Búho Real Bubo bubo 29-3-2014      1               Aragón
## 3    87516    Búho Real Bubo bubo 12-3-2014      1               Aragón
## 4    86733    Búho Real Bubo bubo  3-9-2013      1 Comunidad Valenciana
## 5    86732    Búho Real Bubo bubo  3-9-2013      1 Comunidad Valenciana
## 6    86731    Búho Real Bubo bubo  3-9-2013      1     Región de Murcia
##   Provincia     UTM Observador Periodo     Hora    Edad          Sexo
## 1    Teruel 30TXL41      torri      NA 08:05:00                      
## 2    Teruel 30TXL52      torri      NA 17:30:00                      
## 3    Teruel 30TXL41      torri      NA 17:30:00                      
## 4  Alicante 30SXH80  p.perales      NA 21:00:00  adulto         macho
## 5  Alicante 30SXH80  p.perales      NA 21:03:00 juvenil indeterminado
## 6    Murcia 30SXH80  p.perales      NA 21:00:00  adulto         macho
##                  Interes Grado.Reprod. Categ.Fenol.              Habitat
## 1                                    0            0                     
## 2                                    0            0                     
## 3    reproducción segura            11            0                     
## 4                                   16            3 roquedos de interior
## 5 comportamiento inusual             0            3   terrenos agrícolas
## 6                                   16            3 roquedos de interior
##   Codigo.de.Habitat
## 1                NA
## 2                NA
## 3                NA
## 4                NA
## 5                NA
## 6                NA
##                                                                                    Notas
## 1 barranco la Salobre - RUBIELOS de la CERIDA. DDAK 250m. S.O. 1 adulto y 1 pll al menos
## 2                                  Arroyo de los Calderones - TORRE los NEGROS. Con JMPS
## 3           Rambla del Ramblon  fuente la Salobre - RUBIELOS de la CERIDA. Con SMO y CAL
## 4                                                                                       
## 5                                      Posado sobre poste eléctrico a plena luz del día-
## 6                                                                                       
##         x     y
## 1 -1.2818 40.77
## 2 -1.1609 40.86
## 3 -1.2818 40.77
## 4 -0.8937 37.97
## 5 -0.8937 37.97
## 6 -0.8937 37.97
```


### Render a map


```r
avisMapSpecies("Pica pica")
```

![plot of chunk unnamed-chunk-6](inst/assets/figureunnamed-chunk-6.png) 


or with a physical map behind:


```r
avisMapSpecies("Pica pica", "phys")
```

![plot of chunk unnamed-chunk-7](inst/assets/figureunnamed-chunk-7.png) 


### Disable INFO messages


```r
avisSetup(verbose = FALSE)
```



## See help

Package help for more info

```r
?rAvis
```

## Meta

Please report any issues or bugs](https://github.com/ropensci/rAvis/issues).

License: GPL-2

This package is part of the [rOpenSci](http://ropensci.org/packages) project.

To cite package `rAvis` in publications use:

```coffee
To cite package ‘rAvis’ in publications use:

Javier González Hernández and Sara Varela (2014). rAvis: Interface to the bird-watching datasets at proyectoavis.com. R
package version 0.1.2.

A BibTeX entry for LaTeX users is

@Manual{,
title = {rAvis: Interface to the bird-watching datasets at proyectoavis.com},
author = {Javier González Hernández and Sara Varela},
year = {2014},
note = {R package version 0.1.2},
}

ATTENTION: This citation information has been auto-generated from the package DESCRIPTION file and may need manual editing, see
‘help("citation")’.
```

Get citation information for `rAvis` in R by `citation(package = 'rAvis')`

[![](http://ropensci.org/public_images/github_footer.png)](http://ropensci.org)

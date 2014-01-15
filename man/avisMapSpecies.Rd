\name{avisMapSpecies}
\alias{avisMapSpecies}
\title{Renders a map for each of the species provided in names}
\usage{
avisMapSpecies(names, maptype = "admin")
}
\arguments{
  \item{names}{scientific name of the species (it could be
  a list of scientific names). E.g. "Pica pica"}

  \item{maptype}{Available types of map are 'admin',
  administrative provinces of Spain (by default) or 'phys',
  physical map of Spain.}
}
\value{
a plot with the occurrences of the species in the Iberian
Peninsula. Maps have high resolution, so they could be
printed.
}
\description{
This function map the species occurrences in the Iberian
Peninsula.
}
\details{
For constructing these maps we used free online map
repositories. We downloaded the Spanish administrative map
from http://www.diva-gis.org/ and the Spanish physical map
of http://www.openstreetmap.org/ using the R- library
OpenStreetMap.
}
\examples{
\dontrun{
avisMapSpecies("Bubo bubo", "phys")
avisMapSpecies(list("Tyto alba", "Bubo bubo", "Asio capensis"))
}
}
\references{
Ian Fellows, using the JMapViewer library by Jan Peter
Stotz (2013) OpenStreetMap: Access to open street map
raster images. R package version 0.3.1.
http://CRAN.R-project.org/package=OpenStreetMap.
}


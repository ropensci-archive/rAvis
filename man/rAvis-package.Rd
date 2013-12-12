\name{rAvis}
\alias{rAvis}
\alias{rAvis}
\docType{package}
\title{
An R-package to download the information stored in Proyecto AVIS, a citizen science bird project. 
}
\description{
We developed functions to explore the database Proyecto AVIS in an easy and visual way and functions to make specific queries and download the selected information.
}
\details{
\tabular{ll}{
Package: \tab rAvis \cr
Type: \tab Package\cr
Version: \tab 0.1\cr
Date: \tab 2013-11-24\cr
License: \tab GPL-2 \cr
}

We programmed two main functions to set flexible queries about the species occurrences and the birdwatcher observations: avisQuerySpecies and avisQueryContributor. Besides, there are also functions to explore the database, like avisMapSpecies.

}
\author{
Javier Gonzalez-Hernandez and Sara Varela

Maintainer: javigzz@yahoo.es

}
\references{
Sara Varela, Javier Gonzalez-Hernandez, Eduardo Casabella, Rafael Barrientos, in prep. rAvis: an R-package to download the information stored in Proyecto AVIS, a citizen science bird project.
}

\keyword{ package }
\seealso{
http://proyectoavis.com
}
\examples{
\dontrun{
avisSpeciesSummary()

avisMapSpecies ("Pica pica", maptype="phys")

avisQuerySpecies(list("Bubo bubo", "Tyto alba"), args = list(year = 2012))
}
}

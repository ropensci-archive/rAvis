\name{avisMapSpecies}
\alias{avisMapSpecies}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
Renders a map for each of the species provided in names

}
\usage{
avisMapSpecies(names, maptype = "admin")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{names}{
might be a string or a list of species names
}
  \item{maptype}{
Available types of map are 'admin', administrative provinces of Spain (by default) or 'phys, physical map of Spain. 
}
}
\details{
For these maps, we used free online map repositories. We downloaded the Spanish administrative map from  http://www.diva-gis.org/ and the Spanish physical map of http://www.openstreetmap.org/ using the R- library OpenStreetMap. 
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
Sara Varela and Javier Gonzalez Hernandez
}
\references{
Fellows I and Stotz) utJlbJP (2013) OpenStreetMap: Access to open street map raster images. R package version 0.3.1. http://CRAN.R-project.org/package=OpenStreetMap.

Sara Varela, Javier Gonzalez-Hernandez, Eduardo Casabella, Rafael Barrientos, in prep. rAvis: an R-package to download the information stored in Proyecto AVIS, a citizen science bird project.

}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
avisMapSpecies("Bubo bubo", "phys")
avisMapSpecies(list("Tyto alba", "Bubo bubo", "Asio capensis"))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

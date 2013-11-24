\name{avisMap}
\alias{avisMap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
Renders a map for the observations provided in 'obs'.

}
\usage{
avisMap(obs, label = "", maptype = "admin")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs}{
set of observations returned by any of the avisQueryXXX functions
}
  \item{label}{
label for the map
}
  \item{maptype}{
Available types of map are 'admin', administrative provinces of Spain (by default) or 'phys, physical map of Spain. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
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
Sara Varela, Javier Gonzalez-Hernandez, Eduardo Casabella, Rafael Barrientos, in prep. rAvis: an R-package to download the information stored in Proyecto AVIS, a citizen science bird project.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
obs<- avisQuerySpecies ("Pica pica")
avisMap(obs, label = "Pica pica")
avisMap(obs, label = "Pica pica", maptype = "phys")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

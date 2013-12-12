\name{avisHasSpecies}
\alias{avisHasSpecies}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
avisHasSpecies
}
\description{
check if a species name exists in Proyecto AVIS. 
Logical: returns TRUE for species with observations in the database and FALSE for errors or species with no data in Proyecto AVIS 
}
\usage{
avisHasSpecies(nombreraw)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{nombreraw}{
species name
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
\dontrun{
avisHasSpecies("Pica pica")
avisHasSpecies("Pica pic")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{data}
\keyword{datasets}

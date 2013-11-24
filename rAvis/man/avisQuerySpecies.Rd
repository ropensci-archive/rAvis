\name{avisQuerySpecies}
\alias{avisQuerySpecies}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
avisQuerySpecies
}
\description{
Is a wrapper for avisQuery that allows you to perform a query for more than one species at once.'names' must be either a string or a list of species names, 'args' is a list of query parameters (see avisQuery) that adds further filters to the query.
}
\usage{
avisQuerySpecies(names, args = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{names}{
Must be either a string or a list of species names
}
  \item{args}{
A list of normalized parameters. Currently in Spanish, but this might become outdated. See avisQuery.
}
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
 avisQuerySpecies("Bubo bubo")
 avisQuerySpecies(list("Bubo bubo", "Tyto alba"), args = list(year = 2012))
}
}
\keyword{IO}
\keyword{data}
\keyword{datasets}
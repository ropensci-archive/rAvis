\name{avisContributorAggregatedObservations}
\alias{avisContributorAggregatedObservations}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
avisContributorAggregatedObservations
}
\description{
A function to download the information about the observations of a birdwatcher.
}
\usage{
avisContributorAggregatedObservations(contributor_id)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{contributor_id}{
id of the birdwatcher (see avisContributorSummary)
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
# Explore the contributions of Colectivo Ornitologico Ciguena Negra
\dontrun{
avisContributorAggregatedObservations (370)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{data}
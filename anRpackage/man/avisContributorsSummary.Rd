\name{avisContributorsSummary}
\alias{avisContributorsSummary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{

}
\description{
Returns a table with the observations aggregated by birdwatcher. 
}
\usage{
avisContributorsSummary()
}
%- maybe also 'usage' for other objects documented here.
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
This function returns a matrix
}
\author{
Sara Varela and Javier Gonzalez Hernandez
}
\references{
Sara Varela, Javier Gonzalez-Hernandez, Eduardo Casabella, Rafael Barrientos, in prep. rAvis: an R-package to download the information stored in Proyecto AVIS, a citizen science bird project.
}
}
\note{
This function does not allow arguments
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
birdwatchers<- avisContributorsSummary()
par (mfrow =c(2,2))
plot (birdwatchers[,2],birdwatchers[,3], xlab=colnames (birdwatchers)[2], 
      ylab=colnames (birdwatchers)[3], pch=19)
plot (birdwatchers[,2],birdwatchers[,4], xlab=colnames (birdwatchers)[2], 
      ylab=colnames (birdwatchers)[4], pch=19)
plot (birdwatchers[,2],birdwatchers[,5], xlab=colnames (birdwatchers)[2], 
      ylab=colnames (birdwatchers)[5], pch=19)
plot (birdwatchers[,2],birdwatchers[,6], xlab=colnames (birdwatchers)[2], 
      ylab=colnames (birdwatchers)[6], pch=19)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

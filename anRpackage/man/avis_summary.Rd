\name{avis_summary}
\alias{avis_summary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
avis_summary()
}
%- maybe also 'usage' for other objects documented here.
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
\references{
%% ~put references to the literature/web site here ~
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function () 
{
    require(XML)
    options(stringsAsFactors = FALSE)
    tables <- readHTMLTable("http://proyectoavis.com/cgi-bin/bus_especie.cgi")
    table_obs <- tables[[7]]
    observ <- table_obs[4:dim(table_obs)[1], 3:6]
    names(observ) <- c("Observations", "Individuals", "UTM.10x10", 
        "Birdwatchers")
    obs <- data.frame(lapply(observ, as.numeric), stringsAsFactors = FALSE)
    row.names(obs) <- table_obs[4:dim(table_obs)[1], 2]
    obs
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

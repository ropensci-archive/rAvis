\name{birdwatcher_summary}
\alias{birdwatcher_summary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
birdwatcher_summary()
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
    tables <- readHTMLTable("http://proyectoavis.com/cgi-bin/usuarios.cgi")
    table_citizens <- tables[[3]]
    citizens <- data.frame(c(1:(dim(table_citizens)[1] - 4)), 
        table_citizens[5:dim(table_citizens)[1], 4:7])
    names(citizens) <- c("Id.user.avis", "Observations", "Species", 
        "Provinces", "UTM.10x10")
    cit <- data.frame(lapply(citizens, as.numeric), stringsAsFactors = FALSE)
    cit
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

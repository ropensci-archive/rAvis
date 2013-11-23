\name{avisMap}
\alias{avisMap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
avisMap(obs, label = "", maptype = "admin")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs}{
%%     ~~Describe \code{obs} here~~
}
  \item{label}{
%%     ~~Describe \code{label} here~~
}
  \item{maptype}{
%%     ~~Describe \code{maptype} here~~
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
function (obs, label = "", maptype = "admin") 
{
    if (is.null(obs$x) || is.null(obs$y)) {
        stop("missing x or y columns in provided obs parameter")
    }
    par(mar = c(0, 0, 0, 0))
    layout(matrix(c(1, 1, 1, 1, 1, 1, 1, 1, 2), 3, 3, byrow = TRUE))
    if (maptype == "phys") {
        .avisRenderMapPhysical(obs, label)
    }
    else if (maptype == "admin") {
        .avisRenderMapAdmin(obs, label)
    }
    else {
        stop(paste("Map type '", maptype, "' not available. Available map types are: 'admin' and 'phys'"))
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

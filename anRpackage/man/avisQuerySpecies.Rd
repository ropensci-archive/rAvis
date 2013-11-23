\name{avisQuerySpecies}
\alias{avisQuerySpecies}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
avisQuerySpecies(names, args = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{names}{
%%     ~~Describe \code{names} here~~
}
  \item{args}{
%%     ~~Describe \code{args} here~~
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
function (names, args = list()) 
{
    if (is.element("id_species", names(args))) {
        warning("id_species argument in the argument list won't be regarded")
    }
    if (!is.list(names)) {
        names = list(names)
    }
    lapply(names, function(n) {
        if (!avisHasSpecies(n)) 
            stop(paste("Species not found: ", n))
    })
    df <- NULL
    for (name in names) {
        args["id_species"] <- avisSpeciesId(name)
        df <- rbind(df, avisQuery(args = args))
    }
    return(df)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

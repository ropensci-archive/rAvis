\name{avisQueryContributor}
\alias{avisQueryContributor}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
avisQueryContributor(contributor_ids, args = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{contributor_ids}{
%%     ~~Describe \code{contributor_ids} here~~
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
function (contributor_ids, args = list()) 
{
    if (is.element("usu", names(args))) {
        warning("usu argument in the argument list won't be regarded")
    }
    if (is.null(ravis_username_id_list)) {
        avisContributorsSummary()
    }
    if (!is.list(contributor_ids)) {
        contributor_ids = list(contributor_ids)
    }
    names = lapply(contributor_ids, function(id) {
        return(ravis_username_id_list[as.character(id)])
    })
    df <- NULL
    for (name in names) {
        args["usu"] <- name
        df <- rbind(df, avisQuery(args = args))
    }
    return(df)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

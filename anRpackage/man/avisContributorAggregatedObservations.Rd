\name{avisContributorAggregatedObservations}
\alias{avisContributorAggregatedObservations}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
avisContributorAggregatedObservations(contributor_id)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{contributor_id}{
%%     ~~Describe \code{contributor_id} here~~
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
function (contributor_id) 
{
    doc <- htmlParse(paste("http://proyectoavis.com/cgi-bin/ficha_usuario.cgi?id_usuario=", 
        contributor_id, sep = ""))
    nodes <- getNodeSet(doc, "//table[@class=\"resultados\"]/tr")
    df <- data.frame()
    for (node in nodes[2:length(nodes)]) {
        df <- rbind(df, .avisExtractContributorObservationDataFromRowNode(node))
    }
    names(df) <- c("SpeciesId", "Observations", "Number", "UTM.10x10", 
        "Birdwatchers")
    return(df)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

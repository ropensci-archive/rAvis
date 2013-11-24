\name{avisQueryContributor}
\alias{avisQueryContributor}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
avisQueryContributor
}
\description{
Is a wrapper for avisQuery that allows you to perform a query for more than one contributor at once.

}
\usage{
avisQueryContributor(contributor_ids, args = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{contributor_ids}{
must be either an integer or a list of contributors ids
}
  \item{args}{
is a list of query parameters (see avisQuery) that adds further filters to the query
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
avisContributorsSummary
}
\examples{
avisQueryContributor(370)
avisQueryContributor(list(370, 399), args = list(year = 2002))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

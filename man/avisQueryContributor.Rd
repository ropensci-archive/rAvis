\name{avisQueryContributor}
\alias{avisQueryContributor}
\title{avisQueryContributor}
\usage{
avisQueryContributor(contributor_ids, args = list())
}
\arguments{
  \item{contributor_ids}{must be either an integer or a
  list of contributors ids}

  \item{args}{A list of normalized parameters to add
  filters to the query. Currently in Spanish, but this
  might become outdated. See avisQuery.}
}
\value{
a dataframe with the results of your specific query to
Proyecto AVIS database
}
\description{
Is a wrapper for avisQuery that allows you to perform a
query for more than one contributor at once.
}
\examples{
\dontrun{
avisQueryContributor(370)
avisQueryContributor(list(370, 399), args = list(year = 2002))
}
}
\seealso{
avisContributorsSummary
}


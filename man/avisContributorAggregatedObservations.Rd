\name{avisContributorAggregatedObservations}
\alias{avisContributorAggregatedObservations}
\title{avisContributorAggregatedObservations}
\usage{
avisContributorAggregatedObservations(contributor_id)
}
\arguments{
  \item{contributor_id}{a number setting the id of the
  birdwatcher (see avisContributorSummary)}
}
\value{
This function returns a dataframe
}
\description{
A function to download the information about the
observations of a birdwatcher.
}
\examples{
# Explore the contributions of Colectivo Ornitologico Ciguena Negra
\dontrun{
avisContributorAggregatedObservations (370)
}
}


\name{avisQuerySpecies}
\alias{avisQuerySpecies}
\title{avisQuerySpecies}
\usage{
avisQuerySpecies(names, args = list())
}
\arguments{
  \item{names}{Must be either a string or a list of species
  names}

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
query for more than one species at once.'names' must be
either a string or a list of species names, 'args' is a
list of query parameters (see avisQuery) that adds further
filters to the query.
}
\examples{
\dontrun{
avisQuerySpecies("Bubo bubo")
avisQuerySpecies(list("Bubo bubo", "Tyto alba"), args = list(year = 2012))
}
}


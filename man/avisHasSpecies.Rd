\name{avisHasSpecies}
\alias{avisHasSpecies}
\title{avisHasSpecies}
\usage{
avisHasSpecies(nameraw)
}
\arguments{
  \item{nameraw}{scientific name of the species (e.g. "Pica
  pica")}
}
\value{
Logical: returns TRUE for species with observations in the
database and FALSE otherwise
}
\description{
check if a species name exists in Proyecto AVIS.
}
\examples{
\dontrun{
avisHasSpecies("Pica pica")
avisHasSpecies("Pica pic")
}
}


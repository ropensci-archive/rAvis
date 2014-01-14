\name{avisSpeciesSummary}
\alias{avisSpeciesSummary}
\title{avisSpeciesSummary}
\usage{
avisSpeciesSummary()
}
\value{
returns a dataframe
}
\description{
Download a table with a summary of the records stored in
Proyecto AVIS (http://proyectoavis.com) aggregated by
species; number of observations of each species, number of
individuals recorded, number of different UTMs (10x10km)
with observations, number of birdwatchers that recorded the
species
}
\note{
This functions does not allow arguments
}
\examples{
\dontrun{
avis_summary<- avisSpeciesSummary()
# general overview of the data aggregated by species
par (mfrow =c(2,2))
hist (avis_summary$Observations, col="red", border=FALSE, main=NULL)
hist (avis_summary$Individuals, col="red", border=FALSE, main=NULL)
hist (avis_summary$UTM.10x10, col="red", border=FALSE, main=NULL)
hist (avis_summary$Birdwatchers, col="red", border=FALSE, main=NULL)
}
}


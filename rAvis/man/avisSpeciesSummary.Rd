\name{avisSpeciesSummary}
\alias{avisSpeciesSummary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
avisSpeciesSummary
}
\description{
Download a table with a summary of the records stored in Proyecto AVIS (http://proyectoavis.com) aggregated by species; number of observations of each species, number of individuals recorded, number of different UTMs (10x10km) with observations, number of birdwatchers that recorded the species
}
\usage{
avisSpeciesSummary()
}
%- maybe also 'usage' for other objects documented here.
\details{
This function has no arguments.
}
\value{
It returns an object of class "data.frame". 
}

\author{
Sara Varela and Javier Gonzalez Hernandez
}
\references{
Sara Varela, Javier Gonzalez-Hernandez, Eduardo Casabella, Rafael Barrientos, in prep. rAvis: an R-package to download the information stored in Proyecto AVIS, a citizen science bird project.
}

\seealso{
avisMapSpecies, avisQuerySpecies, avisQuery
}
\examples{
avis_summary<- avisSpeciesSummary()

#general overview of the data aggregated by species

par (mfrow =c(2,2))
hist (avis_summary$Observations, col="red", border=F, main=NULL)
hist (avis_summary$Individuals, col="red", border=F, main=NULL)
hist (avis_summary$UTM.10x10, col="red", border=F, main=NULL)
hist (avis_summary$Birdwatchers, col="red", border=F, main=NULL)

}

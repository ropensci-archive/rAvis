avisSpeciesId <-
function (nombreraw)
{
  if(!avisHasSpecies(nombreraw)){
    stop(paste("Species '", nombreraw,"' not found in proyectoavis.com"))
  }

  allspecies <- avisAllSpecies()

  return (as.integer(allspecies[.avisNormalizeSpeciesName(nombreraw)]))
}

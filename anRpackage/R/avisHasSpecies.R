# Checks weather a species exists in the database
# 
avisHasSpecies <- function (nombreraw)
{
  nombre <- .avisNormalizeSpeciesName(nombreraw)
  allspecies <- avisAllSpecies()

  return (is.element(nombre, names(allspecies)))
}

avisHasSpecies <-
function (nombreraw)
{
  nombre <- .avisNormalizeSpeciesName(nombreraw)
  allspecies <- avisAllSpecies()

  return (is.element(nombre, names(allspecies)))
}

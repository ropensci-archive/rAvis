avisMapSpecies <-
function (names, maptype = 'admin')
{
  if(!is.list(names))
  {
    names <- list(names)
  }

  for (name in names) 
  {
    obs<- avisQuerySpecies (name)
    avisMap(obs, name, maptype)
  }
}

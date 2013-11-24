# Renders a map for each species provided in names list / string
# Types of map are the same as for avisMap
# 
# 'names' argument might be a string or a list of species names

# eg:
#  avisMapSpecies("bubo bubo", "phys")
#  avisMapSpecies(list("tyto alba", "bubo bubo", "asio capensis"))
#  
avisMapSpecies <- function (names, maptype = 'admin')
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

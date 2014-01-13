# Functions for grabing remote data

# function to get the ids of the species
avisSpeciesId <- function (nameraw)
{
  if(!avisHasSpecies(nameraw)){
    stop(paste("Species '", nameraw,"' not found in proyectoavis.com"))
  }

  allspecies <- avisAllSpecies()

  return (as.integer(allspecies[.avisNormalizeSpeciesName(nameraw)]))
}

avisHasSpecies <- function (nameraw)
{
 
  name <- .avisNormalizeSpeciesName(nameraw)
  allspecies <- avisAllSpecies()

  return (is.element(name, names(allspecies)))
}

avisAllSpecies <- function()
{
  .avisCacheReturnOrSetup(".ravis_species_id_list", ".avisGetServerEspecies")
}

# fetches species list from server
.avisGetServerEspecies <- function()
{
  .avisVerboseMessage("INFO: fetching species list from proyectoavis.com server")

  rawhtml<- .avisGetURL("http://proyectoavis.com/cgi-bin/bus_orden.cgi", TRUE)
  id<- grep("id_especie=[0-9]+",rawhtml)
  ids<- str_extract_all (rawhtml, "id_especie=[0-9]+")
  id_specie<- as.numeric (substring(unlist (ids [c(id)]), 12))
  name<- grep("<i>.*?</i>", rawhtml)
  names<- str_extract_all (rawhtml, "<i>.*?</i>")
  names_specie<- substring (unlist (names[c(name)]),4)
  names_species<- .avisNormalizeSpeciesName(substr(names_specie, 1, nchar(names_specie)-4))
  names(id_specie) <- names_species

  return (id_specie)
}


# to see how many records of species are stored in the database
avisSpeciesSummary <- function ()
{
  .avisCacheReturnOrSetup(".ravis_species_summary", function(){

    # fetches form server
    .avisVerboseMessage("INFO: fetching species summary from proyectoavis.com server")
    tables<- XML::readHTMLTable ("http://proyectoavis.com/cgi-bin/bus_especie.cgi")
    table_obs<- tables[[7]]
    observ<-  table_obs[4:dim(table_obs)[1],3:6]
    names (observ)<- c("Observations", "Individuals", "UTM.10x10", "Birdwatchers")
    spsummary<- data.frame (lapply(observ, as.numeric), stringsAsFactors=FALSE)
    row.names (spsummary)<- table_obs [4:dim(table_obs)[1],2]

    return(spsummary)
  });
}

.avisNormalizeSpeciesName<- function(raw)
{
  return (tolower(raw))
}

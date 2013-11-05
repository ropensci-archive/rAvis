# Functions for grabing remote data

ravisGetURL <- function(url) {
  return (getURL(url, curl = avisCurlHandler()))
}

# function to get the ids of the species
id_especies<- function ()
{
  require (stringr)
  url<-"http://proyectoavis.com/cgi-bin/bus_orden.cgi"
  texto<- readLines (url)
  id<- grep("id_especie=[0-9]+",texto) 
  ids<- str_extract_all (texto, "id_especie=[0-9]+")
  id_specie<- as.numeric (substring(unlist (ids [c(id)]), 12))
  name<- grep("<i>.*?</i>", texto)
  names<- str_extract_all (texto, "<i>.*?</i>")
  names_specie<- substring (unlist (names[c(name)]),4)
  names_species<- substr(names_specie, 1, nchar(names_specie)-4)
  ids<- data.frame (id_specie, names_species)
  ids
}


# to see how many records of species are stored in the database
avis_summary<- function ()
{
  require (XML)
  options(stringsAsFactors = FALSE)
  tables<- readHTMLTable ("http://proyectoavis.com/cgi-bin/bus_especie.cgi")
  table_obs<- tables[[7]]
  observ<-  table_obs[4:dim(table_obs)[1],3:6]
  names (observ)<- c("Observations", "Individuals", "UTM.10x10", "Birdwatchers")
  obs<- data.frame (lapply(observ, as.numeric), stringsAsFactors=FALSE)
  row.names (obs)<- table_obs [4:dim(table_obs)[1],2]
  obs
}

#main summary of birdwatchers observations
birdwatcher_summary<- function ()
{
  require (XML)
  options(stringsAsFactors = FALSE)
  tables<- readHTMLTable ("http://proyectoavis.com/cgi-bin/usuarios.cgi")
  table_citizens<- tables [[3]]
  citizens<- data.frame (c(1: (dim(table_citizens)[1]-4)), table_citizens [5:dim(table_citizens)[1],4:7])
  names (citizens)<- c("Id.user.avis", "Observations", "Species", "Provinces", "UTM.10x10")
  cit<- data.frame (lapply(citizens, as.numeric), stringsAsFactors=FALSE)
  cit
}

# to get the ids of the users
id_users<- function ()
{
  require (stringr)
  url<-"http://proyectoavis.com/cgi-bin/usuarios.cgi"
  texto<- readLines (url)
  id<- grep("id_usuario=[0-9]+",texto) 
  ids<- str_extract_all (texto, "id_usuario=[0-9]+")
  id_users<- as.numeric (substring(unlist (ids [c(id)]), 12))
  select<- seq (1,length (id_usuario), 2)
  users<- id_users [select]  
  users
}

# to see which species saw each birdwatcher
birdwatcher<- function (id)
{
  require (XML)
  options(stringsAsFactors = FALSE)
  url<- paste ("http://proyectoavis.com/cgi-bin/ficha_usuario.cgi?id_usuario=", id, sep="")
  tables<- readHTMLTable (url)
  table_birds<- tables [[9]]
  birds<- table_birds[,-c(1:2)]
  names (birds)<- c("Observations", "Individuals", "UTM.10x10", "Birdwatchers")
  bird<- data.frame (lapply(birds, as.numeric), stringsAsFactors=FALSE)
  rownames (bird)<- table_birds[,2]
  bird
}


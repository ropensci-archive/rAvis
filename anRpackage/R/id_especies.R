id_especies <-
function ()
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

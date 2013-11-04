avis_summary <-
function ()
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

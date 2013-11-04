birdwatcher_summary <-
function ()
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

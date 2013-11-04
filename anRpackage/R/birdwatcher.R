birdwatcher <-
function (id)
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

#' Aggregated summary of one contributor observations
avisContributorAggregatedObservations <- function (contributor_id)
{
  doc<-htmlParse(paste ("http://proyectoavis.com/cgi-bin/ficha_usuario.cgi?id_usuario=", contributor_id, sep=""))
  nodes <- getNodeSet(doc, "//table[@class=\"resultados\"]/tr")

  df<-data.frame()
  
  for(node in nodes[2:length(nodes)]){
    df<-rbind(df, .avisExtractContributorObservationDataFromRowNode(node))
  }
  
  names (df)<- c("SpeciesId", "Observations", "Number", "UTM.10x10", "Birdwatchers")
  
  return(df)
}

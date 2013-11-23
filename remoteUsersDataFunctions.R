# functions concerning contributor users (birdwatchers) of proyectoavis.com

ravis_birdwatcher_summary<- NULL

ravis_username_id_list<- NULL

#main summary of birdwatchers observations
avisContributorsSummary<- function ()
{
  if(is.null(ravis_birdwatcher_summary))
  {
    ravis_birdwatcher_summary<- avisExtractContributorsSummaryFromServer()

    ravis_username_id_list<-unlist(ravis_birdwatcher_summary[,2])

    names(ravis_username_id_list)<-unlist(ravis_birdwatcher_summary[,1])

    # remove username
    ravis_birdwatcher_summary <- ravis_birdwatcher_summary[,-(which (colnames(ravis_birdwatcher_summary)=="User"))]

    # TODO: hacer variable a nivel de package
    assign("ravis_birdwatcher_summary", ravis_birdwatcher_summary, envir = .GlobalEnv)
    assign("ravis_username_id_list", ravis_username_id_list, envir = .GlobalEnv)
  }

  return (ravis_birdwatcher_summary)
}


# Aggregated Summary of all contributors and their observations
avisExtractContributorsSummaryFromServer<-function()
{
  doc<-htmlParse("http://proyectoavis.com/cgi-bin/usuarios.cgi")
  nodes <- getNodeSet(doc, "//table[@class=\"observaciones1\"]/tr[@class=\"celda1\"]")

  df<- NULL
  for (node in nodes) {
    df<- rbind(df, avisExtractContributorDataFromRowNode(node))
  }

  colnames(df)<- c("UserId", "User","Observations","Species","Provinces","UTMs","Periods")
  # names(df)<- c("id","Usuario","Nombre","Citas","Especies","Provincias","UTMs","Periodos")

  return (df)
}


# Aggregated summary of one contributor observations
avisContributorAggregatedObservations<- function (contributor_id)
{
  doc<-htmlParse(paste ("http://proyectoavis.com/cgi-bin/ficha_usuario.cgi?id_usuario=", contributor_id, sep=""))
  nodes <- getNodeSet(doc, "//table[@class=\"resultados\"]/tr")

  df<-data.frame()
  
  for(node in nodes[2:length(nodes)]){
    df<-rbind(df, avisExtractContributorObservationDataFromRowNode(node))
  }
  
  names (df)<- c("SpeciesId", "Observations", "Number", "UTM.10x10", "Birdwatchers")
  
  return(df)
}

# internal
avisExtractContributorDataFromRowNode<-function(node)
{
  strnode <- toString.XMLNode(node)   
  usu_id<-regmatches(strnode, regexpr('id_usuario=([0-9]+)', strnode))
  id<-as.integer(regmatches(usu_id, regexpr('[0-9]+', usu_id)))
  
  clean_row_data <- xmlValue(node, encoding="utf-8")
  celdas<-as.list(strsplit(gsub("\n","#", clean_row_data), "#")[[1]][1:8])

  # remove username and name
  userdata<- c(id, celdas[2], as.integer(celdas[c(4:length(celdas))]))

  # userdata<- as.integer(c(id, celdas))
  
  return (userdata)
}

# internal
avisExtractContributorObservationDataFromRowNode<-function(node)
{
  clean_row_data <- xmlValue(node, encoding="utf-8")
  celdas<-as.list(strsplit(gsub("\n","#", clean_row_data), "#")[[1]])
  
  # id de especie
  id<-avisSpeciesId(celdas[2])
  
  # remove species common and scientific name
  celdas<- celdas[3:length(celdas)]
  
  obsdata<- as.integer(c(id, celdas))
  
  return (obsdata)
}
# functions concerning contributor users (birdwatchers) of proyectoavis.com

# main summary of birdwatchers observations
avisContributorsSummary<- function ()
{
  # todo: falla si no asigno a cs
  cs <- .avisCacheReturnOrSetup("contributors_summary", ".avisContributorsSummaryInit")

  return(cs)
}

# Aggregated summary of one contributor observations
avisContributorAggregatedObservations<- function (contributor_id)
{
  doc<-XML::htmlParse(paste ("http://proyectoavis.com/cgi-bin/ficha_usuario.cgi?id_usuario=", contributor_id, sep=""))
  nodes <- XML::getNodeSet(doc, "//table[@class=\"resultados\"]/tr")

  df<-data.frame()
  
  for(node in nodes[2:length(nodes)]){
    df<-rbind(df, .avisExtractContributorObservationDataFromRowNode(node))
  }
  
  names (df)<- c("SpeciesId", "Observations", "Number", "UTM.10x10", "Birdwatchers")
  
  return(df)
}

.avisContributorsSummaryInit <- function()
{
  rbs<- .avisExtractContributorsSummaryFromServer()

  ravis_username_id_list<-unlist(rbs[,2])
  names(ravis_username_id_list)<-unlist(rbs[,1])

  # remove username
  rbs <- rbs[,-(which (colnames(rbs)=="User"))]

  # cache username - id list
  .avisCacheSet('ravis_username_id_list', ravis_username_id_list)
    
  return(rbs)
}


# Aggregated Summary of all contributors and their observations
.avisExtractContributorsSummaryFromServer<-function()
{
  doc<-XML::htmlParse("http://proyectoavis.com/cgi-bin/usuarios.cgi")
  nodes <- XML::getNodeSet(doc, "//table[@class=\"observaciones1\"]/tr[@class=\"celda1\"]")

  df<- NULL
  for (node in nodes) {
    df<- rbind(df, .avisExtractContributorDataFromRowNode(node))
  }

  colnames(df)<- c("UserId", "User","Observations","Species","Provinces","UTMs","Periods")
  # names(df)<- c("id","Usuario","Nombre","Citas","Especies","Provincias","UTMs","Periodos")

  return (df)
}


# internal
.avisExtractContributorDataFromRowNode<-function(node)
{
  strnode <- XML::toString.XMLNode(node)   
  usu_id<-regmatches(strnode, regexpr('id_usuario=([0-9]+)', strnode))
  id<-as.integer(regmatches(usu_id, regexpr('[0-9]+', usu_id)))
  
  clean_row_data <- XML::xmlValue(node, encoding="utf-8")
  celdas<-as.list(strsplit(gsub("\n","#", clean_row_data), "#")[[1]][1:8])

  # remove username and name
  userdata<- c(id, celdas[2], as.integer(celdas[c(4:length(celdas))]))

  # userdata<- as.integer(c(id, celdas))
  
  return (userdata)
}

# internal
.avisExtractContributorObservationDataFromRowNode<-function(node)
{
  clean_row_data <- XML::xmlValue(node, encoding="utf-8")
  celdas<-as.list(strsplit(gsub("\n","#", clean_row_data), "#")[[1]])
  
  # id de especie
  id<-avisSpeciesId(celdas[2])
  
  # remove species common and scientific name
  celdas<- celdas[3:length(celdas)]
  
  obsdata<- as.integer(c(id, celdas))
  
  return (obsdata)
}
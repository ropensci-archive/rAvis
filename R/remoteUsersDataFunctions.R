#' avisContributorsSummary
#' 
#'Returns a table with the 
#'observations aggregated by birdwatcher. 
#'
#' @usage avisContributorsSummary()
#' @note This function does not allow arguments
#' @return This function returns a matrix
#' @export 
#' @examples \dontrun{
#' birdwatchers<- avisContributorsSummary()
#' par (mfrow =c(2,2))
#' plot (birdwatchers[,2],birdwatchers[,3], xlab=colnames (birdwatchers)[2], 
#' ylab=colnames (birdwatchers)[3], pch=19)
#' plot (birdwatchers[,2],birdwatchers[,4], xlab=colnames (birdwatchers)[2], 
#' ylab=colnames (birdwatchers)[4], pch=19)
#' plot (birdwatchers[,2],birdwatchers[,5], xlab=colnames (birdwatchers)[2], 
#' ylab=colnames (birdwatchers)[5], pch=19)
#' plot (birdwatchers[,2],birdwatchers[,6], xlab=colnames (birdwatchers)[2], 
#' ylab=colnames (birdwatchers)[6], pch=19)
#' }

avisContributorsSummary<- function ()
{
  # todo: falla si no asigno a cs
  cs <- .avisCacheReturnOrSetup("contributors_summary", ".avisContributorsSummaryInit")

  return(cs)
}

#' avisContributorAggregatedObservations
#' 
#' A function to download the information about the
#'  observations of a birdwatcher.
#'
#' @usage avisContributorAggregatedObservations(contributor_id)
#' @param contributor_id a number setting the id of the birdwatcher (see avisContributorSummary)
#' @return This function returns a dataframe
#' @export 
#' @examples # Explore the contributions of Colectivo Ornitologico Ciguena Negra
#' \dontrun{
#' avisContributorAggregatedObservations (370)
#' }
#' 
#' 
avisContributorAggregatedObservations<- function (contributor_id)
{
  doc<-XML::htmlParse(paste ("http://proyectoavis.com/cgi-bin/ficha_usuario.cgi?id_usuario=", contributor_id, sep=""))
  nodes <- XML::getNodeSet(doc, "//table[@class=\"observaciones\"][2]//tr")
  df<-data.frame()
  
  for(node in nodes[2:length(nodes)]){
    df<-rbind(df, .avisExtractContributorObservationDataFromRowNode(node))
  }
  names (df)<- c("SpeciesId", "Observations", "Number", "UTM.10x10", "Birdwatchers")
  
  return(df)
}

.avisUserNameList <- function()
{
  cached_list = .avisCacheGet('ravis_username_id_list')

  if(is.null(cached_list)){
    # ravis_username_id_list (cached object) is a by-product of avisContributorsSummary process
    avisContributorsSummary()
  }

  .avisCacheGet('ravis_username_id_list')
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
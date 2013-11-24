avisSpeciesSummary <- function ()
{
  if(is.null(ravis_species_summary))
  {
    message("INFO: fetching species summary from proyectoavis.com server")

    tables<- readHTMLTable ("http://proyectoavis.com/cgi-bin/bus_especie.cgi")
    table_obs<- tables[[7]]
    observ<-  table_obs[4:dim(table_obs)[1],3:6]
    names (observ)<- c("Observations", "Individuals", "UTM.10x10", "Birdwatchers")
    ravis_species_summary<- data.frame (lapply(observ, as.numeric), stringsAsFactors=FALSE)
    row.names (ravis_species_summary)<- table_obs [4:dim(table_obs)[1],2]

    # TODO: hacer variable a nivel de package
    assign("ravis_species_summary", ravis_species_summary, envir = .GlobalEnv)
  }

  return (ravis_species_summary)  
}

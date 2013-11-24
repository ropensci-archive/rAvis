# main summary of birdwatchers observations
avisContributorsSummary <- function ()
{
  if(is.null(ravis_birdwatcher_summary))
  {
    ravis_birdwatcher_summary<- .avisExtractContributorsSummaryFromServer()

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

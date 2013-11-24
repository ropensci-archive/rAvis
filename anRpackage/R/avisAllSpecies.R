avisAllSpecies <- function()
{
  if(is.null(ravis_species_id_list))
  {
    ravis_species_id_list <- .avisGetServerEspecies()

    # TODO: hacer variable a nivel de package
    assign("ravis_species_id_list", ravis_species_id_list, envir = .GlobalEnv)
  }

  return (ravis_species_id_list)
}

#' We developed several functions to explore and donwload 
#' the information stored in Proyecto AVIS database, 
#' in an easy and visual way.
#'
#'@name rAvis
#'@aliases rAvis-package
#' @docType package
#' @title rAvis: An R-package to download the information stored in Proyecto AVIS, 
#' a citizen science bird project.
#' @author Javier Gonzalez \email{javigzz@@yahoo.es}
#' @author Sara Varela \email{svarela@@paleobiogeography.org}
#' @references Sara Varela, Javier Gonzalez-Hernandez, 
#' Eduardo Casabella, Rafael Barrientos, in prep. 
#' rAvis: an R-package to download the information stored 
#' in Proyecto AVIS, a citizen science bird project.
#' @keywords package
#' @details \tabular{ll}{
#' Package: \tab rAvis \cr
#' Type: \tab Package\cr
#' Version: \tab 0.1\cr
#' Date: \tab 2013-11-24\cr
#' License: \tab GPL-2 \cr
#' }
#' 
#' We programmed two main functions to set flexible queries 
#' about the species occurrences and the birdwatcher 
#' observations: avisQuerySpecies and avisQueryContributor. 
#' Besides, there are also general functions 
#' to explore the database, like avisMapSpecies.
#'
#'@seealso {
#' http://proyectoavis.com
#' }
#'@examples \dontrun{
#' avisSpeciesSummary()
#'
#' avisMapSpecies ("Pica pica", maptype="phys")
#'
#' avisQuerySpecies(list("Bubo bubo", "Tyto alba"), args = list(year = 2012))
#' }
#'
NULL
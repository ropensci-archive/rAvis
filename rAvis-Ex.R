pkgname <- "rAvis"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('rAvis')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("avisAllSpecies")
### * avisAllSpecies

flush(stderr()); flush(stdout())

### Name: avisAllSpecies
### Title: avisAllSpecies
### Aliases: avisAllSpecies

### ** Examples

## Not run: 
##D avisAllSpecies()
## End(Not run)



cleanEx()
nameEx("avisContributorAggregatedObservations")
### * avisContributorAggregatedObservations

flush(stderr()); flush(stdout())

### Name: avisContributorAggregatedObservations
### Title: avisContributorAggregatedObservations
### Aliases: avisContributorAggregatedObservations

### ** Examples

# Explore the contributions of Colectivo Ornitologico Ciguena Negra
## Not run: 
##D avisContributorAggregatedObservations (370)
## End(Not run)



cleanEx()
nameEx("avisContributorsSummary")
### * avisContributorsSummary

flush(stderr()); flush(stdout())

### Name: avisContributorsSummary
### Title: avisContributorsSummary
### Aliases: avisContributorsSummary

### ** Examples

## Not run: 
##D birdwatchers<- avisContributorsSummary()
##D par (mfrow =c(2,2))
##D plot (birdwatchers[,2],birdwatchers[,3], xlab=colnames (birdwatchers)[2],
##D ylab=colnames (birdwatchers)[3], pch=19)
##D plot (birdwatchers[,2],birdwatchers[,4], xlab=colnames (birdwatchers)[2],
##D ylab=colnames (birdwatchers)[4], pch=19)
##D plot (birdwatchers[,2],birdwatchers[,5], xlab=colnames (birdwatchers)[2],
##D ylab=colnames (birdwatchers)[5], pch=19)
##D plot (birdwatchers[,2],birdwatchers[,6], xlab=colnames (birdwatchers)[2],
##D ylab=colnames (birdwatchers)[6], pch=19)
## End(Not run)



cleanEx()
nameEx("avisHasSpecies")
### * avisHasSpecies

flush(stderr()); flush(stdout())

### Name: avisHasSpecies
### Title: avisHasSpecies
### Aliases: avisHasSpecies

### ** Examples

## Not run: 
##D avisHasSpecies("Pica pica")
##D avisHasSpecies("Pica pic")
## End(Not run)



cleanEx()
nameEx("avisMap")
### * avisMap

flush(stderr()); flush(stdout())

### Name: avisMap
### Title: Renders a map for the observations provided in 'obs'
### Aliases: avisMap

### ** Examples

## Not run: 
##D obs<- avisQuerySpecies ("Pica pica", args = list(habitat = "bosque"))
##D avisMap(obs, label = "Occurrences of Pica pica in Proyecto AVIS")
##D avisMap(obs, label = "Occurrences of Pica pica in Proyecto AVIS", maptype = "phys")
## End(Not run)



cleanEx()
nameEx("avisMapSpecies")
### * avisMapSpecies

flush(stderr()); flush(stdout())

### Name: avisMapSpecies
### Title: Renders a map for each of the species provided in names
### Aliases: avisMapSpecies

### ** Examples

## Not run: 
##D 
##D avisMapSpecies("Bubo bubo", "phys")
##D 
##D # if interested in several species, you can explore the database using avisMapSpecies
##D avisMapSpecies (list("Tyto alba", "Athene noctua", "Bubo bubo", "Strix aluco"),
##D                maptype="phys")
##D 
##D # and you can save those maps individually using the tiff function
##D 
##D directory<- "C:/your_directory"
##D species<- list("Tyto alba", "Athene noctua", "Bubo bubo", "Strix aluco")
##D for (x in species){
##D  tiff (file.path (directory, paste ("/", x, ".tiff", sep="")))
##D  avisMapSpecies (x)
##D  dev.off()
##D }
## End(Not run)



cleanEx()
nameEx("avisQuery")
### * avisQuery

flush(stderr()); flush(stdout())

### Name: avisQuery
### Title: avisQuery
### Aliases: avisQuery

### ** Examples

## Not run: 
##D # get all the observations of the species of the Order Falconiformes
##D avisQuery (order = "Falconiformes")
##D # get all the observations of the species of the Family Falconidae
##D avisQuery(family = "Falconidae")
##D # get the observations of immatures of Iberian Imperial Eagle
##D avisQuery (species= "Aquila adalberti", age = "juvenil")
## End(Not run)



cleanEx()
nameEx("avisQueryContributor")
### * avisQueryContributor

flush(stderr()); flush(stdout())

### Name: avisQueryContributor
### Title: avisQueryContributor
### Aliases: avisQueryContributor

### ** Examples

## Not run: 
##D avisQueryContributor(370)
##D avisQueryContributor(list(370, 399), args = list(year = 2002))
## End(Not run)



cleanEx()
nameEx("avisQuerySpecies")
### * avisQuerySpecies

flush(stderr()); flush(stdout())

### Name: avisQuerySpecies
### Title: avisQuerySpecies
### Aliases: avisQuerySpecies

### ** Examples

## Not run: 
##D avisQuerySpecies("Bubo bubo")
##D avisQuerySpecies(list("Bubo bubo", "Tyto alba"), args = list(year = 2012))
## End(Not run)



cleanEx()
nameEx("avisSetup")
### * avisSetup

flush(stderr()); flush(stdout())

### Name: avisSetup
### Title: avisSetup
### Aliases: avisSetup

### ** Examples

## Not run: 
##D avisSetup(verbose=FALSE)
## End(Not run)



cleanEx()
nameEx("avisSpeciesId")
### * avisSpeciesId

flush(stderr()); flush(stdout())

### Name: avisSpeciesId
### Title: avisSpeciesId
### Aliases: avisSpeciesId

### ** Examples

## Not run: 
##D avisSpeciesId("Pica pica")
## End(Not run)



cleanEx()
nameEx("avisSpeciesSummary")
### * avisSpeciesSummary

flush(stderr()); flush(stdout())

### Name: avisSpeciesSummary
### Title: avisSpeciesSummary
### Aliases: avisSpeciesSummary

### ** Examples

## Not run: 
##D avis_summary<- avisSpeciesSummary()
##D # general overview of the data aggregated by species
##D par (mfrow =c(2,2))
##D hist (avis_summary$Observations, col="red", border=FALSE, main=NULL)
##D hist (avis_summary$Individuals, col="red", border=FALSE, main=NULL)
##D hist (avis_summary$UTM.10x10, col="red", border=FALSE, main=NULL)
##D hist (avis_summary$Birdwatchers, col="red", border=FALSE, main=NULL)
## End(Not run)



cleanEx()
nameEx("rAvis")
### * rAvis

flush(stderr()); flush(stdout())

### Name: rAvis
### Title: rAvis: An R-package to download the information stored in
###   Proyecto AVIS, a citizen science bird project.
### Aliases: rAvis rAvis-package
### Keywords: package

### ** Examples

## Not run: 
##D avisSpeciesSummary()
##D 
##D avisMapSpecies ("Pica pica", maptype="phys")
##D 
##D avisQuerySpecies(list("Bubo bubo", "Tyto alba"), args = list(year = 2012))
## End(Not run)



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')

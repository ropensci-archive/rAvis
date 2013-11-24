pkgname <- "rAvis"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('rAvis')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("anRpackage-package")
### * anRpackage-package

flush(stderr()); flush(stdout())

### Name: rAvis
### Title: An R-package to download the information stored in Proyecto
###   AVIS, a citizen science bird project.
### Aliases: rAvis rAvis
### Keywords: package

### ** Examples


avisSpeciesSummary()

avisMapSpecies ("Pica pica", maptype="phys")

avisQuerySpecies(list("Bubo bubo", "Tyto alba"), args = list(year = 2012))



cleanEx()
nameEx("avisAllSpecies")
### * avisAllSpecies

flush(stderr()); flush(stdout())

### Name: avisAllSpecies
### Title: avisAllSpecies
### Aliases: avisAllSpecies

### ** Examples

avisAllSpecies()



cleanEx()
nameEx("avisContributorAggregatedObservations")
### * avisContributorAggregatedObservations

flush(stderr()); flush(stdout())

### Name: avisContributorAggregatedObservations
### Title: avisContributorAggregatedObservations
### Aliases: avisContributorAggregatedObservations
### Keywords: ~kwd1 ~kwd2

### ** Examples

# Explore the contributions of Colectivo Ornitologico Ciguena Negra

avisContributorAggregatedObservations (370)
  


cleanEx()
nameEx("avisContributorsSummary")
### * avisContributorsSummary

flush(stderr()); flush(stdout())

### Name: avisContributorsSummary
### Title: avisContributorsSummary
### Aliases: avisContributorsSummary
### Keywords: ~kwd1 ~kwd2

### ** Examples

birdwatchers<- avisContributorsSummary()
par (mfrow =c(2,2))
plot (birdwatchers[,2],birdwatchers[,3], xlab=colnames (birdwatchers)[2], 
      ylab=colnames (birdwatchers)[3], pch=19)
plot (birdwatchers[,2],birdwatchers[,4], xlab=colnames (birdwatchers)[2], 
      ylab=colnames (birdwatchers)[4], pch=19)
plot (birdwatchers[,2],birdwatchers[,5], xlab=colnames (birdwatchers)[2], 
      ylab=colnames (birdwatchers)[5], pch=19)
plot (birdwatchers[,2],birdwatchers[,6], xlab=colnames (birdwatchers)[2], 
      ylab=colnames (birdwatchers)[6], pch=19)



cleanEx()
nameEx("avisHasSpecies")
### * avisHasSpecies

flush(stderr()); flush(stdout())

### Name: avisHasSpecies
### Title: avisHasSpecies
### Aliases: avisHasSpecies
### Keywords: ~kwd1 ~kwd2

### ** Examples


avisHasSpecies("Pica pica")
avisHasSpecies("Pica pic")



cleanEx()
nameEx("avisMap")
### * avisMap

flush(stderr()); flush(stdout())

### Name: avisMap
### Title: avisMap
### Aliases: avisMap
### Keywords: ~kwd1 ~kwd2

### ** Examples

obs<- avisQuerySpecies ("Pica pica")
avisMap(obs, label = "Pica pica")
avisMap(obs, label = "Pica pica", maptype = "phys")



cleanEx()
nameEx("avisMapSpecies")
### * avisMapSpecies

flush(stderr()); flush(stdout())

### Name: avisMapSpecies
### Title: avisMapSpecies
### Aliases: avisMapSpecies
### Keywords: ~kwd1 ~kwd2

### ** Examples

avisMapSpecies("Bubo bubo", "phys")
avisMapSpecies(list("Tyto alba", "Bubo bubo", "Asio capensis"))



cleanEx()
nameEx("avisQuery")
### * avisQuery

flush(stderr()); flush(stdout())

### Name: avisQuery
### Title: avisQuery
### Aliases: avisQuery
### Keywords: ~kwd1 ~kwd2

### ** Examples

# all the observations of the species of the Order Falconiformes
avisQuery (order = "Falconiformes") 

# all the observations of the species of the Family Falconidae
avisQuery(family = "Falconidae")

# Search for the observations of immatures of Iberian Imperial Eagle
avisQuery ("Aquila adalberti", age = "juvenil")




cleanEx()
nameEx("avisQueryContributor")
### * avisQueryContributor

flush(stderr()); flush(stdout())

### Name: avisQueryContributor
### Title: avisQueryContributor
### Aliases: avisQueryContributor
### Keywords: ~kwd1 ~kwd2

### ** Examples

avisQueryContributor(370)
avisQueryContributor(list(370, 399), args = list(year = 2002))



cleanEx()
nameEx("avisQuerySpecies")
### * avisQuerySpecies

flush(stderr()); flush(stdout())

### Name: avisQuerySpecies
### Title: avisQuerySpecies
### Aliases: avisQuerySpecies

### ** Examples

 avisQuerySpecies("Bubo bubo")
 avisQuerySpecies(list("Bubo bubo", "Tyto alba"), args = list(year = 2012))




cleanEx()
nameEx("avisSpeciesId")
### * avisSpeciesId

flush(stderr()); flush(stdout())

### Name: avisSpeciesId
### Title: avisSpeciesId
### Aliases: avisSpeciesId
### Keywords: ~kwd1 ~kwd2

### ** Examples

avisSpeciesId("Pica pica")



cleanEx()
nameEx("avisSpeciesSummary")
### * avisSpeciesSummary

flush(stderr()); flush(stdout())

### Name: avisSpeciesSummary
### Title: avisSpeciesSummary
### Aliases: avisSpeciesSummary

### ** Examples

avis_summary<- avisSpeciesSummary()

#general overview of the data aggregated by species

par (mfrow =c(2,2))
hist (avis_summary$Observations, col="red", border=F, main=NULL)
hist (avis_summary$Individuals, col="red", border=F, main=NULL)
hist (avis_summary$UTM.10x10, col="red", border=F, main=NULL)
hist (avis_summary$Birdwatchers, col="red", border=F, main=NULL)




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

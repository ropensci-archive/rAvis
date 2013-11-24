\name{avisQuery}
\alias{avisQuery}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
avisQuery
}
\description{
General function for querying the database by a set of criteria. Criteria may be set by means of a few
named input variables and/or by the optional list variable 'args'. 'args' may have both raw and translated query parameters for different subjects. Explicit arguments overwrite those in 'args' list.

}
\usage{
avisQuery(id_species = "", species = "", family = "", order = "", age = "", sex = "", breeding = "", habitat = "", month = "", year = "", args = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{id_species}{
%%     ~~Describe \code{id_species} here~~
}
  \item{species}{
name of the species (one single species): e.g. "Passer domesticus"
}
  \item{family}{
Filter data by family: e.g. "Passeridae", "Falconidae", etc.  
}
  \item{order}{
Filter data by Order: e.g. "Passeriformes", "Falconiformes", etc.
}
  \item{age}{
Filer by age: 'pollo', 'juvenil', 'adulto', 'indeterminado'.
}
  \item{sex}{
Filter by sex: 'macho', 'hembra', 'indeterminado', 'pareja', 'machos y hembras'
}
  \item{breeding}{
Filter by breeding-migratory status: 'reproducción posible', 'reproducción probable', 'reproducción segura', 'migración', 'invernada'
}
  \item{habitat}{
Filter by habitat: 'bosque', 'matorral', 'pastizales', 'terrenos agrícolas', 'zonas humanizadas', 
'zonas húmedas interiores', 'roquedos de interior', 'costas', 'otros'
}
  \item{month}{
Filter by month: 1 to 12
}
  \item{year}{
Filter by year: e.g. 2001
}
  \item{args}{
Other arguments accepted by Proyectoavis.com endpoint, not translated and not documented here. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{
Sara Varela and Javier Gonzalez Hernandez
}
\references{
Sara Varela, Javier Gonzalez-Hernandez, Eduardo Casabella, Rafael Barrientos, in prep. rAvis: an R-package to download the information stored in Proyecto AVIS, a citizen science bird project.

}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# all the observations of the species of the Order Falconiformes
avisQuery (order = "Falconiformes") 

# all the observations of the species of the Family Falconidae
avisQuery(family = "Falconidae")

# Search for the observations of immatures of Iberian Imperial Eagle
avisQuery ("Aquila adalberti", age = "juvenil")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

\name{avisQuery}
\alias{avisQuery}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
avisQuery
}
\description{
General function for querying the database by a set of criteria. Criteria may be set by means of a few
named input variables and/or by the optional list variable 'args'.
}
\usage{
avisQuery(id_species = "", species = "", family = "", order = "", age = "", sex = "", breeding = "", habitat = "", month = "", year = "", args = list())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{id_species}{
Id of the species according to proyectoavis.com database. You may get the id of a species with \code{\link{avisSpeciesId}}
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
List of other arguments accepted by proyectoavis.com endpoint. You may use also this list to set all the other arguments of the the function (species, sex, breeding...). You may also set parameters supported by the endpoint, but not translated for use with this package. These arguments are: id_ca, id_provincia, dia_ini, mes_ini, ano_ini, dia_fin, mes_fin, ano_fin, usu, plazo, hora_ini, minuto_ini, hora_fin, minuto_fin, codigo_habitat, gr, cf, utm_10, utm_1.
}
}
\details{
In case you set a query parameter by its name (eg: species="Bubo bubo") and also you set it inside the 'args' parameter (eg: args=list(species="Tyto alba")), the value setted by its name will prevail (in the example, "Bubo bubo will apply").
}
\value{
Returns a dataframe object
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
\dontrun{

# all the observations of the species of the Order Falconiformes
avisQuery (order = "Falconiformes") 

# all the observations of the species of the Family Falconidae
avisQuery(family = "Falconidae")

# Search for the observations of immatures of Iberian Imperial Eagle
avisQuery ("Aquila adalberti", age = "juvenil")
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{IO}
\keyword{data}
\keyword{datasets}

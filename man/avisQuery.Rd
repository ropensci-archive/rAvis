\name{avisQuery}
\alias{avisQuery}
\title{avisQuery}
\usage{
avisQuery(id_species = "", species = "", family = "", order = "", age = "", sex = "", breeding = "", habitat = "", month = "", year = "", args = list())
}
\arguments{
  \item{id_species}{Id of the species according to
  proyectoavis.com database. You may get the id of a
  species with \code{\link{avisSpeciesId}}}

  \item{species}{name of the species (one single species):
  e.g. "Passer domesticus"}

  \item{family}{Filter data by family: e.g. "Passeridae",
  "Falconidae", etc.}

  \item{order}{Filter data by Order: e.g. "Passeriformes",
  "Falconiformes", etc.}

  \item{age}{Filer by age: "pollo", "juvenil", "adulto",
  "indeterminado".}

  \item{sex}{Filter by sex: "macho", "hembra",
  "indeterminado", "pareja", "machos y hembras"}

  \item{breeding}{Filter by breeding-migratory status:
  "reproducción posible", "reproducción probable",
  "reproducción segura", "migración", "invernada"}

  \item{habitat}{Filter by habitat: "bosque", "matorral",
  "pastizales", "terrenos agrícolas", "zonas humanizadas",
  "zonas húmedas interiores", "roquedos de interior",
  "costas", "otros"}

  \item{month}{Filter by month: 1 to 12}

  \item{year}{Filter by year: e.g. 2001}

  \item{args}{List of arguments accepted by
  www.proyectoavis.com endpoint. You may use this list to
  set the arguments of the function (species, sex,
  breeding...), or you may also set all the parameters
  supported by the endpoint, but not normalized for its use
  in this package. These arguments are: id_ca,
  id_provincia, dia_ini, mes_ini, ano_ini, dia_fin,
  mes_fin, ano_fin, usu, plazo, hora_ini, minuto_ini,
  hora_fin, minuto_fin, codigo_habitat, gr, cf, utm_10,
  utm_1 (see www.proyectoavis.com)}
}
\value{
a dataframe with the results of your specific query to
Proyecto AVIS database
}
\description{
General function for querying the database using several
filters, like order, family, species, age, sex, habitat,
etc.
}
\details{
In case you set a query parameter by its name (eg:
avisQuery (species="Bubo bubo")) and also you set it inside
the 'args' parameter (eg: avisQuery (species="Bubo bubo",
args=list(species="Tyto alba")), the value setted by its
name will prevail (in the example, "Bubo bubo" will apply).
}
\examples{
\dontrun{
# get all the observations of the species of the Order Falconiformes
avisQuery (order = "Falconiformes")
# get all the observations of the species of the Family Falconidae
avisQuery(family = "Falconidae")
# get the observations of immatures of Iberian Imperial Eagle
avisQuery (species= "Aquila adalberti", age = "juvenil")
}
}


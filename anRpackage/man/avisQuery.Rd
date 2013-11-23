\name{avisQuery}
\alias{avisQuery}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
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
%%     ~~Describe \code{species} here~~
}
  \item{family}{
%%     ~~Describe \code{family} here~~
}
  \item{order}{
%%     ~~Describe \code{order} here~~
}
  \item{age}{
%%     ~~Describe \code{age} here~~
}
  \item{sex}{
%%     ~~Describe \code{sex} here~~
}
  \item{breeding}{
%%     ~~Describe \code{breeding} here~~
}
  \item{habitat}{
%%     ~~Describe \code{habitat} here~~
}
  \item{month}{
%%     ~~Describe \code{month} here~~
}
  \item{year}{
%%     ~~Describe \code{year} here~~
}
  \item{args}{
%%     ~~Describe \code{args} here~~
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
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (id_species = "", species = "", family = "", order = "", 
    age = "", sex = "", breeding = "", habitat = "", month = "", 
    year = "", args = list()) 
{
    if (id_species != "") 
        args["id_species"] <- id_species
    if (species != "") 
        args["species"] <- species
    if (family != "") 
        args["family"] <- family
    if (order != "") 
        args["order"] <- order
    if (age != "") 
        args["age"] <- age
    if (sex != "") 
        args["sex"] <- sex
    if (breeding != "") 
        args["breeding"] <- breeding
    if (habitat != "") 
        args["habitat"] <- habitat
    if (month != "") 
        args["month"] <- month
    if (year != "") 
        args["year"] <- year
    if (is.element("species", names(args)) && is.element("id_species", 
        names(args))) {
        warning(paste("ATENTION!: you setted 'species' (", args["species"], 
            ") and 'id_species' (", args["id_species"], ") in your query. The parameter id_species will be discarded"))
    }
    if (is.element("species", names(args))) {
        args["id_species"] <- avisSpeciesId(args["species"])
        args["species"] <- NULL
    }
    rawargs <- .avisTranslateArgsToRawArgs(args)
    return(.avisQueryRaw(rawargs))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

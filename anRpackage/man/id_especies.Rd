\name{id_especies}
\alias{id_especies}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
id_especies()
}
%- maybe also 'usage' for other objects documented here.
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
function () 
{
    require(stringr)
    url <- "http://proyectoavis.com/cgi-bin/bus_orden.cgi"
    texto <- readLines(url)
    id <- grep("id_especie=[0-9]+", texto)
    ids <- str_extract_all(texto, "id_especie=[0-9]+")
    id_specie <- as.numeric(substring(unlist(ids[c(id)]), 12))
    name <- grep("<i>.*?</i>", texto)
    names <- str_extract_all(texto, "<i>.*?</i>")
    names_specie <- substring(unlist(names[c(name)]), 4)
    names_species <- substr(names_specie, 1, nchar(names_specie) - 
        4)
    ids <- data.frame(id_specie, names_species)
    ids
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

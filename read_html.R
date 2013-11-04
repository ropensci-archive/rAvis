library(stringr)
library(XML)
library(tools)
library(RCurl)
library(scrapeR)
library(XLConnect)
library (gdata)

# function to get the ids of the species
id_especies<- function ()
{
require (stringr)
url<-"http://proyectoavis.com/cgi-bin/bus_orden.cgi"
texto<- readLines (url)
id<- grep("id_especie=[0-9]+",texto) 
ids<- str_extract_all (texto, "id_especie=[0-9]+")
id_specie<- as.numeric (substring(unlist (ids [c(id)]), 12))
name<- grep("<i>.*?</i>", texto)
names<- str_extract_all (texto, "<i>.*?</i>")
names_specie<- substring (unlist (names[c(name)]),4)
names_species<- substr(names_specie, 1, nchar(names_specie)-4)
ids<- data.frame (id_specie, names_species)
ids
}

id_especies()
#hay un warning "incomplete final line" 


# to see how many records of species are stored in the database
avis_summary<- function ()
{
require (XML)
options(stringsAsFactors = FALSE)
tables<- readHTMLTable ("http://proyectoavis.com/cgi-bin/bus_especie.cgi")
table_obs<- tables[[7]]
observ<-  table_obs[4:dim(table_obs)[1],3:6]
names (observ)<- c("Observations", "Individuals", "UTM.10x10", "Birdwatchers")
obs<- data.frame (lapply(observ, as.numeric), stringsAsFactors=FALSE)
row.names (obs)<- table_obs [4:dim(table_obs)[1],2]
obs
}

#main summary of birdwatchers observations
birdwatcher_summary<- function ()
{
  require (XML)
  options(stringsAsFactors = FALSE)
  tables<- readHTMLTable ("http://proyectoavis.com/cgi-bin/usuarios.cgi")
  table_citizens<- tables [[3]]
  citizens<- data.frame (c(1: (dim(table_citizens)[1]-4)), table_citizens [5:dim(table_citizens)[1],4:7])
  names (citizens)<- c("Id.user.avis", "Observations", "Species", "Provinces", "UTM.10x10")
  cit<- data.frame (lapply(citizens, as.numeric), stringsAsFactors=FALSE)
  cit
}

# to get the ids of the users
id_users<- function ()
{
  require (stringr)
  url<-"http://proyectoavis.com/cgi-bin/usuarios.cgi"
  texto<- readLines (url)
  id<- grep("id_usuario=[0-9]+",texto) 
  ids<- str_extract_all (texto, "id_usuario=[0-9]+")
  id_users<- as.numeric (substring(unlist (ids [c(id)]), 12))
  select<- seq (1,length (id_usuario), 2)
  users<- id_users [select]  
  users
}

# to see which species saw each birdwatcher
birdwatcher<- function (id)
{
  require (XML)
  options(stringsAsFactors = FALSE)
  url<- paste ("http://proyectoavis.com/cgi-bin/ficha_usuario.cgi?id_usuario=", id, sep="")
  tables<- readHTMLTable (url)
  table_birds<- tables [[9]]
  birds<- table_birds[,-c(1:2)]
  names (birds)<- c("Observations", "Individuals", "UTM.10x10", "Birdwatchers")
  bird<- data.frame (lapply(birds, as.numeric), stringsAsFactors=FALSE)
  rownames (bird)<- table_birds[,2]
  bird
}


# to construct the s
package.skeleton()

prompt()


"http://proyectoavis.com/cgi-bin/bus_avanzada.cgi?formato_consulta=tabla&tipo_consulta=esp&id_observacion=&id_periodo=&id_especie=140&orden=&criterio=num_obs&familia=&edad=&sexo=&usu=&id_ca=&id_provincia=&dia_ini=&mes_ini=&ano_ini=&dia_fin=&mes_fin=&ano_fin=&mes=&ano=&plazo=&hora_ini=&minuto_ini=&hora_fin=&minuto_fin=&reproduccion=&habitat=&codigo_habitat=&gr=&cf=&utm_10=&utm_1=&menu=&tipo_grafica=comparadas&primero=1&ultimo=25&filtrar=0&filtro_mes=&filtro_ano=&filtro_id_especie=&filtro_estacion=&cobertura=&mostrar_capa=&capa="
tables<- readHTMLTable ("http://proyectoavis.com/cgi-bin/bus_avanzada.cgi?formato_consulta=observaciones&tipo_consulta=&id_observacion=&id_periodo=&id_especie=140&orden=&criterio=id_observacion&familia=&edad=&sexo=&usu=&id_ca=&id_provincia=&dia_ini=&mes_ini=&ano_ini=&dia_fin=&mes_fin=&ano_fin=&mes=&ano=&plazo=&hora_ini=&minuto_ini=&hora_fin=&minuto_fin=&reproduccion=&habitat=&codigo_habitat=&gr=&cf=&utm_10=&utm_1=&menu=&tipo_grafica=comparadas&primero=1&ultimo=25&filtrar=0&filtro_mes=&filtro_ano=&filtro_id_especie=&filtro_estacion=&cobertura=&mostrar_capa=&capa=")
tables [[3]]

connect <-function (user, loggin)
{
  
  agent="Firefox/23.0" 
  
  options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))
  curl = getCurlHandle()
  curlSetOpt(
    cookiejar = 'cookies.txt' ,
    useragent = agent,
    followlocation = TRUE ,
    autoreferer = TRUE ,
    curl = curl)
  
  
  url_login<- "http://proyectoavis.com/cgi-bin/login.cgi"
  user<- "User-R"
  login<- "ravis_package"
  params<- list( usu="User-R",password="ravis-package")
  html = postForm(url_login, .params = params, curl = curl, style="POST")
  
  url<- "http://proyectoavis.com/cgi-bin/bus_avanzada.cgi?formato_consulta=observaciones&tipo_consulta=&id_observacion=&id_periodo=&id_especie=140&orden=&criterio=id_observacion&familia=&edad=&sexo=&usu=&id_ca=&id_provincia=&dia_ini=&mes_ini=&ano_ini=&dia_fin=&mes_fin=&ano_fin=&mes=&ano=&plazo=&hora_ini=&minuto_ini=&hora_fin=&minuto_fin=&reproduccion=&habitat=&codigo_habitat=&gr=&cf=&utm_10=&utm_1=&menu=&tipo_grafica=comparadas&primero=1&ultimo=25&filtrar=0&filtro_mes=&filtro_ano=&filtro_id_especie=&filtro_estacion=&cobertura=&mostrar_capa=&capa=&formato_consulta=tabla&tipo_consulta=&control=1&excel=1"
  postForm(url, .params = params, curl = curl, style="POST")

    
  ?postForm
  
readWorksheetFromFile(file, sheet=2)
download.file(url_species, "kk", mode="wb")
df.import.x1 = readWorksheetFromFile("kk", sheet=2))   
  
  ?getURL
}
url_species<- "http://proyectoavis.com/cgi-bin/bus_avanzada.cgi?formato_consulta=observaciones&tipo_consulta=&id_observacion=&id_periodo=&id_especie=141&orden=&criterio=id_observacion&familia=&edad=&sexo=&usu=&id_ca=&id_provincia=&dia_ini=&mes_ini=&ano_ini=&dia_fin=&mes_fin=&ano_fin=&mes=&ano=&plazo=&hora_ini=&minuto_ini=&hora_fin=&minuto_fin=&reproduccion=&habitat=&codigo_habitat=&gr=&cf=&utm_10=&utm_1=&menu=&tipo_grafica=comparadas&primero=1&ultimo=25&filtrar=0&filtro_mes=&filtro_ano=&filtro_id_especie=&filtro_estacion=&cobertura=&mostrar_capa=&capa=&formato_consulta=tabla&tipo_consulta=&control=1&excel=1"

url_sp<- "http://proyectoavis.com/cgi-bin/bus_avanzada.cgi?formato_consulta=observaciones&tipo_consulta=&id_observacion=&id_periodo=&id_especie=141&orden=&criterio=numero&familia=&edad=&sexo=&usu=&id_ca=&id_provincia=&dia_ini=&mes_ini=&ano_ini=&dia_fin=&mes_fin=&ano_fin=&mes=&ano=&plazo=&hora_ini=&minuto_ini=&hora_fin=&minuto_fin=&reproduccion=&habitat=&codigo_habitat=&gr=&cf=&utm_10=&utm_1=&menu=&tipo_grafica=comparadas&primero=1&ultimo=25&filtrar=0&filtro_mes=&filtro_ano=&filtro_id_especie=&filtro_estacion=&cobertura=&mostrar_capa=&capa=&control=1&orden_tabla=numero&num_pag=1"
kk<- readHTMLTable (url_sp, header=T)
length (kk)
str (kk[6])
kk[6]
?readHTMLTable

wb <- loadWorkbook("C:\\Users\\sara\\Documents\\_CIENCIAS\\avis\\bus_avanzada.cgi.xls")


kk<- read.xls ("C:\\Users\\sara\\Documents\\_CIENCIAS\\avis\\bus_avanzada.cgi.xls")
x<- "Anas cyanoptera"
avis<- function ("Genus Species")
{
  id<- id_especies [which (id_especies[,2]==x),1]  
  
}


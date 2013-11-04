id_users <-
function ()
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

# Functions related to search from http://proyectoavis.com/cgi-bin/bus_avanzada.cgi

ravis_search_url_base<- "http://proyectoavis.com/cgi-bin/bus_avanzada.cgi"

ravis_search_default_params<- list( 
	formato_consulta = 'observaciones', 
	tipo_consulta = '', 
	id_observacion = '', 
	id_periodo = '', 
	id_especie = '', 
	orden = '', 
	criterio = 'id_observacion', 
	familia = '', 
	edad = '', sexo = '', 
	usu = '', 
	id_ca = '',	id_provincia = '', 
	dia_ini = '', mes_ini = '', ano_ini = '', 
	dia_fin = '', mes_fin = '', ano_fin = '', 
	mes = '', ano = '', plazo = '', 
	hora_ini = '', minuto_ini = '', 
	hora_fin = '', minuto_fin = '', 
	reproduccion = '', habitat = '', codigo_habitat = '', 
	gr = '', cf = '', utm_10 = '', utm_1 = '', 
	menu = '', tipo_grafica = 'comparadas', 
	filtro_mes = '', filtro_ano = '', 
	filtro_id_especie = '', filtro_estacion = '', cobertura = '', 
	mostrar_capa = '', capa = '', 
	formato_consulta = 'tabla', 
	tipo_consulta = '', 
	control = 1, 
	# filter modes
	# primero = 1, ultimo = 25, filtrar = 0, 
	# orden_tabla = 'numero', num_pag = 1,
	excel = 1
)

avisQueryRawData <- NULL

ravisUTMLatLong<-NULL

# query observations of one or several species
# names is character vector or a list of species names
# 
# TODO: depurar problemas warning invalid factor level a descargar varias especies
avisQuerySpecies <- function (names, args = list()) 
{
	if(is.element('id_especie', names(args)))
	{
		warning("id_especie argument in the argument list won't be regarded")
	}

	if(!is.list(names)){ 
		names = list(names)
	}

	# check all species exists in bd before querying
	lapply(names, function(n){ 
		if(!avisSpeciesExists(n)) stop(paste("Species not found: ", n)) 
	})

	df<- NULL
	for (name in names) {
		args['id_especie'] <- avisSpeciesId(name)
		df<- rbind(df, avisQuery(args))
	}

	return (df)
}

# query observations for a single or a group of contributors
avisQueryContributor <- function (contributor_ids, args = list()) {
	if(is.element('usu', names(args)))
	{
		warning("usu argument in the argument list won't be regarded")
	}

	if(is.null(ravis_username_id_list)){
		avisContributorsSummary()
	}

	if(!is.list(contributor_ids)){ 
		contributor_ids = list(contributor_ids)
	}

	names = lapply(contributor_ids, function(id){
		return (ravis_username_id_list[as.character(id)])
		})

	df<- NULL
	for (name in names) {
		args['usu'] <- name
		df<- rbind(df, avisQuery(args))
	}

	return (df)
}

avisQuery <- function (args){
	# query the project database with the argments
	
	if(!is.list(args)){
		stop("Object of type 'list' expected")
	}

	avisQueryRawData <- NULL

	args<-avisMergeArgumentList(args, ravis_search_default_params)

	# query string
	qs <- ''
	for (argName in names(args)) {
		qs <- paste(qs, argName, "=", args[argName], '&', sep = "")
	}
	qs <- substr(qs,0,nchar(qs)-1)

	url <- paste(ravis_search_url_base, qs, sep = "?")

	# message(paste("query to: ", url))

	avisQueryRawData <- avisGetURL(url)

	# TODO: debe ser una propiedad de un objeto, no un objeto en entorno global
  assign("avisQueryRawData", avisQueryRawData, envir = .GlobalEnv)

  data <- read.csv(textConnection(avisQueryRawData), sep = ";", quote = "")
  
	utm_latlon<-getUTMLatlong()
  
	data<- data.frame(data, "x"= utm_latlon$x [match (substring(data$UTM,4), utm_latlon$utm)], 
	                   "y"= utm_latlon$y [match (substring(data$UTM,4), utm_latlon$utm)])

	return(data)
}

# merge two argument list. first argument lists overwrite seccond (default)
avisMergeArgumentList<-function(args, defaultArgs)
{
	for (argName in names(defaultArgs)) {
		if(!is.element(argName, names(args))){
			args[argName] <- defaultArgs[argName]
		}
	}

	return (args)
}

getUTMLatlong<- function(){
  if(is.null(ravisUTMLatLong)){
    ravisUTMLatLong<- read.table ("utm_latlon.csv", sep=",", header=T)
    assign("ravisUTMLatLong", ravisUTMLatLong, envir = .GlobalEnv)
  }
  
  return (ravisUTMLatLong)
}



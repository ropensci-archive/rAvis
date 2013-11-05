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

ravisQueryRawData <- NULL

ravisQuery <- function (args){
	# query the project database with the argments
	
	if(!is.list(args)){
		stop("Object of type 'list' expected")
	}

	ravisQueryRawData <- NULL

	for (argName in names(ravis_search_default_params)) {
		if(!is.element(argName, names(args))){
			args[argName] <- ravis_search_default_params[argName]
		}
	}

	# query string
	qs <- ''
	for (argName in names(args)) {
		qs <- paste(qs, argName, "=", args[argName], '&', sep = "")
	}
	qs <- substr(qs,0,nchar(qs)-1)

	url <- paste(ravis_search_url_base, qs, sep = "?")

	ravisQueryRawData <- ravisGetURL(url)

	# TODO: debe ser una propiedad de un objeto, no un objeto en entorno global
    assign("ravisQueryRawData", ravisQueryRawData, envir = .GlobalEnv)

	return(read.csv(textConnection(ravisQueryRawData), sep = ";"))
}

ravisQuerySpecies <- function (idSpecies) {
	args <- ravis_search_default_params
	args['id_especie'] <- idSpecies
	ravisQuery(args)
}



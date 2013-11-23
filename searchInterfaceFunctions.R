# Functions related to search from http://proyectoavis.com/cgi-bin/bus_avanzada.cgi

.ravis_search_url_base<- "http://proyectoavis.com/cgi-bin/bus_avanzada.cgi"

# translate
.ravis_translated_params_map<- list( 
	id_species = 'id_especie', # string / list -> id_especie
	family = 'familia', # familia
	order = 'orden', # orden
	age = 'edad',
	sex = 'sexo', # sexo: 'macho', 'hembra', 'indeterminado', 'pareja', 'machos y hembras'
	breeding = 'reproduccion',
	habitat = 'habitat', 
	# habitat: 'terrenos agrícolas', 'roquedos de interior', 
	# 'zonas humanizadas', 'zonas húmedas interiores', 'bosque',
	# 'pastizales', 'costas', 'matorral', 'otros'
	
	# id_ca = '',	id_provincia = '',
	# gr = '', cf = '', utm_10 = '', utm_1 = '', 
	month = 'mes', 
	year = 'ano'
)

# query parameters accepted by proyectoavis.com
.ravis_raw_search_default_params<- list( 
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

# Is a wrapper for avisQuery that allows you to perform a query for more than 
# one species at once.
# 'names' must be either a string or a list of species names
# 'args' is a list of query parameters (see avisQuery) that adds further filters to the query
# 
# eg: 
# 
# avisQuerySpecies("bubo bubo")
# avisQuerySpecies(list("bubo bubo", "tyto alba"), args = list(year = 2012))
# 
avisQuerySpecies <- function (names, args = list()) 
{
	if(is.element('id_species', names(args)))
	{
		warning("id_species argument in the argument list won't be regarded")
	}

	if(!is.list(names)){ 
		names = list(names)
	}

	# check all species exists in bd before querying
	lapply(names, function(n){ 
		if(!avisHasSpecies(n)) stop(paste("Species not found: ", n)) 
	})

	df<- NULL
	for (name in names) {
		args['id_species'] <- avisSpeciesId(name)
		df<- rbind(df, avisQuery(args = args))
	}

	return (df)
}

# Is a wrapper for avisQuery that allows you to perform a query for more than 
# one contributor at once.
# 'contributor_ids' must be either an integer or a list of contributors ids
# 'args' is a list of query parameters (see avisQuery) that adds further filters to the query
# 
# eg: 
# 
# avisQueryContributor(56)
# avisQueryContributor(list(56, 88), args = list(year = 2012))
# 
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
		df<- rbind(df, avisQuery(args = args))
	}

	return (df)
}

# General funciton for querying the database by a set of criteria. Criteria may be set by means of a few
# named input variables and/or by the optional list variable 'args'
# 
# 'args' may have both raw and translated query parameters for different subjects
# explicit arguments overwrite those in 'args' list
# 
# Options for normalized parameters (spanish) (this might become outdated):
# - age: 'pollo', 'juvenil', 'adulto', 'indeterminado'
# - sex: 'macho', 'hembra', 'indeterminado', 'pareja', 'machos y hembras'
# - breeding: 'reproducción posible', 'reproducción probable', 'reproducción segura', 'migración', 'invernada'
# - habitat: 'bosque', 'matorral', 'pastizales', 'terrenos agrícolas', 'zonas humanizadas', 
# 			'zonas húmedas interiores', 'roquedos de interior', 'costas', 'otros'
# - month: 1 to 12
# 
avisQuery <- function (id_species = '', species = '', family = '', order = '', age = '', 
	sex = '', breeding = '', habitat = '', month = '', year = '', args = list())
{
	if (id_species != '') args['id_species'] <- id_species
	if (species != '') args['species'] <- species
	if (family != '') args['family'] <- family
	if (order != '') args['order'] <- order
	if (age != '') args['age'] <- age
	if (sex != '') args['sex'] <- sex
	if (breeding != '') args['breeding'] <- breeding
	if (habitat != '') args['habitat'] <- habitat
	if (month != '') args['month'] <- month
	if (year != '') args['year'] <- year
	
	if(is.element('species', names(args)) && is.element('id_species', names(args)))
	{
		warning(paste("ATENTION!: you setted 'species' (", args['species'], ") and 'id_species' (", args['id_species'], ") in your query. The parameter id_species will be discarded"))
	}

	# species id
	if(is.element('species', names(args)))
	{
		args['id_species'] <- avisSpeciesId(args['species'])
		args['species']<-NULL	
	}

	rawargs <- .avisTranslateArgsToRawArgs(args)

	return (.avisQueryRaw(rawargs))
}

.avisTranslateArgsToRawArgs<-function(args)
{
	# tranlate args (set by user) to rawargs (which can be handled by server)
	rawargs<-args

	for (argname in names(args)) {
		# if argname is a translated param
		if(is.element(argname, names(.ravis_translated_params_map))){
			raw_param_name<-.ravis_translated_params_map[argname][[1]]
			rawargs[raw_param_name] <- args[argname]
			rawargs[argname]<-NULL
		}
	}

	return (rawargs)
}

# internal
.avisQueryRaw <- function (args)
{
	# query the project database with the argments
	# the arguments must have the exact names that proyectoavis.com gets (raw parameters)
	
	if(!is.list(args)){
		stop("Object of type 'list' expected")
	}

	avisQueryRawData <- NULL

	args<-.avisMergeArgumentList(args, .ravis_raw_search_default_params)

	# query string
	qs <- ''
	for (argName in names(args)) {
		qs <- paste(qs, argName, "=", args[argName], '&', sep = "")
	}
	qs <- substr(qs,0,nchar(qs)-1)

	url <- paste(.ravis_search_url_base, qs, sep = "?")

	avisQueryRawData <- .avisGetURL(url)

	# TODO: better way
  	assign("avisQueryRawData", avisQueryRawData, envir = .GlobalEnv)

  	data <- read.csv(textConnection(avisQueryRawData), sep = ";", quote = "")
  
	utm_latlon<-getUTMLatlong()
  
	data<- data.frame(data, "x"= utm_latlon$x [match (substring(data$UTM,4), utm_latlon$utm)], 
	                  "y"= utm_latlon$y [match (substring(data$UTM,4), utm_latlon$utm)])

	return(data)
}

# merge two argument list. first argument lists overwrite seccond (default)
.avisMergeArgumentList<-function(args, defaultArgs)
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
.avisCreateCurlHandler <- function() {
  # Curl handle for the requests to avis
  
  # if(is.null(.ravis_curl_handler)){
    message("INFO: initializing curl handler for connecting to avis project")

    .ravis_curl_handler <- getCurlHandle()

    curlSetOpt(
      .opts = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")),
      cookiefile = "cookies.txt",
      useragent = 'R-Avis package',
      followlocation = TRUE,
      # verbose = TRUE,
      httpheader = "Referer: http://proyectoavis.com",
      curl = .ravis_curl_handler)

    # TODO: handle debe ser una propiedad de un objeto, no un objeto en entorno global
    assign(".ravis_curl_handler", .ravis_curl_handler, envir = .GlobalEnv)

    # first call to initializate session
    getURL(ravis_url_login, curl = .ravis_curl_handler)
  # }

  return (.ravis_curl_handler)
}

.avisCurlHandler <- function(){
  if(is.null(.ravis_curl_handler)){
    .avisLogin()
  } else {
    
  }
  
  return (.ravis_curl_handler)
}

.avisExtractContributorDataFromRowNode <- function(node)
{
  strnode <- toString.XMLNode(node)   
  usu_id<-regmatches(strnode, regexpr('id_usuario=([0-9]+)', strnode))
  id<-as.integer(regmatches(usu_id, regexpr('[0-9]+', usu_id)))
  
  clean_row_data <- xmlValue(node, encoding="utf-8")
  celdas<-as.list(strsplit(gsub("\n","#", clean_row_data), "#")[[1]][1:8])

  # remove username and name
  userdata<- c(id, celdas[2], as.integer(celdas[c(4:length(celdas))]))

  # userdata<- as.integer(c(id, celdas))
  
  return (userdata)
}

.avisExtractContributorObservationDataFromRowNode <- function(node)
{
  clean_row_data <- xmlValue(node, encoding="utf-8")
  celdas<-as.list(strsplit(gsub("\n","#", clean_row_data), "#")[[1]])
  
  # id de especie
  id<-avisSpeciesId(celdas[2])
  
  # remove species common and scientific name
  celdas<- celdas[3:length(celdas)]
  
  obsdata<- as.integer(c(id, celdas))
  
  return (obsdata)
}

.avisExtractContributorsSummaryFromServer <- function()
{
  doc<-htmlParse("http://proyectoavis.com/cgi-bin/usuarios.cgi")
  nodes <- getNodeSet(doc, "//table[@class=\"observaciones1\"]/tr[@class=\"celda1\"]")

  df<- NULL
  for (node in nodes) {
    df<- rbind(df, .avisExtractContributorDataFromRowNode(node))
  }

  colnames(df)<- c("UserId", "User","Observations","Species","Provinces","UTMs","Periods")
  # names(df)<- c("id","Usuario","Nombre","Citas","Especies","Provincias","UTMs","Periodos")

  return (df)
}

.avisGetServerEspecies <- function()
{
  message("INFO: fetching species list from proyectoavis.com server")

  rawhtml<- .avisGetURL("http://proyectoavis.com/cgi-bin/bus_orden.cgi")
  id<- grep("id_especie=[0-9]+",rawhtml)
  ids<- str_extract_all (rawhtml, "id_especie=[0-9]+")
  id_specie<- as.numeric (substring(unlist (ids [c(id)]), 12))
  name<- grep("<i>.*?</i>", rawhtml)
  names<- str_extract_all (rawhtml, "<i>.*?</i>")
  names_specie<- substring (unlist (names[c(name)]),4)
  names_species<- .avisNormalizeSpeciesName(substr(names_specie, 1, nchar(names_specie)-4))
  names(id_specie) <- names_species

  return (id_specie)
}

.avisGetURL <- function(url, nologin = FALSE) {
  if (nologin == TRUE){
    # new curl handle
    curl_handler<- getCurlHandle()
  } else {
    curl_handler<- .avisCurlHandler()
  }

  return (getURL(url, curl = curl_handler))
}

.avisLogin <- function() {
  return (.avisUserLogin())
}

.avisLoginUser <- function (avis_user, avis_pass) {
  # log user in remote server

  params<- list( usu=avis_user, password=avis_pass, control_login='1' )

  html = postForm(ravis_url_login, 
    .params = params, 
    curl = .avisCreateCurlHandler(), 
    style="POST")

  status<- .parse.avisLoginStatusFromHTML(html)[1]

  if(status == .ravis_session_started["NO_COOKIES"]){
    stop("There is no cookie support in the request. Unable to initializate session")
  } else if(status == .ravis_session_started["BAD_CREDENTIALS"]) {
    stop(paste("Wrong username and/or password for user: ", avis_user))
  }

  return (status == .ravis_session_started["OK"])
}

.avisMergeArgumentList <- function(args, defaultArgs)
{
	for (argName in names(defaultArgs)) {
		if(!is.element(argName, names(args))){
			args[argName] <- defaultArgs[argName]
		}
	}

	return (args)
}

.avisNormalizeSpeciesName <- function(raw)
{
  return (tolower(raw))
}

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
  
	utm_latlon<-.getUTMLatlong()
  
	data<- data.frame(data, "x"= utm_latlon$x [match (substring(data$UTM,4), utm_latlon$utm)], 
	                  "y"= utm_latlon$y [match (substring(data$UTM,4), utm_latlon$utm)])

	return(data)
}

.avisReadCanariasImg <- function()
{
  if(is.null(ravis_img_canarias)){
    ravis_img_canarias<-brick ("canarias.tif")
    assign("ravis_img_canarias", ravis_img_canarias, envir = .GlobalEnv)
  }
  return (ravis_img_canarias)
}

.avisReadPeninsulaImg <- function()
{
  if(is.null(ravis_img_ipeninsula)){
    ravis_img_ipeninsula<-brick ("PI.tif")
    assign("ravis_img_ipeninsula", ravis_img_ipeninsula, envir = .GlobalEnv)
  }
  return (ravis_img_ipeninsula)
}

.avisReadShapeSpain <- function()
{
  # TODO: package private property... easier way to cache stuff?
  if(is.null(ravis_shape_spain)){
    ravis_shape_spain<-readShapePoly ("ESP_adm2.shp")
    assign("ravis_shape_spain", ravis_shape_spain, envir = .GlobalEnv)
  }
  return (ravis_shape_spain)  
}

.avisRenderMapAdmin <- function(obs, label)
{
  shapeSpain<-.avisReadShapeSpain()

  plot (shapeSpain, border="grey75", ylim=c(34,44), xlim=c(-10,5))
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
  text(-9.5, 34.2, label,  font=3, cex=2, adj=c(0,0))
  plot (shapeSpain, border="grey75", ylim=c(27.5, 29.5), xlim=c(-18.5,-13.5))
  rect(-18.5, 21, -11, 30, density = NULL, angle = 45,
   col = NA, border = "grey40", lwd=2)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
}

.avisRenderMapPhysical <- function(obs, label)
{
  peninsulaImg<-.avisReadPeninsulaImg()
  canariasImg<-.avisReadCanariasImg()

  plotRGB (peninsulaImg)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
  text(-9.5, 34.2, label,  font=3, cex=2, adj=c(0,0))
  plotRGB (canariasImg)
  points(obs$x, obs$y, col=alpha ("red", 0.5), pch=19, cex=1.2)
}

.avisTranslateArgsToRawArgs <- function(args)
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

.avisUserLogin <- function() {
  return (.avisLoginUser("ravis-user", "ravis-pass7592Hz%"))
}

.parse.avisLoginStatusFromHTML <- function(html) {
  # Search an HTML text after login to find out the result of the login
  
  html <- tolower(html)

  status <- NULL
  
  if(.textHasString(html, "usuario o clave incorrecta")){
    status <- .ravis_session_started["BAD_CREDENTIALS"]
  }

  if(.textHasString(html, "navegador no acepta cookies")){
    status <- .ravis_session_started["NO_COOKIES"]
  }

  if(.textHasString(html, "bienvenido")){
    status <- .ravis_session_started["OK"]
  }

  if(is.null(status)){
    stop("Couldn´t find out the current login status")
  }

  return (as.integer(status[[1]]))
}

.textHasString <- function(text, string) {
  # Checks weather a text contains a string, returning logical
  
  res <- grep(string, text)

  if(1 == length(res) && 1 == res[1]){
    return (TRUE)
  }

  return (FALSE)
}

.getUTMLatlong <- function(){
  if(is.null(ravisUTMLatLong)){
    ravisUTMLatLong<- read.table ("utm_latlon.csv", sep=",", header=T)
    assign("ravisUTMLatLong", ravisUTMLatLong, envir = .GlobalEnv)
  }
  
  return (ravisUTMLatLong)
}

.ravis_curl_handler <- NULL
.ravis_raw_search_default_params <- structure(list(formato_consulta = "observaciones", tipo_consulta = "", 
    id_observacion = "", id_periodo = "", id_especie = "", orden = "", 
    criterio = "id_observacion", familia = "", edad = "", sexo = "", 
    usu = "", id_ca = "", id_provincia = "", dia_ini = "", mes_ini = "", 
    ano_ini = "", dia_fin = "", mes_fin = "", ano_fin = "", mes = "", 
    ano = "", plazo = "", hora_ini = "", minuto_ini = "", hora_fin = "", 
    minuto_fin = "", reproduccion = "", habitat = "", codigo_habitat = "", 
    gr = "", cf = "", utm_10 = "", utm_1 = "", menu = "", tipo_grafica = "comparadas", 
    filtro_mes = "", filtro_ano = "", filtro_id_especie = "", 
    filtro_estacion = "", cobertura = "", mostrar_capa = "", 
    capa = "", formato_consulta = "tabla", tipo_consulta = "", 
    control = 1, excel = 1), .Names = c("formato_consulta", "tipo_consulta", 
"id_observacion", "id_periodo", "id_especie", "orden", "criterio", 
"familia", "edad", "sexo", "usu", "id_ca", "id_provincia", "dia_ini", 
"mes_ini", "ano_ini", "dia_fin", "mes_fin", "ano_fin", "mes", 
"ano", "plazo", "hora_ini", "minuto_ini", "hora_fin", "minuto_fin", 
"reproduccion", "habitat", "codigo_habitat", "gr", "cf", "utm_10", 
"utm_1", "menu", "tipo_grafica", "filtro_mes", "filtro_ano", 
"filtro_id_especie", "filtro_estacion", "cobertura", "mostrar_capa", 
"capa", "formato_consulta", "tipo_consulta", "control", "excel"
))

.ravis_translated_params_map <- structure(list(id_species = "id_especie", family = "familia", 
    order = "orden", age = "edad", sex = "sexo", breeding = "reproduccion", 
    habitat = "habitat", month = "mes", year = "ano"), .Names = c("id_species", 
"family", "order", "age", "sex", "breeding", "habitat", "month", 
"year"))

.ravis_search_url_base <- "http://proyectoavis.com/cgi-bin/bus_avanzada.cgi"

.ravis_session_started <- structure(list(OK = 1, NO_COOKIES = 2, BAD_CREDENTIALS = 3), .Names = c("OK", 
"NO_COOKIES", "BAD_CREDENTIALS"))

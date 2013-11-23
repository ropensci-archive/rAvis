# starts session on avis server

.ravis_session_started<- list( OK = 1, NO_COOKIES = 2, BAD_CREDENTIALS = 3 )

# handler for requests to server
.ravis_curl_handler <- NULL

ravis_url_login <- "http://proyectoavis.com/cgi-bin/login.cgi"

.avisCurlHandler <- function(){
  if(is.null(.ravis_curl_handler)){
    .avisLogin()
  } else {
    
  }
  
  return (.ravis_curl_handler)
}

.avisLogin <- function() {
  return (.avisUserLogin())
}

.avisUserLogin <- function() {
  return (.avisLoginUser("ravis-user", "ravis-pass7592Hz%"))
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

# new curl handler
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

.parse.avisLoginStatusFromHTML<- function(html) {
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
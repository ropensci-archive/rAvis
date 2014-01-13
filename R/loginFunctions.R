# starts session on avis server

.ravis_session_started<- list( OK = 1, NO_COOKIES = 2, BAD_CREDENTIALS = 3 )

.ravis_url_login <- "http://proyectoavis.com/cgi-bin/login.cgi"

.avisGetURL <- function(url, nologin = FALSE) {
  if (nologin == TRUE){
    # new curl handle
    curl_handler<- getCurlHandle()
  } else {
    curl_handler<- .avisCurlHandler()
  }

  return (getURL(url, curl = curl_handler))
}

.avisCurlHandler <- function(){

  if(!.avisCacheHas(".ravis_curl_handler")){
    .avisLogin()
  }

  return (.avisCacheGet(".ravis_curl_handler"))
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

  html = postForm(.ravis_url_login, 
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

# Create new Curl handle for the requests to avis
.avisCreateCurlHandler <- function() {
  
  .avisVerboseMessage("INFO: initializing curl handler for connecting to avis project")

  .handler <- getCurlHandle()

  curlSetOpt(
    .opts = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")),
      cookiefile = tempfile("r_avis_cookie.txt"),
      useragent = 'R-Avis package',
      followlocation = TRUE,
      httpheader = "Referer: http://proyectoavis.com",
      curl = .handler)

  .avisCacheSet(".ravis_curl_handler", .handler)

  # first call to initializate session
  getURL(.ravis_url_login, curl = .handler)

  return (.handler)
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
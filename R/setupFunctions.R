#'
#' Sets up serveral settings that apply to the behabiour of the library
#'
#' Optional arguments available:
#' - verbose: TRUE / FALSE
#'
avisSetup <- function(...){
	l <- list(...)

	if(is.element('verbose', names(l))){
		.setAvisVerbosity(l[['verbose']])
	}
}

.setAvisVerbosity <- function(v){
	if("logical" != typeof(v)){
		stop("Verbosity must be of 'logical' type")
	}
	.avisCacheSet(".ravis_verbose", v)
}

.isAvisVerbose <- function(){
	.avisCacheReturnOrSetup(".ravis_verbose", function(){ 
		default_verbosity = TRUE
		default_verbosity
	})
}

# Shows message depending on library configuration
.avisVerboseMessage <- function(mens){
	verb = .isAvisVerbose()

	if(verb){
		message(mens)
	}
}
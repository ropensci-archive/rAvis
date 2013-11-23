avisQuerySpecies <-
function (names, args = list()) 
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

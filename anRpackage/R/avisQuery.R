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

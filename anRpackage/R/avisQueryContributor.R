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

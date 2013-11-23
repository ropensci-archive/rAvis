avisQueryContributor <-
function (contributor_ids, args = list()) {
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

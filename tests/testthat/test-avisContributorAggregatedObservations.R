# test for avisContributorAggregatedObservations in rAvis

context ("avisContributorAggregatedObservations")

response<- avisContributorAggregatedObservations (370) 

test_that("avisContributorAggregatedObservations output is a dataframe",{ 
	expect_true(is.data.frame (response))
})

test_that("avisContributorAggregatedObservations output has expected names",{ 
    expect_equal (names (response), 
    	c("SpeciesId", "Observations", "Number", "UTM.10x10", "Birdwatchers"))        
})

# test for avisContributorAggregatedObservations in rAvis

context ("avisContributorAggregatedObservations")

test_that("avisContributorAggregatedObservations output is a dataframe and 
            names are the expected ones",{ 
            response<- avisContributorAggregatedObservations (370) 
            expect_true(is.data.frame (response))
            expect_match (names (response), 
                          c("SpeciesId", "Observations", "Number", 
                            "UTM.10x10", "Birdwatchers"))        
          })


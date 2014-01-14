# test for avisContributorsSummary in rAvis
# (numbers are not possible to test because the number of observations 
# of some contributors increase every year).

context ("avisContributorsSummary")

test_that("avisContributorsSummary output is a matrix and 
          colnames are the expected ones",{ 
  response<- avisContributorsSummary()           
  expect_true(is.matrix (response))
  expect_match (colnames (response), 
                c("UserId", "Observations",
                 "Species", "Provinces", "UTMs","Periods"))        
})


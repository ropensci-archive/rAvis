# test for avisSpeciesSummary in rAvis

context ("avisSpeciesSummary")

test_that("avisSpeciesSummary output is a dataframe",{ 
  response<- avisSpeciesSummary()
  expect_is(response, 'data.frame')
})

test_that("avisSpeciesSummary output first colname is Observations",{ 
  response<- avisSpeciesSummary()
  expect_match (names(response)[1], "Observations")
})
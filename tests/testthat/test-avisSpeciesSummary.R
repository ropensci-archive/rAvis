# test for avisSpeciesSummary in rAvis

context ("avisSpeciesSummary")

test_that("avisSpeciesSummary output is a dataframe and the first colname is Observations",{ 
  response<- avisSpeciesSummary()
  expect_true(is.data.frame (response))
  expect_match (names(response [1], "Observations")
})


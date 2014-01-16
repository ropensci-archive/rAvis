# test for avisQueryContributor in rAvis

context ("avisQueryContributor")

test_that("avisQueryContributor returns correct format and throws error if missing contributor",{ 

  # get some valid contributor id
  cs <- avisContributorsSummary()
  id <- cs[[1]]

  expect_is(avisQueryContributor(id), 'data.frame')        
})
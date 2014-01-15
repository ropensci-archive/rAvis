# test for avisMap in rAvis
context ("avisMap")

test_that("avisMap",{ 
  expect_error(avisMap(avisQuerySpecies ("Pica pic")), )        
})


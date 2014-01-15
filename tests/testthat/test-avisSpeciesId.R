# tests for avisSpeciesId in rAvis

context("avisSpeciesId")

test_that("The id of Pica pica in Proyecto AVIS is an integer and 480, 
          and wrong species name throws an error",{ 
  nameraw<- "Pica pica"
  expect_is(avisSpeciesId (nameraw), "integer")
  expect_identical (avisSpeciesId (nameraw), as.integer (480))
  expect_that (avisSpeciesId ("Pica pic"), throws_error())
  })
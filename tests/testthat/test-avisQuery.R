# test for avisQuerySpecies in rAvis

context ("avisQuery")

test_that("test if avisQuery has the correct structure",{ 
              response<- avisQuery(species="Pica pica")
              expect_true(is.data.frame (response))
              expect_match (names (response)[1], "Id..Obs.")
              expect_match (response$Especie, "Pica pica")
            })


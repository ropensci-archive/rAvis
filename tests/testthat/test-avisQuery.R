# test for avisQuerySpecies in rAvis

context ("avisQuery")

test_that("test if avisQuery has the correct structure",{ 
    response<- avisQuery(species="Pica pica")
    expect_true(is.data.frame (response), info = "is dataframe")
    expect_match (names (response)[1], "Id..Obs.", info = "names are ok")
    expect_equal(as.character(response$Especie[1]), "Pica pica", info = "column species ok")
})
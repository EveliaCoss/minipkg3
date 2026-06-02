test_that("what_time() works", {
  expect_type(what_time(), "character")
  expect_snapshot(error = TRUE, what_time(language = "bla"))
})

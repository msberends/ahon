
test_that("get_date() works", {
  expect_identical(get_date("31-12-2020"), as.Date("2020-12-31"))
  expect_error(get_date(123))
})

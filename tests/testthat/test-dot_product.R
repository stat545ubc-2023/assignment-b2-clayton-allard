test_that("Works on valid inputs", {
  expect_equal(10, dot_product(c(4, 6), c(1, 1)))
  expect_equal(0, dot_product(c(0, 0), c(1, 1)))
  expect_equal(2, dot_product(c(1, -1, -3), c(3, -2, 1)))
  expect_equal(.02, dot_product(c(.1, -.1, -.3), c(.3, -.2, .1)))
})

test_that("Works on scalar values", {
  expect_equal(3, dot_product(c(1), c(3)))
  expect_equal(3, dot_product(1, 3))
})

test_that("Non-numeric produces error", {
  expect_error(dot_product(c('1'), c(3)))
  expect_error(dot_product(c(1, 4), c(3, '0')))
})

test_that("Length Mismatch", {
  expect_error(dot_product(c(1), c(3, 4)))
  expect_error(dot_product(c(1, 4, -2), c(1, 0)))
})

test_that("Test on NA values", {
  expect_error(dot_product(NA, c(3, 4)))
  expect_error(dot_product(c(1, 4), c(1, NA)))
})

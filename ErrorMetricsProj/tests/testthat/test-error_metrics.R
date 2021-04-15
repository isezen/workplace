
set.seed(1)
x <- round(runif(5) * 10, 1)
y <- round(runif(5) * 10, 1)

test_that("Squared Error", {
  expect_equal(se(x, y), c(39.69, 32.49, 0.81, 7.84, 1.96))
})

test_that("Mean Squared Error", {
  expect_equal(mse(x, y), 16.558)
})

test_that("Root Mean Squared Error", {
  expect_equal(rmse(x, y), 4.0691522)
})

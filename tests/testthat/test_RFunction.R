library('move2')

test_data <- test_data("input3_move2.rds") #file must be move2!

test_that("happy path", {
  actual <- rFunction(data = test_data, time = TRUE, weekdays = TRUE, 
                      dd = TRUE, mm = TRUE, yyyy = TRUE)
  expect_equal(ncol(actual), (ncol(test_data)+6))
})

test_that("happy path1", {
  actual <- rFunction(data = test_data, time = TRUE, weekdays = TRUE, 
                      dd = TRUE, mm = FALSE, yyyy = TRUE)
  expect_equal(ncol(actual), (ncol(test_data)+5))
}) 

test_that("happy path2", {
  actual <- rFunction(data = test_data, time = FALSE, weekdays = FALSE, 
                      dd = FALSE, mm = FALSE, yyyy = FALSE)
  expect_equal(ncol(actual), (ncol(test_data)+1))
}) 

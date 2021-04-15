
source("ErrorMetrics.R")

set.seed(1)
x <- round(runif(5) * 10, 1) # observed
y <- round(runif(5) * 10, 1) # predicted

print(sprintf("Mean Absolute Error = %.02f", mae(x, y)))
print(sprintf("Mean Absolute Percentage Error = %.02f", mape(x, y)))
print(sprintf("Median Absolute Error = %.02f", mdae(x, y)))

print(sprintf("Sum of Squared Error = %.02f", sse(x, y)))
print(sprintf("Mean Squared Error = %.02f", mse(x, y)))
print(sprintf("Root Mean Squared Error = %.02f", rmse(x, y)))

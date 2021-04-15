
# Calculate elementwise squared difference between two numeric vectors
se <- function(x, y) (x - y)^2

# Calculate the average squared difference between two numeric vectors
mse <- function(x, y, ...) {
  mean(se(x, y), ...)
}

# Calculate the root mean squared error between two numeric vectors
rmse <- function(x, y, ...) {
  sqrt(mse(x, y, ...))
}

# Calculate sum of the squared difference between two numeric vectors
sse <- function(x, y) sum(se(x, y))

# Calculate relative squared error between two numeric vector
rse <- function(x, y) {
  sse(x, y)/sse(x, mean(y))
}

# Calculate the root relative squared arror between two numeric vectors
rrse <- function(x, y) {
  sqrt(rse(x, y))
}

# Calculate abosulte difference between two numeric vector
ae <- function(x ,y) abs(x - y)

# Calculate the average absolute difference between two numeric vectors
mae <- function(x, y, ...) {
  mean(ae(x, y), ...)
}

# Calculate the median absolute difference between two numeric vectors
mdae <- function(x, y, ...) {
  stats::median(ae(x, y), ...)
}

# Calculate elementwise absoulte percent difference between two numeric vectors
ape <- function(x ,y) ae(x, y)/abs(x)

# Calculate the average absolute percent difference between two numeric vectors
mape <- function(x, y, ...) {
  mean(ape(x, y), ...)
}

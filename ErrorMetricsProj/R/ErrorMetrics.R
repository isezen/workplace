#' Error Metrics
#'
#' The functions calculate error metrics between two numeric vectors.
#'
#' \code{se}: (Squared Error) elementwise squared difference.
#'
#' @param x Actual/observed values
#' @param y Predicted values
#' @param ... Other arguments passed to inner mean and median functions.
#' @rdname error_metrics
#' @export
se <- function(x, y) (x - y)^2

#' @description \code{mse}: Mean squared difference.
#' @rdname error_metrics
#' @export
mse <- function(x, y, ...) {
  mean(se(x, y), ...)
}

#' @description \code{rmse}: Root Mean Squared Difference.
#' @rdname error_metrics
#' @export
rmse <- function(x, y, ...) {
  sqrt(mse(x, y, ...))
}

#' @description \code{sse}: Sum of the squared difference.
#' @rdname error_metrics
#' @export
sse <- function(x, y) sum(se(x, y))

#' @description \code{rse}: Relative squared error.
#' @rdname error_metrics
#' @export
rse <- function(x, y) {
  sse(x, y)/sse(x, mean(y))
}

#' @description \code{rrse} Root relative squared error.
#' @rdname error_metrics
#' @export
rrse <- function(x, y) {
  sqrt(rse(x, y))
}

#' @description \code{ae}: Absolute difference.
#' @rdname error_metrics
#' @export
ae <- function(x ,y) abs(x - y)

#' @description \code{ae}: Mean Absolute difference.
#' @rdname error_metrics
#' @export
mae <- function(x, y, ...) {
  mean(ae(x, y), ...)
}

#' @description \code{ae}: Median Absolute difference.
#' @rdname error_metrics
#' @export
mdae <- function(x, y, ...) {
  stats::median(ae(x, y), ...)
}

#' @description \code{ape}: Elementwise absoulte percent difference.
#' @rdname error_metrics
#' @export
ape <- function(x ,y) ae(x, y)/abs(x)

#' @description \code{ape}: Average elementwise absoulte percent difference.
#' @rdname error_metrics
#' @export
mape <- function(x, y, ...) {
  mean(ape(x, y), ...)
}

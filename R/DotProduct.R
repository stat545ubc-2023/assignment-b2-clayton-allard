#' @title Computes the dot product of two vectors x and y
#' 
#' @description Throws an error if either vector are non-numeric or contain NA, or if their lengths mismatch. The naming convention of x and y are traditional to represent vectors
#' 
#' @param x A numeric vector. 
#' @param y A numeric vector.
#' 
#' @return The result of the dot product operation.
#' 
#' @examples 
#' dot_product(c(1, -1), c(2, -1))
#' dot_product(c(1, -1, 0), c(2, -1, 1))
#'
#' @export
dot_product <- function(x, y){
  # throw error of x or y are not numeric
  stopifnot(is.numeric(x) && is.numeric(y))
  # throw error if x and y do not have matching dimensions.
  stopifnot(length(x) == length(y))
  # throw error if either x or y is NA.
  stopifnot(!(anyNA(x) || anyNA(y)))
  
  sum(x*y)
}
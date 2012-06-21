{
  data.length <- 10
  data.ncol <- 2
  
}

library(MISQPlus)
misq <- new("MISQ", c(-1,1))

x1 <- rnorm(data.length)
x2 <- matrix(rnorm(data.length * data.ncol), data.length,data.ncol)

# test if the function check the input length
tryCatch(
  {
    filter(1, misq)
    warning("No exception is thrown")
  }, error = function(e) e, warning = function(w) {
    stop("test")
  } )

# test the result
filter(x1, misq)

# test the result of matrix
filter(x2, misq)
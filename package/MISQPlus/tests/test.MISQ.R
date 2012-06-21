{
  data.length <- 10
  data.ncol <- 2
  
}

library(MISQPlus)
misq <- new("MISQ", c(-1,1))

x1 <- rep(1, 10)
x2 <- matrix(c(rep(1,10), 1:10), data.length,data.ncol)

# test if the function check the input length
tryCatch(
  {
    filter(1, misq)
    warning("No exception is thrown")
  }, error = function(e) e, warning = function(w) {
    stop(w)
  } )

# test the result
retval <- filter(x1, misq)
expected.retval <- rep(0, 9)
if (sum(abs(retval)))
  stop("Invalid retval")

# test the result of matrix
retval <- filter(x2, misq)
if (sum(abs(retval[,1])))
  stop("Invalid retval")
if (sum(abs(retval[,2] - 1)))
  stop("Invalid retval")

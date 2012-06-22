setClass("MISQ", representation=representation(phi = "numeric") )

# MISQ_method <- function(name) {
#   paste("MISQ", name, sep="__")
# }

setMethod("initialize", "MISQ",definition=function(.Object, phi) {
			  if (length(phi)) 
              .Object@phi = phi
              return(.Object)
          }	)

setMethod("filter",
          signature(x = "numeric", filter = "MISQ"),
          function (x, filter) 
          {
              .Call("MISQPlusNumericFilter", x, filter@phi)
          }
)

setMethod("filter",
          signature(x = "matrix", filter = "MISQ"),
          function (x, filter) 
          {
              .Call("MISQPlusNumericMatrixFilter", x, filter@phi)
          }
)

setMethod("dist",
          signature(x = "matrix", method = "MISQ"),
          function (x, method, diag = FALSE, upper = FALSE) 
          {
              n <- nrow(x)
			  phi <- method@phi;
			  m <- length(phi) - 1
			  Phi <- matrix(0, n - m, n)
			  for (i in 1:(n-m)) {
				  Phi[i,0:m + i] <- phi
			  }
			  Lambda <- t(Phi) %*% Phi
			  diff_x <- .Call("MISQPlusDiffMatrix", x)
			  Phi_e <- Phi %*% x
			  M_2 <- apply(Phi_e^2, 2, sum) / ( (n-m) * sum(phi^2) )
			  M_4 <- apply(Phi_e, 4, function(a) sum(a^2)^2)
			  
          }
)


setClass("MISQ", representation=representation(phi = "numeric") )

# MISQ_method <- function(name) {
#   paste("MISQ", name, sep="__")
# }

setMethod("initialize", "MISQ",definition=function(.Object, phi) {
              .Object@phi = phi
              return(.Object)
          }	)

setMethod("filter",
          signature(x = "numeric", filter = "MISQ"),
          function (x, filter) 
          {
              .Call("NumericFilter", x, filter@phi)
          }
)

setMethod("filter",
          signature(x = "matrix", filter = "MISQ"),
          function (x, filter) 
          {
            
          }
)

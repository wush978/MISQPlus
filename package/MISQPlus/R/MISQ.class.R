setClass("MISQ", representation=representation(filter = "numeric") )

# MISQ_method <- function(name) {
#   paste("MISQ", name, sep="__")
# }

setMethod("initialize", "MISQ",definition=function(.Object, phi) {
              .Object@filter = phi
              return(.Object)
          }	)

setMethod("filter",
          signature(x = "numeric", filter = "MISQ"),
          function (x, filter) 
          {
            
          }
)

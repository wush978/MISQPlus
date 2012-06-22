library(MISQPlus)
source("misq1.params.R")
misq1 <- new("MISQ", phi)
sim.unit <- function(i) {
  S <- cbind(rnorm(data.length), rnorm(data.length) + 1)
  dist(S, misq1)
}
sim.data <- sapply(1:sim.size, sim.unit)
save(sim.data, file="misq1-2.Rdata")
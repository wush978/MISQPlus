library(MISQPlus,quietly=TRUE)
test.normality <- function(sim.dist) {
  qqnorm(sim.dist, main=expression(paste("The Q-Q plot of ", hat(D)[phi](S[1], S[2]))))
  qqline(sim.dist)
  retval <- shapiro.test(sim.dist)
  legend.text <- rep("",2)
  legend.text[1] <- paste("The p-value of Shapiro-Wilk normality test is", round(retval$p.value, 3))
  if (retval$p.value < 0.05) {
    legend.text[2] <- expression(paste("It is significant that the ",hat(D)[phi]," is not normal distributed"))
  } else {
    legend.text[2] <- expression((paste("There is no evidence to say the ",hat(D)[phi]," is not normal distributed")))
  } 
  legend("bottomright", legend.text, box.lty = 1)
}

show.source <- function(source.filename) {
  retval <- readLines(source.filename,warn=FALSE)
  for (i in 1:length(retval)) {
    cat(retval[i])
    cat("\n")
  }  
}

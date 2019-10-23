adverts <- c(5,4,4,6,8)
packets <- c(8,9,19,13,15)

adverts_packets <- data.frame(adverts, packets)

library(tidyverse)
install.packages("Rcmdr")
install.packages("ggm")
install.packages("polycor")
install.packages("Hmisc")

ggplot(adverts_packets, aes(x=adverts, y=packets)) + geom_point()

cor(adverts_packets, use = "complete.obs", method = "pearson")
#I get the p-value 0.146

cor.test(adverts, packets, alternative = "two", method = "pearson", conf.level = 0.95)
#Again I get the p-value 0.146
#I also get the confidence intervals -0.845, 0.911


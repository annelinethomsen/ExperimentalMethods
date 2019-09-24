setwd("/Users/anne-linethomsen/Documents/R/ExperimentalMethods/Chapter 5")
install.packages("car")
install.packages("ggplot2")
install.packages("pastecs")
install.packages("psych")
library(tidyverse)

#I import the data:
festivalData <- read.delim("DownloadFestival.dat", header = TRUE)

#I tell ggplot to use my data with the observations from day1 on the x-axis:
festivalHistogram <- ggplot(festivalData, aes(day1))

#I tell ggplot to visualise the data in a hisotgram:
festivalHistogram + geom_histogram()

#I change the width of the bins and to add labels:
festivalHistogram + geom_histogram() + geom_histogram(binwidth = 0.4) + labs(x = "Hygiene (Day 1 of Festival)", y = "Frequency")

#I now want the gender to be at the x-axis:
festivalBoxplot <- ggplot(festivalData, aes(gender, day1))

#I create a boxplot to see
festivalBoxplot + geom_boxplot() + labs(x = "Gender", y = "Hygiene (Day 1 of Festival)")

#I try to find the outlier:
festivalData<-festivalData[order(festivalData$day1),]
#How do I change my data?

#Importing the new datafile without the outlier:
festivalData2 <- read.delim("DownloadFestival(No Outlier).dat", header = TRUE)

#Informing ggplot about my values:
density <- ggplot(festivalData2, aes(day1))

#Creating a density and adding labels:
density + geom_density() + labs(x = "Hygiene (Day 1 of Festival)", y = "Density Estimate")




#Importing ChickFlick data:
chickFlick <- read.delim("ChickFlick.dat",  header = TRUE)

#Data into ggplot:
bar <- ggplot(chickFlick, aes(film, arousal))

#I had to have the Hmisc package to do the next part, so I installed it:
install.packages("Hmisc")

#I want to make a graph of a summary of my graph, so I do this:
#When you write fun.y=mean you tell ggplot to find the mean, and when you write geom = bar, you tell it how you want the mean to be displayed.
bar + stat_summary(fun.y = mean, geom = "bar", fill = "White", colour = "Black") + 
                     stat_summary(fun.data = mean_cl_normal, geom = "pointrange") + 
                     labs(x = "Film", y = "Mean Arousal")










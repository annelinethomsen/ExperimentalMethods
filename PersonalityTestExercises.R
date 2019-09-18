#Exercise 1
#I tell RStudio to "remember" tidyverse.
library(tidyverse)

#I turn the data into a dataframe
df <- read.csv("NEW_CogSciPersonalityTest2019 (1).csv")

#Exercise 1.1
#The sentence below is an example of how to find filtered data
filtereddata <- filter(df, handedness == 'Right-handed' | handedness == 'Ambidextrous')

#I do the same, just with the shoesize
shoesize_over_39 <- filter(df, df$shoesize >= "39")

#Exercise 1.2
#I'm not sure how to use the function "level"?

#Exercise 1.3
#I start out finding the average
mean(df$breath_hold)

#RStudio gave me that mean = 55,77113
#Now I can find the students able to hold their breath for more than 55,77113 sec
breath_hold_over_average <- filter(df, df$breath_hold > 55,77113)

#Exercise 1.4
balloon_balancing <- filter(df, df$balloon_balance > "13" | df$balloon_balance < "60")

#Exercise 2.1
Best_tongue_twister <- arrange(df, desc(df$tongue_twist))

#Exercise 2.2
Best_Romberg <- arrange(df, desc(df$romberg_open), desc(df$romberg_closed))
#Since 120 sec was the upper limit for the task, I leave out Clemens in this task, and difine that all the student with the score of 120 sec in both tasks are "the best"

#Exercise 2.3
#Not sure I understand the question...

#Exercise 3.1
selecting_multiple <- select(df, df$name, df$gender, df$gender)
#It says that "Position must be between 0 and 1"

#Exercise 3.2
vars = c("name", "shoesize", "touch_floor")
selecting_vectors <- select(df, "name", "gender", "touch_floor")

selecting_example2 <- select(df, "name" : "gender")
#okay so this one chooses all the collumns from "name" to "gender"

selecting_example3 <- select(df, -c("name" : "gender", "native_Danish" : "touch_floor"))
#This one removes all the collumns from "name" to "gender" and all the collumns from "native_Danish" to "touch_floor"

#Exercise 3.3
selecting_everything <- select(df, gender, everything())
#So I told RStudio to put gender as the first collumn, and then all the other collumns afterwards

selecting_everything2 <- select(df, gender, shoesize, everything())
#Here I told RStudio to put gender and shoesize as the first two collumns, and then all the other collumns afterwards

#Exercise 4.1
words_per_sec <- mutate(df, words_per_sec = tongue_twist/60)

#Exercise 4.2
breath_min <- mutate(df, breath_min =
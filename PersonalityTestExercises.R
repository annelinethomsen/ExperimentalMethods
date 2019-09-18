library(tidyverse)
df <- read.csv("NEW_CogSciPersonalityTest2019 (1).csv")

filtereddata <- filter(df, handedness == 'Right-handed' | handedness == 'Ambidextrous')
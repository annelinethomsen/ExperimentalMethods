## Chapter 4 - Discovering Statistics Using R

# I'm using the data from the personalitytest to try all the different functions introduced throughout the chapter


```reading
df <- read_csv("NEW_CogSciPersonalityTest2019 (1).csv")
```

# I get tidyverse into my library


```r
library(tidyverse)
```

```
## ── Attaching packages ────────────────────────────────── tidyverse 1.2.1 ──
```

```
## ✔ ggplot2 3.2.1     ✔ purrr   0.3.2
## ✔ tibble  2.1.3     ✔ dplyr   0.8.3
## ✔ tidyr   1.0.0     ✔ stringr 1.4.0
## ✔ readr   1.3.1     ✔ forcats 0.4.0
```

```
## ── Conflicts ───────────────────────────────────── tidyverse_conflicts() ──
## ✖ dplyr::filter() masks stats::filter()
## ✖ dplyr::lag()    masks stats::lag()
```

#I tell ggplot which dataframe to use:


```r
ggplot(df)
```

```
## Error: You're passing a function as global data.
## Have you misspelled the `data` argument in `ggplot()`
```

# I group something haha


```r
summary_gender_mean_showsize <- df %>%
  group_by(gender) %>%
summarize(mean(shoesize))
```

```
## Error in UseMethod("group_by_"): no applicable method for 'group_by_' applied to an object of class "function"
```

# I tell ggplot to make a graph with gender on the x-axis and the mean showsize on the y-axis)


```r
ggplot(df, aes(x=gender, y=shoesize)) + geom_bar(stat='summary', fun.y = mean)
```

```
## Error: You're passing a function as global data.
## Have you misspelled the `data` argument in `ggplot()`
```

### Gender and Balloon Balance

# I want to make a histogram that shows the mean of time balancing a balloon according to sex 


```r
ggplot(df, aes(x=gender, y=balloon_balance)) + geom_bar(stat='summary', fun.y = mean)
```

```
## Error: You're passing a function as global data.
## Have you misspelled the `data` argument in `ggplot()`
```

# I just did this to check if the mean values were correct:


```r
gender_balloon_balance <- df %>%
  group_by(gender) %>%
  summarise(mean(balloon_balance))
```

```
## Error in UseMethod("group_by_"): no applicable method for 'group_by_' applied to an object of class "function"
```

# Fortunately it was correct

# Now I want the bars to have different colours:


```r
ggplot(df, aes(x=gender, y=balloon_balance, fill = gender))+
  geom_bar(stat='summary', fun.y = mean, width = 0.5)+
  labs(x = "Gender", y = "Balloon time")+
  theme_minimal()
```

```
## Error: You're passing a function as global data.
## Have you misspelled the `data` argument in `ggplot()`
```

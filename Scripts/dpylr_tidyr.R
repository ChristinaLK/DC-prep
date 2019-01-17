# 10:45 - 12:00

# Going to build on our previous sections
# Now have some sense of how R thinks about data
# As objects, of varying types and complexity
# The main object we care about for data analysis is a dataframe
# we can return to our main goal, which is analyzing data in 
# a flexible and reproducible way
#
# See the tools that R has for dealing with dataframes
# Some basics, but have access to additional tools in packages
# (challenges of working in base R)
# adding powertools, extra functionality, deliberately emulate sql
# whole suite of packages, "tidyverse", use 3-4 today

# restart environment? 

library(tidyverse)
## using dplyr - manipulations

datafile <- "portal_data_joined.csv"
surveys <- read_csv(datafile)
str(surveys)

# select and filter
select(surveys, plot_id, species_id, weight)
filter(surveys, year == 1995)
filter(surveys, !is.na(weight))

# using pipes
surveys %>% select(plot_id, species_id, weight)
surveys %>% filter(year == 1995)

# talk about different conditions
# these are our SELECT and WHERE from yesterday!  :D
# how do we combine them?  Three options: 

survey_subset <- filter(surveys, year == 1995)
select(survey_subset, plot_id, species_id, weight)

select(filter(surveys, year == 1995), plot_id, species_id, weight)

surveys %>%
  filter(year == 1995) %>%
  select(plot_id, species_id, weight)

## exercise (3 min)

# add columns
mutate(surveys, weight_kg = weight/1000)

surveys %>% 
  mutate(weight_kg = weight/1000)
surveys %>% 
  mutate(weight_kg = weight/1000, fullname = paste(genus, species))

## exercise (10 min)

## using dplyr - aggregation

surveys %>% 
  filter(!is.na(weight)) %>% # leave this out accidentally
  group_by(sex) %>%
  summarize(mean_weight = mean(weight))

surveys %>% 
  filter(!is.na(weight)) %>% # leave this out accidentally
  group_by(sex, species_id) %>%
  summarize(mean_weight = mean(weight))

surveys %>% 
  filter(!is.na(weight)) %>% # leave this out accidentally
  group_by(sex, species_id) %>%
  summarize(mean_weight = mean(weight), min_weight = min(weight))

surveys %>%
  group_by(year) %>%
  summarize(counts = n())
surveys %>% count(year)

## Exercises (?) depends on time

## using tidyr - reshaping

surveys_gw <- surveys %>%
  filter(!is.na(weight)) %>%
  group_by(genus, plot_id) %>%
  summarize(mean_weight = mean(weight))
surveys_gw

# show image

surveys_gw %>%
  spread(genus, mean_weight)
surveys_gw %>%
  spread(plot_id, mean_weight)

survey_wide <- surveys_gw %>%
  spread(genus, mean_weight)
str(survey_wide)
survey_wide %>%
  gather(genus, mean_weight, -plot_id)

# surveys %>%
#   select(year, plot_type, weight, hindfoot_length) %>%
#   filter(!is.na(weight) & !is.na(hindfoot_length)) %>%
#   group_by(year, plot_type) %>%
#   summarize(avg_weight = mean(weight), avg_hfl = mean(hindfoot_length)) %>%
#   gather(measurement, value, -year, -plot_type) %>%
#   spread(measurement, value)

surveys %>% 
  gather(measurement, value, hindfoot_length, weight) %>% 
  filter(!is.na(value)) %>% 
  group_by(year, plot_type, measurement) %>% 
  summarize(avg_measure = mean(value)) %>%
  spread(measurement, avg_measure)

cats_and_dogs <- data.frame(status = c('undergrad','grad','postdoc','faculty','staff/other'),
           dog = c(5,2,1,6,7),
           cat = c(0,5,2,4,1),
           other = c(0,0,10,3,2))

cats_and_dogs_long <- cats_and_dogs %>% gather(animals, n, -status)
cats_and_dogs_long %>% spread(animals, n)

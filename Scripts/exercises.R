Exercises

#### intro

paste()
# 1. What does paste() do?
# 2. What could you use it for?  Can you create an example for this use case?
# 3. How would you "paste" together words so that there are no spaces in the output? 
# Specifically, how could you use paste() to create a string like this:
# "/Users/alice/Desktop/DataCarpentry/data/data_clean.csv"
# if you use getwd() for part of the sequence of folders?  

### dataframes

dim(surveys)
nrow(surveys)
ncol(surveys)
head(surveys)
tail(surveys)
names(surveys)
colnames(surveys)
rownames(surveys)
str(surveys)
summary(surveys)

#### dplyr

# Using pipes, subset the surveys data to include animals 
# collected before 1995 and retain only the columns 
# year, sex, and weight.

# Create a new data frame from the surveys data that meets 
# the following criteria: contains only the  species_id 
# column and a new column called hindfoot_half containing 
# values that are half the  hindfoot_length values. In this 
# hindfoot_half column, there are no NAs and all values are 
# less than 30.
# Hint: think about how the commands should be ordered to produce this data frame!

# Required: the mean weight of each genus in each plot over 
# the entire survey period.

# 1. How many animals were caught in each plot_type surveyed?
# 2. Use group_by() and summarize() to find the mean, min, and 
#    max hindfoot length for each species (using species_id). Also 
#    add the number of observations (hint: see ?n).
# 3. What was the heaviest animal measured in each year? Return the 
#    columns year, genus, species_id, and weight.

##### tidyr


cats_and_dogs <- data.frame(status = c('undergrad','grad','postdoc','faculty','staff/other'),
                            dog = c(5,2,1,6,7),
                            cat = c(0,5,2,4,1),
                            other = c(0,0,10,3,2))

# First, use gather() to create a dataset where we have a key column 
# called measurement and a value column that takes on the value of 
# either hindfoot_length or weight. Hint: You’ll need to specify which 
# columns are being gathered.
# 
# With this new data set, calculate the average of each measurement in each 
# year for each different  plot_type. Then spread() them into a data set with 
# a column for hindfoot_length and weight. Hint: You only need to specify the 
# key and value columns for spread()
# 10:05 - 10:30

# going to use data frames
# still use a function to create the data

data_source <- paste(getwd(), "..", "DataCarpentry/Clean/combined.csv", sep = "/")
surveys <- read.csv(data_source)

# you can see this on the right!!

class(surveys)
str(surveys)

# technically a list of vectors
# show diagram
# Give list of things to explore

#subsetting

surveys[1]
surveys[1,1]
surveys['species_id']

# factors

sex <- surveys$sex
sex
sex_labels <- levels(sex)
levels(sex)
sex_labels <- c("undetermined", "female", "male")
levels(sex) <- sex_labels

as.character(sex)

surveys <- read.csv(data_source, stringsAsFactors = FALSE)

# dates



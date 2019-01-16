
data_source <- paste(getwd(), "..", "DataCarpentry/Clean/combined.csv", sep = "/")
surveys <- read.csv(data_source)

class(surveys)
str(surveys)

# show diagram
# Give list of things to explore

surveys[1]
surveys[1,1]
surveys['species_id']

plot_type <- surveys$plot_type
class(sex)
levels(plot_type)
plot_type

sex
sex_categories <- levels(sex)
levels(sex)
sex_categories <- c("undetermined", "female", "male")
levels(sex) <- sex_categories

as.character(sex)


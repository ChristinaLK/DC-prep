seq(5)

# What is my working directory (project folder)?
getwd()

# use CTRL+ENTER to run lines
# See Code menu for more options

## 9:20 - 9:50

# saving values to "objects"
weight_kg <- 55
weight_kg # this prints

weight_kg * 2.2 # why not appear on top right
weight_lb <- weight_kg * 2.2

weight_kg <- 100

# using functions
sqrt(55)
sqrt(weight_kg)

weight_kg_sqrt <- sqrt(weight_kg) # talk about L to R
final_weight_kg <- round(weight_kg_sqrt)

final_weight_kg <- round(sqrt(weight_kg))
final_weight_kg

# for help: help pane or use
?round

## arguments, style, pre-existing functions, use help

### exercise (paste0)

project_folder <- getwd()
this_script <- paste(project_folder, "/Code/Basics.R", sep="")
this_script <- paste0(project_folder, "/Code/Basics.R")
this_script <- paste(project_folder, "Code", "Basics.R", sep="/")
this_script

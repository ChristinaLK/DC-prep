seq(5)

# What is my working directory?
getwd()

# use CTRL+ENTER to run lines
# See Code menu for more options

# saving values to "objects"
weight_kg <- 55
weight_lb <- weight_kg * 2.2
weight_lb

# using functions
sqrt(55)
weight_kg_sqrt <- sqrt(weight_kg)
round(weight_kg_sqrt)
weight_kg_final <- round(weight_kg_sqrt, digits = 2)


paste()
# 1. What does paste() do?
# 2. What could you use it for?  Can you create an example for this use case?
# 3. How would you "paste" together words so that there are no spaces in the output? 

project_folder <- getwd()
this_script <- paste(project_folder, "/Scripts/Basics.R", sep="")
this_script <- paste0(project_folder, "/Scripts/Basics.R")
this_script <- paste(project_folder, "Scripts/Basics.R", sep="/")

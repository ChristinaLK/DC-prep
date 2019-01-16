seq(5)

# What is my working directory (project folder)?
getwd()

# use CTRL+ENTER to run lines
# See Code menu for more options

# saving values to "objects"
weight_kg <- 55
weight_kg

weight_lb <- weight_kg * 2.2

# using functions
sqrt(55)
sqrt(weight_kg)

weight_kg_sqrt <- sqrt(weight_kg)
final_weight_kg <- round(weight_kg_sqrt)

final_weight_kg <- round(sqrt(weight_kg))
final_weight_kg

# for help: help pane or use
?round

paste()
# 1. What does paste() do?
# 2. What could you use it for?  Can you create an example for this use case?
# 3. How would you "paste" together words so that there are no spaces in the output? 

project_folder <- getwd()
this_script <- paste(project_folder, "/Scripts/Basics.R", sep="")
this_script <- paste0(project_folder, "/Scripts/Basics.R")
this_script <- paste(project_folder, "Scripts/Basics.R", sep="/")

# 9:50 - 10:05

# Data structures are ways to organize groups of information/values
# almost always going to use a function to generate a data structure

# Vectors are a simple, foundational data structure in R
# Create vectors using the c() function

weight_g <- c(50, 60, 65, 82)
weight_g

animals <- c("mouse", "rat", "dog")

# learn about vectors
class(weight_g)
str(weight_g)

# what does this do?
weight_g <- c(weight_g, 90)
weight_g

# common operations: finding subsets
# analysis
# missing data

# subsets of vectors
animals[2]
animals

# analyzing vectors
mean(weight_g)
weight_g/1000

# missing data

heights <- c(2, 4, 4, NA, 6)
mean(heights)
?mean
mean(heights, na.rm = TRUE)

heights_clean <- na.omit(heights)
heights_clean

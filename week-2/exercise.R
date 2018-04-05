## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# You cannot make vector of values and characters.

install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# package was not libraried

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# spelled initials


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
my_vector2 <- c(1, 2, 3, 4, 5)
typeof(my_vector2)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector_a, vector_b) {
  length1 <- length(vector_a)
  length2 <- length(vector_b)
  difference <- abs(length1 - length2)
  
  return(paste("The difference in lengths is ", difference))
}

# Pass two vectors of different length to your `CompareLength` function
vector_test_1 <- c(1, 2, 4)
vector_test_2 <- c(5, 20, 22, 1)
test_difference <- CompareLength(vector_test_1, vector_test_2)
# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribedDifference <- function(vector_1, vector_2) {
  length1 <- length(vector_1)
  length2 <- length(vector_2)
  if(length1 > length2) {
    return(paste("Your first vector is longer by ", length1 - length2, " elements"))
  } else {
    return(paste("Your second vector is longer by ", length2 - length1, " elements"))
  } 
}
# Pass two vectors to your `DescribeDifference` function


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


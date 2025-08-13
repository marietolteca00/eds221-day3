# Basic if - statement

burrito <- 2.4 # Assigning an object value (singular)

# Write a short if statment
if(burrito > 2) {
  print("I love burritos!")
}

# Example with Strings
my_ships <- c("Millenium Falcon", "X-wing", "Tie-Fighter", "Death Star")
stringr::str_detect(my_ships, pattern = "r") # this looks for any "r" present

# example of creating a conditional statement with Strings
phrase <- "I love burritos!"

if(stringr::str_detect(phrase, pattern = "love")) {
  print("Big burrito fan!")
}
  
# Basic if-else statement
pika <- 89.1 #storing a value to an object

if(pika >60){ 
  #Define size of mega pikas
  print("mega pika")
} else {
  # Otherwise print normal
  print("normal pika")
}

# Example 2 with Strings

food <- "I love tacos" #string

if(stringr::str_detect(string= food, pattern = "burritos")) {
  print("YAY Burritos")
} else {
  print("Whats wrong with burritos?")
}

# More than 2 outcomes- More options with if-else, if else statement
marmot <- 3.8 # can change values to test different size of marmots

if(marmot < 0.5) {
  # Defining small
  print("small")
}else if (marmot >= 0.5 & marmot < 3){
  # Defining medium marmots
  print("medium")
} else {
  # Everything else is a large marmot
  print("large")
}

# Use the SWITCH Funciton to write complicated if-else statements

species <- "mouse"

# All of this code is the same as several if else statements
switch(species,
       # Same as writing if statement
       "cat" = print("Meow"), 
       # same as writing an else if statement
       "dog" = print("Woof"),
       # same as last else if statement
       "mouse" = print("Squeak")
       )
# Next week we will see dplyr::case_when()!
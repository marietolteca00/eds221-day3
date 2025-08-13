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

# Writing for-loops

dog_names <- c("Teddy", "Kora", "Banjo", "Waffle") # Vector

print("My dog's name is Teddy")

# Create example for one data element to put into for loop
# The long version with copying and pasting
print(paste("My dog's name is", dog_names[1]))
print(paste("My dog's name is", dog_names[2]))
print(paste("My dog's name is", dog_names[3]))
print(paste("My dog's name is", dog_names[4]))

#storing number with variable
pupster <- dog_names[1]

print(paste("My dog's name is", pupster))

# Convert to a for loop
for (pupster in dog_names) {
  print(paste("My dog's name is", pupster))
}

# Example 3 for loop 
mass <- seq(from = 0, to = 3, by = 0.5)

i <- mass[1]
i

new_val <- i+2 # Adding 2 to each value
print(new_val) # printing the new value

# Write into a for loop
for (i in mass){
  new_val <- i+2 # Adding 2 to each value
  print(new_val) # printing the new value
}

# Practice indexing with mass example
i <- 1
new_val <- mass[i] + 2
print(new_val)

# Write this example into a for loop


for (i in 1:length(mass)) { # Defining iterator using the length of vector
  new_val <- mass[i] + 2
  print(new_val)
}

# OR with sequence along- SAME THING as above

for (i in seq_along(mass)) { # Defining iterator using seq_along()
  new_val <- mass[i] + 2
  print(new_val)
}

# Example 4- Iteratoring by position (indexing)
tree_height <- c(1, 2, 6, 10)
# Example for the first case
# Adding element 1 to element 2 = 3
tree_height[1] + tree_height[2]

#Convert into generalizable expression- TESTING!!
i <- 1 # Can replace with values from tree height to make sure sequence is correct
new_val <- tree_height[i] + tree_height[ i + 1]
print(new_val) # If it works- use in for loop. Copy and past without i <- 1


# Convert into a for loop
# Test out creating the sequence

seq_along(tree_height)

# for loop

for (i in seq_along(tree_height)) {
  new_val <- tree_height[i] + tree_height[ i + 1]
  print(new_val) # Last value is NA because we don't have 5 values, only 4!
}

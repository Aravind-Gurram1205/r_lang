
#1.1
original_vector <- c(1, 2, 3, 4, 5)
> 
  
  > reversed_vector <- rev(original_vector)
  > 
    
    > print("Original Vector:")
  [1] "Original Vector:"
  > print(original_vector)
  [1] 1 2 3 4 5
  > 
    > print("Reversed Vector:")
  [1] "Reversed Vector:"
  > print(reversed_vector)
  [1] 5 4 3 2 1
  > 
    #1.2:  
    vector1 <- c(1, 2, 3)
    > 
      
      > vector2 <- c(4, 5, 6)
      > 
        
        > concatenated_vector <- c(vector1, vector2)
        > 
          
          > print("Vector 1:")
        [1] "Vector 1:"
        > print(vector1)
        [1] 1 2 3
        > 
          > print("Vector 2:")
        [1] "Vector 2:"
        > print(vector2)
        [1] 4 5 6
        > 
          > print("Concatenated Vector:")
        [1] "Concatenated Vector:"
        > print(concatenated_vector)
        [1] 1 2 3 4 5 6
        #1.3
        my_vector <- c(10, 15, 20, 25, 30, 35, 40, 45, 50)
        > 
          > # Define the range
          > lower_bound <- 20
        > upper_bound <- 40
        > 
          > # Count the number of values in the range
          > count_in_range <- sum(my_vector >= lower_bound & my_vector <= upper_bound)
        > 
          > # Print the result
          > print(paste("Number of values in the range [", lower_bound, ",", upper_bound, "]:", count_in_range))
        [1] "Number of values in the range [ 20 , 40 ]: 5"
        > 
          #1.4:
          vector1 <- c(1, 2, 3)
        > vector2 <- c(4, 5, 6)
        > 
          > # Combine vectors by row
          > combined_by_row <- rbind(vector1, vector2)
        > 
          > # Combine vectors by column
          > combined_by_column <- cbind(vector1, vector2)
        > 
          > # Print the original vectors and the combined results
          > print("Vector 1:")
        [1] "Vector 1:"
        > print(vector1)
        [1] 1 2 3
        > 
          > print("Vector 2:")
        [1] "Vector 2:"
        > print(vector2)
        [1] 4 5 6
        > 
          > print("Combined by Row:")
        [1] "Combined by Row:"
        > print(combined_by_row)
        [,1] [,2] [,3]
        vector1    1    2    3
        vector2    4    5    6
        > 
          > print("Combined by Column:")
        [1] "Combined by Column:"
        > print(combined_by_column)
        vector1 vector2
        [1,]       1       4
        [2,]       2       5
        [3,]       3       6
        > 
          #1.5:
          my_vector <- c(5, 12, 8, 18, 6, 10)
        > 
          > # Check if each element is greater than 10
          > greater_than_10 <- my_vector > 10
        > 
          > # Print the result
          > print(greater_than_10)
        [1] FALSE  TRUE FALSE  TRUE FALSE FALSE
        #1.6:
        string1 <- "Hello"
        > string2 <- "World"
        > 
          > # Numbers
          > number1 <- 42
        > number2 <- 3.14
        > 
          > # Vectors
          > vector1 <- c(1, 2, 3)
        > vector2 <- c("apple", "orange", "banana")
        > 
          > # Logical value
          > logical_value <- TRUE
        > 
          > # Create a list
          > my_list <- list(
            +     string1,
            +     string2,
            +     number1,
            +     number2,
            +     vector1,
            +     vector2,
            +     logical_value
            + )
        > 
          > # Print the list
          > print(my_list)
        [[1]]
        [1] "Hello"
        
        [[2]]
        [1] "World"
        
        [[3]]
        [1] 42
        
        [[4]]
        [1] 3.14
        
        [[5]]
        [1] 1 2 3
        
        [[6]]
        [1] "apple"  "orange" "banana"
        
        [[7]]
        [1] TRUE
        
        > 
          #1.7:
          Create a vector
        > my_vector <- c(1, 2, 3)
        > 
          > # Create a matrix
          > my_matrix <- matrix(4:9, nrow = 2)
        > 
          > # Create another list
          > inner_list <- list("apple", "orange", "banana")
        > 
          > # Create a main list with named elements
          > my_list <- list(
            +     vec = my_vector,
            +     mat = my_matrix,
            +     sublist = inner_list
            + )
        > 
          > # Access the first and second elements of the list
          > first_element <- my_list$vec
        > second_element <- my_list$mat
        > 
          > # Print the list and the accessed elements
          > print("Full List:")
        [1] "Full List:"
        > print(my_list)
        $vec
        [1] 1 2 3
        
        $mat
        [,1] [,2] [,3]
        [1,]    4    6    8
        [2,]    5    7    9
        
        $sublist
        $sublist[[1]]
        [1] "apple"
        
        $sublist[[2]]
        [1] "orange"
        
        $sublist[[3]]
        [1] "banana"
        
        
        > 
          > print("Accessed Elements:")
        [1] "Accessed Elements:"
        > print("First Element (vec):")
        [1] "First Element (vec):"
        > print(first_element)
        [1] 1 2 3
        > 
          > print("Second Element (mat):")
        [1] "Second Element (mat):"
        > print(second_element)
        [,1] [,2] [,3]
        [1,]    4    6    8
        [2,]    5    7    9
        > 
          #1.8:
          my_vector <- c(1, 2, 3)
        > 
          > # Create a matrix
          > my_matrix <- matrix(4:9, nrow = 2)
        > 
          > # Create another list
          > inner_list <- list("apple", "orange", "banana")
        > 
          > # Create a main list
          > my_list <- list(
            +     vec = my_vector,
            +     mat = my_matrix,
            +     sublist = inner_list
            + )
        > 
          > # Print the original list
          > print("Original List:")
        [1] "Original List:"
        > print(my_list)
        $vec
        [1] 1 2 3
        
        $mat
        [,1] [,2] [,3]
        [1,]    4    6    8
        [2,]    5    7    9
        
        $sublist
        $sublist[[1]]
        [1] "apple"
        
        $sublist[[2]]
        [1] "orange"
        
        $sublist[[3]]
        [1] "banana"
        
        
        > 
          > # Add a new element at the end of the list
          > new_element <- "New Element"
        > my_list <- c(my_list, new_element)
        > 
          > # Print the list after adding the new element
          > print("List After Adding New Element:")
        [1] "List After Adding New Element:"
        > print(my_list)
        $vec
        [1] 1 2 3
        
        $mat
        [,1] [,2] [,3]
        [1,]    4    6    8
        [2,]    5    7    9
        
        $sublist
        $sublist[[1]]
        [1] "apple"
        
        $sublist[[2]]
        [1] "orange"
        
        $sublist[[3]]
        [1] "banana"
        
        
        [[4]]
        [1] "New Element"
        #1.9:
        my_nested_list <- list(
          +     element1 = "apple",
          +     element2 = c(1, 2, 3),
          +     element3 = list("dog", "cat", "fish")
          + )
        > 
          > # Select the second element of the nested list
          > second_element <- my_nested_list$element2
        > 
          > # Print the original nested list and the selected element
          > print("Original Nested List:")
        [1] "Original Nested List:"
        > print(my_nested_list)
        $element1
        [1] "apple"
        
        $element2
        [1] 1 2 3
        
        $element3
        $element3[[1]]
        [1] "dog"
        
        $element3[[2]]
        [1] "cat"
        
        $element3[[3]]
        [1] "fish"
        
        
        > 
          > print("Selected Second Element:")
        [1] "Selected Second Element:"
        > print(second_element)
        [1] 1 2 3
        > 
          > 
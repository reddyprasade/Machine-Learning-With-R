age    <- c(50, 21, 35, 45, 28, 31, 42, 33, 57, 62)
weight <- c(70.8, 67.9, 75.3, 61.9, 72.4, 69.9, 63.5, 
            71.5, 73.2, 64.8)
firstName  <- c("Adam", "Eve", "John", "Mary", "Peter", 
                "Paul", "Joanna", "Matthew", "David", "Sally")
secondName <- c("Jones", "Parker", "Evans", "Davis",
                "Baker","Daniels", "Edwards", "Smith", 
                "Roberts", "Wilson")

consent <- c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE,
             FALSE, TRUE, FALSE, TRUE)

sex <- c("Male", "Female", "Male", "Female", "Male", 
         "Male", "Female", "Male", "Male", "Female")

patients <- data.frame(First_Name = firstName, 
                       Second_Name = secondName, 
                       Full_Name = paste(firstName, secondName), 
                       Sex = factor(sex),
                       Age = age,
                       Weight = weight,
                       Consent = consent,
                       stringsAsFactors = FALSE)
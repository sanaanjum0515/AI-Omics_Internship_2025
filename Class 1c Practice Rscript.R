
cholesterol <- 230
# 1. Check Cholesterol level (using if) 
# Write an If statement to check cholesterol level is greater than 240, 
# if true, it will prints “High Cholesterol”


if (cholesterol > 240) {
  print("High Cholesterol")
}

Systolic_bp <- 130
# 2. Blood Pressure Status (using if...else)
# Write an if…else statement to check if blood pressure is normal.
# If it’s less than 120, print: “Blood Pressure is normal”
# If false then print: “Blood Pressure is high”

if (Systolic_bp < 120) {
  print("Blood Pressure is normal")
} else {
  print("Blood Pressure is high")
}
# 3. Automating Data Type Conversion with for loop

# Use patient_info.csv data and metadata.csv
# Perform the following steps separately on each dataset (patient_info.csv data and metadata.csv)
# Create a copy of the dataset to work on.
# Identify all columns that should be converted to factor type.
# Store their names in a variable (factor_cols).


patien_info <- read.csv(file.choose())
metadata <- read.csv(file.choose())



Data_Patient <- patien_info
Data_Meta <- metadata

str(Data_Patient)
str(Data_Meta)

factor_cols <- c("gender", "diagnosis", "smoker")

factor_cols2 <- c("gender", "height")

# Use a for loop to convert all the columns in factor_cols to factor type.
# Pass factor_cols to the loop as a vector.

for (col in factor_cols) {
    Data_Patient[[col]] <- as.factor(Data_Patient[[col]])  
   }
str(Data_Patient)

for (col in factor_cols2) {
  Data_Meta[[col]] <- as.factor(Data_Meta[[col]])  
}
str(Data_Meta)

# 4. Converting Factors to Numeric Codes

# Choose one or more factor columns (e.g., smoking_status).
# Convert "Yes" to 1 and "No" to 0 using a for loop.

binary_cols <- c("smoker") 

use ifelse() condition inside the loop to replace Yes with 1 and No with 0
for (col in binary_cols) {
   Data_Patient[[col]] <-  ifelse(Data_Patient[[col]] == "Yes", 1, 0) 
}
str(Data_Patient)

binary_cols2 <- c("diagnosis") 


for (col in binary_cols2) {
  Data_Patient[[col]] <-  ifelse(Data_Patient[[col]] == "Normal", 1, 0) 
}
str(Data_Patient)

binary_cols3 <- c("gender")

for (col in binary_cols3) {
  Data_Meta[[col]] <-  ifelse(Data_Meta[[col]] == "Male", 1, 2) 
}
str(Data_Meta)


#Verification:
  #    Compare the original and modified datasets to confirm changes.
  #    str(original_data)
  #    str(data)
  
 str(patien_info)
str(Data_Patient)

str(metadata)
str(Data_Meta)



# Save the entire R workspace
save.image(file = "Class1c practice full_workspace.RData")

# Save file  as CSV in results folder
write.csv(Data_Patient, file = "result or task/Data_Patient.csv")
write.csv(Data_Meta, file = "result or task/Data_Meta.csv")



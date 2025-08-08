#create folders
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("result or task")
dir.create("plot")

#import csv file
data <- read.csv(file.choose())
View(data)
str(data)

#convert gender into factor
data$gender_fac <- as.factor(data$gender)
str(data)

#relevels factor
data$gender_fac <- factor(data$gender_fac,
                          levels = c("Male", "Female"))
levels(data$gender_fac)
#convert diagnosis to factor
data$diagnosis_fac <- as.factor(data$diagnosis)
str(data)

#convert smoker to factor
data$smoker_fac <- as.factor(data$smoker)
str(data)

#convert smoking status as a binnary factor
data$smoker_num <- factor(data$smoker_fac,
                          levels = c("Yes", "No"),
                          labels = c(1, 0))
str(data)

#convert numeric into integar
data$bmi <- as.integer(data$bmi)
class(data$bmi)








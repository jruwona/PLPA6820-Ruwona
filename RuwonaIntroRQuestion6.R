# Question 6
#using an R function how you know the data were read in properly

#get working directory to confirm location of file
getwd()

#Use the read.csv() function to read the data into R so that the missing values are properly coded
tips <- read.csv("TipsR.csv", na.strings = ".")

#using an R function how you know the data were read in properly
str(tips) #displays the structure object
summary(tips) #displays summary of data



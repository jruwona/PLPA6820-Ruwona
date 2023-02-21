## Question 4
getwd() # checking for my local directory

# Create a vector named 'z' with 200 z values
z <- rnorm(200)

#Print mean and standard deviation on console
cat("Mean of z:", mean(z), "\n")
cat("Standard deviation of z:", sd(z), "\n")

#Create a logical vector that is 'TRUE' for z values that are greater than 1 and 'FALSE' otherwise
zlog <- z > 1

#Make a dataframe with z and your new logical vector as columns
df <- data.frame(z, zlog)

#Change the column names in your new dataframe to equal “z” and “zlog”
colnames(df) <- c("z", "zlog")

#View the intermediate dataframe
df

#Make a new column 'zsquared' as z squared
df$zsquared <- df$z^2

#subset dataframe to only include values of zsquared greater than 10 or less than 100
df_sub <- subset(df, zsquared > 10 | zsquared < 100)

#View the subset dataframe
print (df_sub)

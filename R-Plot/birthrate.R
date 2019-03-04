setwd('/Users/yuzheyang/Documents/Clemson Computer Science/2019 Spring/CPSC 8040/Assignment_1/Assignment_1')

# Load data
BirthRate <- read.csv(file="Assi1_datasets/birth-rate.csv", header = TRUE, sep = ',')

View(BirthRate)
#stem(BirthRate$X2008)

# The histogram of the 2008 data
hist(BirthRate$X2008, breaks = 20, xlab = "Birth Rate", main="Birth Rate of Year 2008")

# The density plot of the 2008 data with missing values removed
birth2008 <- BirthRate$X2008[!is.na(BirthRate$X2008)]
head(birth2008)
density2008 <- density(birth2008)
density2008frame <- data.frame(density2008$x, density2008$y)
plot(density2008, type="n")
polygon(density2008, col ="darkorchid", border ="#cccccc")


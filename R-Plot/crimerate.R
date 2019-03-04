setwd('/Users/yuzheyang/Documents/Clemson Computer Science/2019 Spring/CPSC 8040/Assignment_1/Assignment_1')

# Load data
CrimeRate <- read.csv(file="Assi1_datasets/crimeRatesByState2005.csv", header = TRUE, sep = ',')

View(CrimeRate)
CrimeRateState <- CrimeRate[-1,] #remove US row, it is not at state level
View(CrimeRateState)
CrimeRateState1 <- CrimeRateState[-9,] #remove DC row, it is not considered as a state
View(CrimeRateState1)

# Bubble chart for murder and burglary rate with population
radius <- sqrt( CrimeRateState1$population/ pi )
symbols(CrimeRateState1$murder, CrimeRateState1$burglary, circles=radius,inches=0.35, fg="white", bg="darkorchid", xlab="Murder per 100,000 population", ylab="Burglary per 100,000 population")
text(CrimeRateState1$murder, CrimeRateState1$burglary, CrimeRateState1$state, cex=0.3)

# Bubble chart for murder and burglary rate with population using ggplot2
library(ggplot2)
theme_update(plot.title = element_text(hjust = 0.5))
p1 <- ggplot(CrimeRateState1, aes(x = murder, y = burglary, size = population)) + geom_point(shape = 21, color = "white", fill = "purple") +
        scale_size_continuous(range = c(2, 12)) +
        ggtitle("Crime Rates by State") +
        labs(x = "Murders per 100,000 population", y = "Burglary per 100,000 population")
p1 + geom_text(aes(label = CrimeRateState1$state), size = 2)






setwd('/Users/yuzheyang/Documents/Clemson Computer Science/2019 Spring/CPSC 8040/Assignment_1/Assignment_1')

# Load data
Unemployment <- read.csv(file="Assi1_datasets/unemployment1948_2010.csv", header = TRUE, sep = ',')

View(Unemployment)

# Plain scatter plot with fitted linear line
plot(1:length(Unemployment$Value), Unemployment$Value, col="plum3", xaxt = "n", xlab = "Year", ylab="Value (%)", main="unemployment trend")
axis(1, at=seq(1, length(Unemployment$Value), by=12), labels=1948:2010)
lines(c(1,746), c(4.889523,6.42593))

# Scatter plot with fitted LOESS curve
scatter.smooth(x=1:length(Unemployment$Value), y = Unemployment$Value, xaxt = "n", xlab = "Year", ylab="Value (%)", ylim=c(0,11), degree =2, col="purple", span=0.5, main="unemployment trend")
axis(1, at=seq(1, length(Unemployment$Value), by=12), labels=1948:2010)

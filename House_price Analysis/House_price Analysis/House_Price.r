read_data <- read.csv("G:/Project/House_price Analysis/House_Price.csv")
read_data

dim(read_data)
head(read_data)*
tail(read_data)
ncol(read_data)
nrow(read_data)
names(read_data)
class(read_data)
str(read_data)
summary(read_data)
colnames(read_data)
is.na(read_data)

sd(read_data$BHK)
sd(read_data$Furnishing)
sd(read_data$Sq.ft)
sd(read_data$Old)
sd(read_data$Floor)
sd(read_data$Price)

quantile(read_data$BHK)
quantile(read_data$Furnishing)
quantile(read_data$Sq.ft)
quantile(read_data$Old)
quantile(read_data$Floor)
quantile(read_data$Price)

mean(read_data$Price)
mean(read_data$Furnishing)
mean(read_data$Sq.ft)
mean(read_data$Floor)

aggregate(.~BHK,read_data, mean)
aggregate(.~Furnishing, read_data, mean)
aggregate(.~Sq.ft,read_data, mean)
aggregate(.~Old, read_data, mean)
aggregate(.~Floor, read_data, mean)
aggregate(.~Price,read_data, mean)

aggregate(.~BHK,read_data, sd)
aggregate(.~Furnishing, read_data, sd)
aggregate(.~Sq.ft,read_data, sd)
aggregate(.~Old, read_data, sd)
aggregate(.~Floor, read_data, sd)
aggregate(.~Price,read_data, sd)


install.packages("ggplot2")
library(ggplot2)

# Relation between BHK and Price
graph1 <- ggplot(read_data, aes(BHK,Price),colour = read_data$Location,main)+geom_point()
graph1
#Relation between Old and Price
graph2 <- ggplot(read_data, aes(Old,Price),colour = read_data$Location,main)+geom_point()
graph2
#Relation between Sq.ft and Price 
graph3 <- ggplot(read_data, aes(Sq.ft,Price),colour = Location)+geom_point()
graph3
#Relation between Floor and Price
graph4 <- ggplot(read_data, aes(Floor,Price),colour = read_data$Location,main)+geom_point()
graph4


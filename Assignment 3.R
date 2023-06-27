#Question1
library(ggplot2)
data(iris)
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  labs(x = "Sepal Length", y = "Petal Length", color = "Species") 

#Question2
library(ggplot2)
data(txhousing)
str(txhousing)
summary(txhousing)
missing_values <- sum(!complete.cases(txhousing))
cat("Number of missing values:", missing_values, "\n")
txhousing_clean <- txhousing[complete.cases(txhousing), ]
ggplot(txhousing_clean, aes(x = date, y = median)) +
  geom_point() +
  labs(x = "Date", y = "median", title = "median Housing Prices Over Time",color="blue") +
  theme_minimal()

#Question3
library(ggplot2)
titanic<-read.csv("C:/Users/Acer/Downloads/titanic.csv")
finalP <- ggplot(titanic, aes(x = Fare, y = Survived, color = factor(Survived))) +
  geom_boxplot() +
  scale_color_manual(values = c("#FF0000", "#0000FF"), labels = c("female", "male")) +
  labs(x = "Fair", y = "Survived", color = "Sex") +
  theme_minimal()
finalP


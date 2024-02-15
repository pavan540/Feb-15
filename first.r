# Load the iris dataset
data(iris)

# Display the first few rows of the dataset
head(iris)

# Summary statistics
summary(iris)

# Histogram of Sepal Length
hist(iris$Sepal.Length, main="Histogram of Sepal Length", xlab="Sepal Length")

# Boxplot of Petal Width by Species
boxplot(Petal.Width ~ Species, data=iris, main="Boxplot of Petal Width by Species", xlab="Species", ylab="Petal Width")

# Scatter plot of Sepal Length vs. Sepal Width
plot(iris$Sepal.Length, iris$Sepal.Width, main="Scatter plot of Sepal Length vs. Sepal Width", xlab="Sepal Length", ylab="Sepal Width")

# Perform a t-test on Sepal Length between setosa and versicolor species
t_test_result <- t.test(Sepal.Length ~ Species, data=subset(iris, Species %in% c("setosa", "versicolor")))

# Print the t-test result
print(t_test_result)

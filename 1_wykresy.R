x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 4, 5, 6)

# Tworzenie wykresu punktowego
plot(x, y, main="Scatterplot", xlab="X Axis", ylab="Y Axis", pch=16, col="blue")

# Tworzenie wykresu liniowego
plot(x, y, type="l", main="Line Plot", xlab="X Axis", ylab="Y Axis", col="red")

data <- rnorm(100)
# Tworzenie histogramu
hist(data, main="Histogram", xlab="Values", col="skyblue", border="black")

# Tworzenie wykresu słupkowego
categories <- c("A", "B", "C", "D")
values <- c(10, 20, 15, 25)
barplot(values, names.arg=categories, main="Bar Plot", xlab="Categories", ylab="Values", col="green")

data <- c(10, 15, 20, 25, 30, 35, 40, 45, 50)

# Tworzenie wykresu pudełkowego (boxplot)
boxplot(data, main="Boxplot", ylab="Values", col="skyblue", border="black")
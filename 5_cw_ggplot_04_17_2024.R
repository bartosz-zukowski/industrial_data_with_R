library(ggplot2)
str(mtcars)
ggplot(mtcars, aes(cyl, mpg)) + geom_point()

plot(mtcars$cyl,mtcars$mpg)

ggplot(mtcars, aes(cyl, mpg)) + geom_line()
ggplot(mtcars, aes(cyl, mpg)) + geom_bar()
ggplot(mtcars, aes(cyl, mpg)) + geom_histogram() 
ggplot(mtcars, aes(cyl, mpg)) + geom_boxplot()
# zadanie

ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_point() +
  labs(x = "Liczba cylindrów", y = "Miles per Gallon") +
  ggtitle("Zależność liczby cylindrów od zużycia paliwa") 


ggplot(mtcars, aes(wt, mpg, color=disp)) +
  geom_point()

ggplot(mtcars, aes(wt, mpg, fill = cyl,color=gear)) +
  geom_point(shape = 21, size = 4, alpha=0.6)

ggplot(mtcars, aes(wt, mpg)) +
  # Set the point color and alpha
  geom_point(color="blue", alpha=0.6)

ggplot(mtcars, aes(wt, mpg)) +
  # Set the point color and alpha
  geom_point(color="blue", alpha=0.6)



str(diamonds)
diamonds


# zadanie 1
ggplot(diamonds, aes(carat, price)) + geom_point()

# zadaie 2
ggplot(diamonds, aes(cut)) + geom_bar()

# zadanie 3 
ggplot(diamonds, aes(cut)) + geom_boxplot()

# zadanie 4
ggplot(diamonds, aes(price)) + geom_histogram() 

# zadanie 5
ggplot(diamonds, aes(x=carat, y=price))  + geom_point() +
  labs(x = "Carat", y = "Price") +
  ggtitle("Diamonds Price versus Carat") 

# zadanie 6
iris
library(dplyr)
ggplot(iris %>% group_by(Species), aes(Sepal.Length, Sepal.Width))+ geom_point()

# zadanie 7
ggplot(iris, aes(Petal.Length, Species)) + geom_boxplot()

# zadanie 8
ggplot(iris, aes(Petal.Width)) + geom_histogram()

# zadanie 9
ggplot(iris, aes(Petal.Length, Petal.Width, col=Species)) + geom_point()

# zadanie 10
ggplot(iris, aes(Petal.Length, Petal.Width, shape=Species)) + geom_point()
                                                                              
# zadanie 11
ggplot(iris, aes(Species)) + geom_bar()

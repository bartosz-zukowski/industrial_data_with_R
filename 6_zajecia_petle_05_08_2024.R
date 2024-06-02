linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)
views==13
views < 14


x1 <- c(20,50,3,7,19,21,15)
x2 <- c(30,4,15,26,66,1,21)
x3 <- c(24,16,98,78,45,23,40)

mat <- matrix(c(x1, x2, x3), nrow = 3, byrow = TRUE)
mat > 20


is.numeric(5)

# zadanie 2

linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)
last<5 | last > 10
last>=15 & last<=20

# zadanie 3
facebook <- c(17, 7, 5, 16, 8, 13, 14)

linkedin>10 & facebook<10

linkedin>12 | facebook > 12

mac <- matrix(c(linkedin, facebook), nrow=2)
mac > 11 & mac < 14


# zadanie 4
number <- 11
if (number %% 2 == 0){
  print('Parzysta')
} else {
  print("Nieparzysta")
}


# zadanie 5 i 6
speed <- 90

while (speed>30) {
  if (speed> 80) {
    cat("Przekroczyles max predkosc, twoja predkosc:", speed, "\n")
    break
    }
  if (speed>48) {
    cat("Mocno zwolnij, twoja predkosc:", speed, "\n")
    speed <- speed-7
  }
  if (speed < 48){
    cat("Mocno zwolnij, twoja predkosc:", speed, "\n")
    speed <- speed-6
  }
}


# zadanie 7
suma <- 1
for (var in 1:5){
  suma = suma * var
}
print(suma)



silnia = function(n){
  sum <- 1
  for (var in 1:n){
    sum = sum * var
  }
  return(sum)
}


licz <- silnia(10)
print(licz)



# silnia_rekurencyjnie = function(n){
#  if (n <= 1) {
#    return(1)
#  }
#  return(n*silnia_rekurencyjnie(n-1))
# }




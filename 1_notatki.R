############################### Macierze ######################################
dane_2 <- c(1,2,3,4)
Macierz_2 <- matrix(dane_2, 
                  nrow=2, ncol=2, byrow=TRUE, 
                  dimnames=list(nazwyWierszy, nazwyKolumn))

print(Macierz_2)

# jak dziala byrow
Macierz_2 <- matrix(dane_2, 
                    nrow=2, ncol=2, byrow=FALSE, 
                    dimnames=list(nazwyWierszy, nazwyKolumn))

print(Macierz_2)

# wypelnij macierz 4x5 liczbami od 1 do 20
m <- matrix(1:20, nrow=5)
print(m)
# wypelnij macierz 5x4 liczbami od 1 do 20
m <- matrix(1:20, ncol =5)
print(m)

#### Laczenie macierzy
m1 <-matrix(1:4, ncol = 1)
m2 <- matrix(5:8, ncol = 1)
mm <- cbind(m1, m2)
print(mm)

###############################  DATA FRAMES   ################################
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame <- data.frame(
  Czas = c("szybko", "srednio", "wolno"),
  Jakosc = c("chujowo", "przyzwoicie", "dobrze"),
  Koszt = c("tanio", "rozsadnie", "drogo")
)
print(Data_Frame)

head(Data_Frame)
str(Data_Frame)

####################################### VECTORY ##############################
print(rev(c(1:10)))
sum(1:10)
mean(1:10)
median(1:10)

# vektor o kroku
step <- seq(0,1, 0.25)
print(step)
is.vector(step)

summary(step)

length(step)

# laczenie wektorow
vec1 <- c(1:3, -3:-1)
vec2 <- c("a", "b", "c", "d", "e", "f")
print(vec1)
names(vec1) <- vec2
print(vec1)
###################################  LISTY   #################################
x<- c(1,2,3)
y<- c("a", "b", "c")

lista <-list(liczba=x, litera=y)

print(lista)

# variance of a vector
var(step)
# standard deviation of a vector
sd(step)

###################### odwolywanie sie do podlisty
print(lista$liczba)
print(lista$litera)


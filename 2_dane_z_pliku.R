dane <- read.csv("Biochemia.csv", sep = ";", dec = ",", header = TRUE)


dane_tablica <- read.table("Biochemia.csv", sep=";", dec=",", header = TRUE)

# read.csv2()
# read.delim()

# instal.packages("readxl)
library(readxl)
dane_z_excela <- read_excel("Biochemia.xlsx")
is.data.frame(dane_z_excela)

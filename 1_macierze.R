new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.9)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)
star_wars_matrix

##### dodawanie nazw w macierzach
region <- c("USA", "Rest")
tytul <- c("Nowa Nadzieja", "Imperium kontratakuje", "Powrot Jedi")

#### Nazwy kolumn colnames(macies) <- vektor z nazwami
colnames(star_wars_matrix) <- region
#### Nazwy wierzy rownames(macierz) <- vector z nazwami
rownames(star_wars_matrix) <- tytul

print(star_wars_matrix)

############################# sumowanie wierzy rowSums()
wiersze_swiat <- rowSums(star_wars_matrix)
print(wiersze_swiat)

usa_swiat <- colSums(star_wars_matrix)
print(usa_swiat)


### dodawanie kolumn
wszystkie <- cbind(star_wars_matrix, Swiat = wiersze_swiat, Srednia_film = rowMeans(wszystkie))
print(wszystkie)



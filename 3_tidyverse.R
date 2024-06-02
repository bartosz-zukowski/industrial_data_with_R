library(tidyverse)

library(gapminder)

gapminder

library(dplyr)

# filter(columna = wartosc)
gapminder %>%
  filter(year == "1987", country =="Poland")

# wiersze slice wybierz arrange - posortuj
gapminder %>% slice(1:100) %>% arrange(year)


# kolumny
gapminder %>% select(continent)

gapminder %>% rename(Kraj = country, Kontynent = continent, Rok=year, Dl_zycia=lifeExp, Populacja = pop, PKB_os = gdpPercap)

gapminder %>% mutate(year = year-1000)

gapminder %>% relocate(year, country)

gapminder %>% summarise(mediana_zycia = median(lifeExp))

gapminder %>% group_by(country) %>% 
  summarise(mediana_zycia=median(lifeExp), 
            max_PKB=max(gdpPercap), 
            srednia=mean(gdpPercap))


gapminder %>%
  arrange(desc(lifeExp))

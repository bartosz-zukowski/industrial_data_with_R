###################### IRIS ########################
# Wykorzystując zbiór danych iris:
iris
head(iris)
library(dplyr)

#### SUMMARIZE(), GROUP_BY()
# 1. wyznacz średnią długości i szerokości Sepal i Petal dla każdej odmiany kwiatów
iris %>% 
  group_by(Species) %>%
  summarize(dl_sepal=mean(Sepal.Length),
            szer_sepal=mean(Sepal.Width), 
            dl_petal=mean(Petal.Length), 
            szer_peal=mean(Petal.Width))


# 2. wyznacz medianę długości i szerokości Sepal i Petal dla każdej odmiany kwiatów
iris %>% 
  group_by(Species) %>%
  summarize(dl_med_s=median(Sepal.Length),
            szer_med_s=median(Sepal.Width), 
            dl_petal_med=median(Petal.Length), 
            szer_peal_med=median(Petal.Width))


#### MAX()
# 3. znajdź irysa z największą szerokością płatka (Petal)
iris %>% 
  group_by(Species) %>%
  summarise(max(Petal.Width))


#### FILTER()
# 4. wybierz irysy z długością płtaków (Petal.Length) większą niż 5
iris %>% 
  filter(Petal.Length>5) %>%
  group_by(Species)


###################### HFLIGHTS ######################
# Na podstawie tego pakietu wykonaj następujące zadania:
# install.packages("hflights")

require(hflights)

# 1. wyznacz średnie opóźnienie
hflights %>%
  summarise(s_opoznienie=mean(DepDelay, na.rm=TRUE))


# 2. wyznacz sumę lotów każdego miesiąca - do zliczania służy funkcja n()
hflights %>%
  group_by(Month) %>%
  summarise(flights_monthly=n())


#### NA.RM=TRUE <- pozbyc sie NA vals
# 3. wyznacz średnie opóźnienie każdego miesiąca
hflights %>%
  group_by(Month) %>%
  summarise(monthly_delay=mean(DepDelay, na.rm=TRUE))


#### ARRANGE()
# 4. wyznacz, które lotnisko ma najwięcej przylotów
hflights %>%
  group_by(Dest) %>%
  summarise(loty=n()) %>%
  arrange(loty)


# 6. znajdz linię lotniczą z najwiwiększą średnią opóźniej przybycia
hflights %>%
  group_by(UniqueCarrier) %>%
  summarise(monthly_delay=mean(ArrDelay, na.rm=TRUE)) %>%
  arrange(monthly_delay)


#### FILTER()
# 7. wybierz loty, które miały opóźnienie odlotu większe niż opóźnienie przylotu (ArrDelay)
hflights %>%
  filter(DepDelay > ArrDelay)


# 8. znajdź lotnisko docelowe (Dest), które ma największą średnią liczbę opóźnień odlotu (depDelay)
hflights %>%
  group_by(Dest) %>%
  summarise(op_odl=mean(DepDelay, na.rm=TRUE)) %>%
  arrange(op_odl) %>% reframe(max(op_odl))

# 8. wylap max jako jedna wartosc
hflights %>%
  group_by(Dest) %>%
  summarise(op_odl=mean(DepDelay, na.rm=TRUE)) %>%
  arrange(op_odl) %>% reframe(max(op_odl))


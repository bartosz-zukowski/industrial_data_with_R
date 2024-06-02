# wyznacz dzienny zysk w kasynie
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# polacz wygrane w pokera z dniami
names(poker_vector) <- days_vector

# polacz wygrane z ruletki z dniami
names(roulette_vector) <- days_vector

wygrane <- poker_vector + roulette_vector
print(wygrane)

# totals
total_poker <- sum(poker_vector)
print(total_poker)

poker_sroda <- poker_vector["Wednesday"]
print(poker_sroda)


selection_vector <- poker_vector[1:5]>0
selection_vector
poker_winning_days <- poker_vector[selection_vector]

poker_winning_days
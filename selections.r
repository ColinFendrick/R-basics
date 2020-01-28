# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]
poker_midweek <- poker_vector[c(2,3,4)]
roulette_selection_vector <- roulette_vector[2:5]

# Average
mean(poker_midweek)

# Comparison
poker_win <- poker_vector > 0

# Only show wins
poker_winning_days <- poker_vector[poker_win]
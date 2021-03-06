# The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
# The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
# The third argument nrow indicates that the matrix should have three rows.

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow=TRUE, nrow = 3)

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
phantom <- c(500, 700)
attack_clones <- c(400, 550)
revenge <- c(750, 900)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)
star_wars_matrix2 <- matrix(c(phantom, attack_clones, revenge), nrow=3, byrow=TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
titles2 <- c("Phantom Menace", "Attack of the Clones", "Revenge of the Sith")

# Name the columns with region
# Name the rows with titles
rownames(star_wars_matrix) <- titles
rownames(star_wars_matrix2) <- titles2
colnames(star_wars_matrix) <- region
colnames(star_wars_matrix2) <- region

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector2 <- rowSums(star_wars_matrix2)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector2, worldwide_vector)

all_wars_matrix <- rbind(star_wars_matrix2, star_wars_matrix)

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
  
# Average non-US revenue
mean(non_us_all)
  
# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2, 2:2]
  
# Average non-US revenue for first two movies
mean(non_us_some)

# Estimate the visitors
visitors <- all_wars_matrix / 5

ticket_prices_matrix <- matrix(c(c(5, 5), c(6, 6), c(7, 7), c(8, 8), c(9, 9), c(10, 10)), nrow=6, byrow=TRUE)
# rownames(ticket_prices_matrix, titles2, titles)
colnames(ticket_prices_matrix, region)

# Estimated number of visitors
visitors <- all_wars_matrix / ticket_prices_matrix

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors
mean(us_visitors)
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)
can_be_mixed <- c(TRUE, 12, "somestring")
print(can_be_mixed)
# Names
names(boolean_vector) <- c("First", "Second", "Third")
names_vector <- c("First", "Second", "Third")
names(numeric_vector) <- names_vector
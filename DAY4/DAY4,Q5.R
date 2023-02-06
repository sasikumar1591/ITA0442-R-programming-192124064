#program 5:
# (i)
letters_sample <- sample(LETTERS, 5)
letters_factor <- factor(letters_sample)
levels(letters_factor)

# (ii)
letters_sample <- sample(LETTERS, 5)
letters_factor <- factor(letters_sample)
levels(letters_factor)

# (iii)
find_vowels <- function(str){
  vowels <- c("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
  count <- sum(str %in% vowels)
  return(count)
}

c <- "matrix"
find_vowels(c)

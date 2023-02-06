#program 1:
# (i)
kelvin_to_celsius <- function(temp_in_kelvin){
  temp_in_celsius <- temp_in_kelvin - 273.15
  return(temp_in_celsius)
}
result <- kelvin_to_celsius(300)
print(result)

# (ii)
x <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean(x)
median(x)
table(x)

# (iii)
x <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
sort(x)[2] # 2nd highest value
sort(x)[length(x)-2] # 3rd lowest value

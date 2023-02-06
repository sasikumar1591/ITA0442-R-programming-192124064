#program 2:
# (i)
airquality <- airquality

sum_temp <- 0
n <- nrow(airquality)
for(i in 1:n){
  sum_temp <- sum_temp + airquality[i, "Temp"]
}
mean_temp <- sum_temp / n
print(mean_temp)

# (ii)
first_five_rows <- airquality[1:5, ]
print(first_five_rows)

# (iii)
columns_to_remove <- c("Temp", "Wind")
new_airquality <- airquality[, !(names(airquality) %in% columns_to_remove)]
print(new_airquality)

# (iv)
min_temp <- min(airquality$Temp)
coldest_day <- airquality[airquality$Temp == min_temp, ]
print(coldest_day)

# (v)
windy_days <- airquality[airquality$Wind > 17, ]
count_windy_days <- nrow(windy_days)
print(count_windy_days)

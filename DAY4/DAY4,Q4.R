#program 4:
#(i)
airquality <- airquality
na_count <- sum(is.na(airquality))
if (na_count / nrow(airquality) < 0.1) {
  airquality <- na.omit(airquality)
} else {
  for (col in colnames(airquality)) {
    airquality[is.na(airquality[col]), col] <- mean(airquality[col], na.rm = T)
  }
}

# (ii)
model <- lm(Ozone ~ Solar.R, data = airquality)
summary(model)

# (iii)
library(ggplot2)
ggplot(airquality, aes(x = Solar.R, y = Ozone)) + 
  geom_point() + 
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE) + 
  ggtitle("Scatter Plot of Ozone vs Solar.R with Regression Line")

#program 8:
# (i)
model <- lm(weight ~ Time + Diet, data=ChickWeight)

# (ii)
new_data <- data.frame(Time=10, Diet=1)
new_data$Diet <- as.factor(new_data$Diet)
predicted_weight <- predict(model, newdata=new_data)

# (iii)
actual_weight <- 10 # (or any other value for actual weight)
error <- predicted_weight - actual_weight
mean(error^2)

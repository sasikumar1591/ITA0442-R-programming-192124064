#Program 9:
# i) Load iris dataset
data("iris")

# ii) Split into training and test sets (80% training, 20% test)
set.seed(123) # for reproducibility
train_index <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# iii) Fit logistics regression model with training data
model <- glm(Species ~ Petal.Length + Petal.Width, data = train_data, family = "binomial")

# iv) Predict probability using test data
test_data$prob <- predict(model, newdata = test_data, type = "response")

# v) Create Confusion Matrix
pred <- ifelse(test_data$prob > 0.5, "versicolor", "setosa")
table(pred, test_data$Species)

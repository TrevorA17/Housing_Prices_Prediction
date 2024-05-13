# Load necessary libraries
library(caret)
library(boot)

# Load dataset
housing_data <- read.csv("data/Housing.csv", colClasses = c(
  price = "numeric",
  area = "integer",
  bedrooms = "numeric",
  bathrooms = "numeric",
  stories = "numeric",
  mainroad = "factor",
  guestroom = "factor",
  basement = "factor",
  hotwaterheating = "factor",
  airconditioning = "factor",
  parking = "numeric",
  prefarea = "factor",
  furnishingstatus = "factor"
))

# Set seed for reproducibility
set.seed(123)

# Split dataset into 80% training and 20% testing
train_index <- createDataPartition(housing_data$price, p = 0.8, list = FALSE)
training_data <- housing_data[train_index, ]
testing_data <- housing_data[-train_index, ]

# Display dimensions of training and testing sets
print("Dimensions of Training Set:")
print(dim(training_data))
print("Dimensions of Testing Set:")
print(dim(testing_data))

# Define function to compute statistic of interest (e.g., mean of price)
statistic_function <- function(data, indices) {
  sample_data <- data[indices, ]
  return(mean(sample_data$price))
}

# Perform bootstrapping
boot_results <- boot(housing_data, statistic_function, R = 1000)

# Display bootstrapped statistics
print("Bootstrapped Statistics:")
print(boot_results)

# Set seed for reproducibility
set.seed(123)

# Define number of folds
k <- 10

# Perform K-fold cross-validation
cv_results <- trainControl(method = "cv", number = k)

# Define the model (e.g., linear regression)
model <- train(price ~ ., data = housing_data, method = "lm", trControl = cv_results)

# Display cross-validation results
print(model)

# Set seed for reproducibility
set.seed(123)

# Define training control with repeated cross-validation
train_control <- trainControl(method = "repeatedcv", number = 10, repeats = 3)

# Define models to train
models <- c("lm", "gbm", "knn")

# Train models
results <- lapply(models, function(model) {
  train(price ~ ., data = housing_data, method = model, trControl = train_control)
})

# Display results
print(results)

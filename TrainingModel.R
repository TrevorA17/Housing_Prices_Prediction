# Load necessary libraries
library(caret)

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


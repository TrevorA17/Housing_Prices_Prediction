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

# Check for missing values
missing_values <- sum(is.na(housing_data))

# Display summary of missing values
print(paste("Number of missing values:", missing_values))

# Summary of missing values by column
print(summary(is.na(housing_data)))

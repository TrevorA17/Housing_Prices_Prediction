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

# Display the structure of the dataset
str(housing_data)

# View the first few rows of the dataset
head(housing_data)

# View the dataset in a separate viewer window
View(housing_data)

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

# Measures of frequency for categorical variables
table_mainroad <- table(housing_data$mainroad)
table_guestroom <- table(housing_data$guestroom)
table_basement <- table(housing_data$basement)
table_hotwater <- table(housing_data$hotwaterheating)
table_airconditioning <- table(housing_data$airconditioning)
table_prefarea <- table(housing_data$prefarea)
table_furnishingstatus <- table(housing_data$furnishingstatus)

# Display measures of frequency
print("Frequency of Mainroad:")
print(table_mainroad)

print("Frequency of Guestroom:")
print(table_guestroom)

print("Frequency of Basement:")
print(table_basement)

print("Frequency of Hot Water Heating:")
print(table_hotwater)

print("Frequency of Air Conditioning:")
print(table_airconditioning)

print("Frequency of Preferred Area:")
print(table_prefarea)

print("Frequency of Furnishing Status:")
print(table_furnishingstatus)


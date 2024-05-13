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

# Measures of central tendency for numerical variables
mean_price <- mean(housing_data$price)
median_price <- median(housing_data$price)
mean_area <- mean(housing_data$area)
median_area <- median(housing_data$area)
mean_bedrooms <- mean(housing_data$bedrooms)
median_bedrooms <- median(housing_data$bedrooms)
mean_bathrooms <- mean(housing_data$bathrooms)
median_bathrooms <- median(housing_data$bathrooms)
mean_stories <- mean(housing_data$stories)
median_stories <- median(housing_data$stories)
mean_parking <- mean(housing_data$parking)
median_parking <- median(housing_data$parking)

# Display measures of central tendency
print("Measures of Central Tendency:")
print(paste("Mean Price:", mean_price))
print(paste("Median Price:", median_price))
print(paste("Mean Area:", mean_area))
print(paste("Median Area:", median_area))
print(paste("Mean Bedrooms:", mean_bedrooms))
print(paste("Median Bedrooms:", median_bedrooms))
print(paste("Mean Bathrooms:", mean_bathrooms))
print(paste("Median Bathrooms:", median_bathrooms))
print(paste("Mean Stories:", mean_stories))
print(paste("Median Stories:", median_stories))
print(paste("Mean Parking:", mean_parking))
print(paste("Median Parking:", median_parking))


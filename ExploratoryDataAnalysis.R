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

# Measures of distribution for numerical variables
range_price <- range(housing_data$price)
range_area <- range(housing_data$area)
range_bedrooms <- range(housing_data$bedrooms)
range_bathrooms <- range(housing_data$bathrooms)
range_stories <- range(housing_data$stories)
range_parking <- range(housing_data$parking)

variance_price <- var(housing_data$price)
variance_area <- var(housing_data$area)
variance_bedrooms <- var(housing_data$bedrooms)
variance_bathrooms <- var(housing_data$bathrooms)
variance_stories <- var(housing_data$stories)
variance_parking <- var(housing_data$parking)

std_dev_price <- sd(housing_data$price)
std_dev_area <- sd(housing_data$area)
std_dev_bedrooms <- sd(housing_data$bedrooms)
std_dev_bathrooms <- sd(housing_data$bathrooms)
std_dev_stories <- sd(housing_data$stories)
std_dev_parking <- sd(housing_data$parking)

# Display measures of distribution
print("Measures of Distribution:")
print(paste("Price Range:", range_price))
print(paste("Area Range:", range_area))
print(paste("Bedrooms Range:", range_bedrooms))
print(paste("Bathrooms Range:", range_bathrooms))
print(paste("Stories Range:", range_stories))
print(paste("Parking Range:", range_parking))

print(paste("Price Variance:", variance_price))
print(paste("Area Variance:", variance_area))
print(paste("Bedrooms Variance:", variance_bedrooms))
print(paste("Bathrooms Variance:", variance_bathrooms))
print(paste("Stories Variance:", variance_stories))
print(paste("Parking Variance:", variance_parking))

print(paste("Price Standard Deviation:", std_dev_price))
print(paste("Area Standard Deviation:", std_dev_area))
print(paste("Bedrooms Standard Deviation:", std_dev_bedrooms))
print(paste("Bathrooms Standard Deviation:", std_dev_bathrooms))
print(paste("Stories Standard Deviation:", std_dev_stories))
print(paste("Parking Standard Deviation:", std_dev_parking))

# Compute correlation coefficients
correlation_matrix <- cor(housing_data[c("price", "area", "bedrooms", "bathrooms", "stories", "parking")])

# Display correlation matrix
print("Correlation Matrix:")
print(correlation_matrix)

# Perform ANOVA
anova_result <- aov(price ~ furnishingstatus, data = housing_data)

# Summarize ANOVA results
summary(anova_result)

# Load necessary library
library(ggplot2)

# Histogram for price
ggplot(housing_data, aes(x = price)) +
  geom_histogram(binwidth = 100000, fill = "blue", color = "black") +
  labs(title = "Distribution of Price", x = "Price", y = "Frequency") +
  theme_minimal()

# Boxplot for area
ggplot(housing_data, aes(x = "", y = area)) +
  geom_boxplot(fill = "green", color = "black") +
  labs(title = "Distribution of Area", x = "", y = "Area") +
  theme_minimal()

# Barplot for bedrooms
ggplot(housing_data, aes(x = as.factor(bedrooms))) +
  geom_bar(fill = "orange", color = "black") +
  labs(title = "Number of Bedrooms", x = "Bedrooms", y = "Frequency") +
  theme_minimal()

# Boxplot for bathrooms
ggplot(housing_data, aes(x = "", y = bathrooms)) +
  geom_boxplot(fill = "purple", color = "black") +
  labs(title = "Distribution of Bathrooms", x = "", y = "Bathrooms") +
  theme_minimal()

# Histogram for stories
ggplot(housing_data, aes(x = as.factor(stories))) +
  geom_bar(fill = "pink", color = "black") +
  labs(title = "Number of Stories", x = "Stories", y = "Frequency") +
  theme_minimal()

# Boxplot for parking
ggplot(housing_data, aes(x = "", y = parking)) +
  geom_boxplot(fill = "yellow", color = "black") +
  labs(title = "Distribution of Parking", x = "", y = "Parking") +
  theme_minimal()


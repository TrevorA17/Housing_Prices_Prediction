# Create a directory named "models" if it doesn't exist
if (!file.exists("./models")) {
  dir.create("./models")
}

# Train the Stochastic Gradient Boosting model
model <- train(price ~ ., data = housing_data, method = "gbm", trControl = train_control, tuneGrid = expand.grid(interaction.depth = 2, n.trees = 150, shrinkage = 0.1, n.minobsinnode = 10))

# Saving the Stochastic Gradient Boosting model for the housing dataset
saveRDS(model, file = "./models/housing_gbm_model.rds")

# Load the saved model
loaded_housing_gbm_model <- readRDS("./models/housing_gbm_model.rds")

# Prepare new data for prediction (replace with your actual new data)
new_housing_data <- data.frame(
  area = 2000,
  bedrooms = 3,
  bathrooms = 2,
  stories = 2,
  mainroad = factor("yes", levels = c("no", "yes")),
  guestroom = factor("yes", levels = c("no", "yes")),
  basement = factor("no", levels = c("no", "yes")),
  hotwaterheating = factor("yes", levels = c("no", "yes")),
  airconditioning = factor("no", levels = c("no", "yes")),
  parking = 1,
  prefarea = factor("yes", levels = c("no", "yes")),
  furnishingstatus = factor("semi-furnished", levels = c("unfurnished", "semi-furnished", "furnished"))
)

# Use the loaded model to make predictions for new housing data
predictions_housing_loaded_model <- predict(loaded_housing_gbm_model, newdata = new_housing_data)

# Print predictions
print(predictions_housing_loaded_model)

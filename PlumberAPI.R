# Load the saved Stochastic Gradient Boosting model for housing prediction
loaded_housing_gbm_model <- readRDS("./models/housing_gbm_model.rds")

#* @apiTitle Housing Price Prediction Model API
#* @apiDescription Used to predict housing prices.

#* @param area Numeric: Area of the house
#* @param bedrooms Numeric: Number of bedrooms
#* @param bathrooms Numeric: Number of bathrooms
#* @param stories Numeric: Number of stories
#* @param mainroad Factor: Whether the house is on the main road (no, yes)
#* @param guestroom Factor: Whether the house has a guest room (no, yes)
#* @param basement Factor: Whether the house has a basement (no, yes)
#* @param hotwaterheating Factor: Whether the house has hot water heating (no, yes)
#* @param airconditioning Factor: Whether the house has air conditioning (no, yes)
#* @param parking Numeric: Number of parking spaces
#* @param prefarea Factor: Whether the house is in a preferred area (no, yes)
#* @param furnishingstatus Factor: Furnishing status of the house (unfurnished, semi-furnished, furnished)

#* @post /predict_housing_price

predict_housing_price <- function(area, bedrooms, bathrooms, stories, mainroad, guestroom, basement, hotwaterheating, airconditioning, parking, prefarea, furnishingstatus) {
  
  # Create a data frame using the arguments
  new_housing_data <- data.frame(
    area = as.numeric(area),
    bedrooms = as.numeric(bedrooms),
    bathrooms = as.numeric(bathrooms),
    stories = as.numeric(stories),
    mainroad = as.factor(mainroad),
    guestroom = as.factor(guestroom),
    basement = as.factor(basement),
    hotwaterheating = as.factor(hotwaterheating),
    airconditioning = as.factor(airconditioning),
    parking = as.numeric(parking),
    prefarea = as.factor(prefarea),
    furnishingstatus = as.factor(furnishingstatus)
  )
  
  # Use the loaded model to make predictions
  prediction <- predict(loaded_housing_gbm_model, newdata = new_housing_data)
  
  # Return the prediction
  return(prediction)
}

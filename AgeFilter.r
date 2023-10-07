# Load required libraries
library(dplyr)

# Assuming your dataset is named 'data' and contains an 'Age' column

# Filter for users between 18 and 55
filtered_data <- data %>%
  filter(Age >= 18 & Age <= 55)

# Load required libraries
library(dplyr)
library(ggplot2)

# Assuming your filtered dataset is named 'filtered_data' with an 'Age' column

# Create a summary table of age groups
age_summary <- filtered_data %>%
  mutate(AgeGroup = cut(Age, breaks = c(18, 30, 55), labels = c("18-30", "31-55"))) %>%
  group_by(AgeGroup) %>%
  summarise(Count = n())

# Create a pie chart
ggplot(age_summary, aes(x = "", y = Count, fill = AgeGroup)) +
  geom_bar(stat = "identity") +
  coord_polar(theta = "y") +
  labs(title = "Age Distribution of Users (18-55)", fill = "Age Group") +
  theme_void()

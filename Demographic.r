# Load required libraries
library(ggplot2)

# Load the data
data <- read.csv("demographic_data.csv")

# Summary of the data
summary(data)

# Create a histogram of ages
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(title = "Age Distribution", x = "Age", y = "Frequency")

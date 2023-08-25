# Advanced_Medical_Data_Analysis.R

# 1. Import Libraries
library(tidyverse)

# 2. Simulate Medical Data
set.seed(456)
n <- 200
patient_data <- data.frame(
  PatientID = seq(1, n),
  Age = sample(18:90, n, replace = TRUE),
  Sex = sample(c("Male", "Female"), n, replace = TRUE),
  Condition = sample(c("Heart Disease", "Diabetes", "Hypertension", "Asthma"), n, replace = TRUE),
  Treatment = sample(c("Medication", "Surgery", "Therapy", "None"), n, replace = TRUE)
)

# 3. Data Pre-Processing
filtered_data <- patient_data %>% 
  filter(Treatment != 'None')

# 4. Exploratory Data Analysis (EDA)
summary_stats <- summary(filtered_data)

# Count of patients by condition and treatment
condition_treatment_count <- filtered_data %>%
  group_by(Condition, Treatment) %>%
  summarise(Count = n())

# 5. Advanced Data Visualization

# Bar chart for the count of patients by condition and treatment
bar_chart <- ggplot(condition_treatment_count, aes(x = Condition, y = Count, fill = Treatment)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Count of Patients by Condition and Treatment",
       x = "Medical Condition",
       y = "Count of Patients") +
  theme_minimal()

# Boxplot for the distribution of age by medical condition
box_plot <- ggplot(filtered_data, aes(x = Condition, y = Age, fill = Condition)) +
  geom_boxplot() +
  labs(title = "Distribution of Age by Medical Condition",
       x = "Medical Condition",
       y = "Age") +
  theme_minimal()

# Display Plots
print(bar_chart)
print(box_plot)

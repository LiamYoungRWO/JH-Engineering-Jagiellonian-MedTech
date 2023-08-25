# 1. Library Imports
library(tidyverse)  # For data manipulation and visualization

# 2. Data Simulation
set.seed(123)
n <- 100  # Number of patients
patient_data <- data.frame(
  PatientID = seq(1, n),
  Age = sample(18:90, n, replace = TRUE),
  Sex = sample(c("Male", "Female"), n, replace = TRUE),
  Condition = sample(c("Heart Disease", "Diabetes", "Hypertension", "Asthma"), n, replace = TRUE),
  Treatment = sample(c("Medication", "Surgery", "Therapy", "None"), n, replace = TRUE)
)

# 3. Data Pre-processing
# Filter out rows with missing or 'None' treatments
filtered_data <- patient_data %>% 
  filter(Treatment != 'None')

# 4. Exploratory Data Analysis (EDA)
# Summary of the filtered data
summary_stats <- summary(filtered_data)

# Count of patients by condition and treatment
condition_treatment_count <- filtered_data %>%
  group_by(Condition, Treatment) %>%
  summarise(Count = n())

# 5. Data Visualization
# Bar chart for the count of patients by condition and treatment
ggplot(condition_treatment_count, aes(x = Condition, y = Count, fill = Treatment)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Count of Patients by Condition and Treatment",
       x = "Medical Condition",
       y = "Count of Patients") +
  theme_minimal()

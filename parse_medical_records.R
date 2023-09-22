# parse_medical_records.R

# Load necessary libraries
library(dplyr)

# Read data (assuming data fetched from Solana blockchain)
medical_records <- read.csv("mock_medical_records.csv", stringsAsFactors = FALSE)

# Simple processing: Count number of unique diagnoses
diagnosis_count <- medical_records %>%
  group_by(Diagnosis) %>%
  summarise(Count = n())

# Print the summary
print(diagnosis_count)

# Save the summary to a CSV file
write.csv(diagnosis_count, "diagnosis_summary.csv", row.names = FALSE)

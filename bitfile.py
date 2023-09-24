# Datasets are lists for this example (super succinct .py parse script for EZCalc)

# Dataset 1: Patient weights (in kg)
weights = [70, 65, 80, 55]

# Dataset 2: Patient blood pressure (systolic)
blood_pressures = [120, 110, 130, 105]

def calculate_avg_difference(dataset1, dataset2):
    """Calculate the average difference between two datasets."""
    if len(dataset1) != len(dataset2):
        raise ValueError("Datasets must be of the same length.")
    
    total_difference = sum([abs(a - b) for a, b in zip(dataset1, dataset2)])
    
    return total_difference / len(dataset1)

if __name__ == "__main__":
    result = calculate_avg_difference(weights, blood_pressures)
    print(f"Average difference between weights and blood pressures: {result}")


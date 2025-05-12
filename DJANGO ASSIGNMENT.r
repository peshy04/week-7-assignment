# Import necessary libraries
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Task 1: Load and Explore the Dataset
try:
    # Load the dataset (replace 'your_dataset.csv' with your actual dataset file path)
    dataset_path = 'your_dataset.csv'
    data = pd.read_csv(dataset_path)
    print("Dataset loaded successfully!")
except FileNotFoundError:
    print(f"Error: The file '{dataset_path}' was not found.")
    exit()

# Display the first few rows of the dataset
print("First few rows of the dataset:")
print(data.head())

# Check the structure of the dataset
print("\nDataset Info:")
print(data.info())

# Check for missing values
print("\nMissing Values:")
print(data.isnull().sum())

# Clean the dataset (fill or drop missing values)
data = data.dropna()  # Dropping rows with missing values
print("\nDataset after cleaning:")
print(data.info())

# Task 2: Basic Data Analysis
# Compute basic statistics
print("\nBasic Statistics:")
print(data.describe())

# Perform groupings and compute mean
if 'species' in data.columns:  # Replace 'species' with a categorical column in your dataset
    grouped_data = data.groupby('species').mean()
    print("\nMean of numerical columns grouped by 'species':")
    print(grouped_data)

# Task 3: Data Visualization
# Line chart (replace 'time_column' and 'value_column' with actual column names)
if 'time_column' in data.columns and 'value_column' in data.columns:
    plt.figure(figsize=(10, 6))
    plt.plot(data['time_column'], data['value_column'], marker='o')
    plt.title('Line Chart: Trends Over Time')
    plt.xlabel('Time')
    plt.ylabel('Value')
    plt.grid()
    plt.show()

# Bar chart (replace 'category_column' and 'value_column' with actual column names)
if 'category_column' in data.columns and 'value_column' in data.columns:
    plt.figure(figsize=(10, 6))
    sns.barplot(x='category_column', y='value_column', data=data)
    plt.title('Bar Chart: Comparison Across Categories')
    plt.xlabel('Category')
    plt.ylabel('Value')
    plt.show()

# Histogram (replace 'numerical_column' with an actual numerical column name)
if 'numerical_column' in data.columns:
    plt.figure(figsize=(10, 6))
    plt.hist(data['numerical_column'], bins=20, color='skyblue', edgecolor='black')
    plt.title('Histogram: Distribution of Numerical Column')
    plt.xlabel('Value')
    plt.ylabel('Frequency')
    plt.show()

# Scatter plot (replace 'numerical_column1' and 'numerical_column2' with actual column names)
if 'numerical_column1' in data.columns and 'numerical_column2' in data.columns:
    plt.figure(figsize=(10, 6))
    sns.scatterplot(x='numerical_column1', y='numerical_column2', data=data)
    plt.title('Scatter Plot: Relationship Between Two Numerical Columns')
    plt.xlabel('Numerical Column 1')
    plt.ylabel('Numerical Column 2')
    plt.show()
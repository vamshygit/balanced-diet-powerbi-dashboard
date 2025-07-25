
# 🥗 Balanced Diet Power BI Dashboard

This project visualizes and analyzes health-related data using **Python** for preprocessing and **Power BI** for interactive dashboard creation. It focuses on individual BMI, Health Score, and categorization into different Health Categories to promote awareness about healthy eating and balanced lifestyles.

---

## 📊 Project Overview

The dashboard is built to answer key questions like:
- What is the overall health score distribution?
- How many people fall into each Health Category (Unhealthy, Moderate, Healthy)?
- Which factors affect health status the most?
- What are the top symptoms or complaints across groups?

---

## 📁 Folder Structure
📦balanced-diet-powerbi-dashboard
┣ 📄 balanced_diet_.xls 
┣ 📄 balanced_diet_cleaned.xls ← Cleaned dataset (used in Power BI)
┣ 📄 balanced_diet.py ← Python script used for preprocessing
┣ 📄 Balanced_Diet_HealthScore_Dashboard.pbix ← Power BI dashboard file
┣ 📄 Balanced_Diet_HealthScore_Dashboard.png
┣ 📄 README.md ← This file


---

## 🔧 Tools Used

- 🐍 **Python (Pandas, NumPy)** – Data cleaning and feature engineering
- 📊 **Power BI** – Interactive dashboard creation
- 🧠 **Custom Logic** – BMI calculation, Health Score computation, and category assignment

---

## 🧪 Data Preprocessing (Python)

Python script cleans the raw data and calculates:
- **BMI** = Weight / Height²
- **Health Score**: Custom formula combining BMI, activity level, and symptoms
- **Health Category**: Labeled as `Unhealthy`, `Moderate`, or `Healthy` based on score

```python
# Example: BMI Calculation
df["BMI"] = df["Weight"] / (df["Height"] ** 2)
📈 Power BI Dashboard Features
The Power BI dashboard includes:

📌 KPI Cards: Total Records, Avg BMI, Avg Health Score

📊 Bar Charts: Count by Health Category, Job Role

📈 Line Chart: Health Score trend by age

🧭 Filters/Slicers: Gender, Age Group, Job Role

📥 Top N Visual: Top symptoms/complaints by Health Score

🔍 Key Insights
A significant number of people fall in the Moderate Health category.

Sedentary job roles show lower average Health Scores.

Unhealthy BMI correlates with higher frequency of symptoms like fatigue and headache.

High fiber and protein-rich diets show a positive impact on health score.

🚀 How to Use This Project
Clone the repository:
git clone https://github.com/yourusername/balanced-diet-powerbi-dashboard.git
Run the Python script (data_cleaning_script.py) to preprocess the data.

Open Power BI and load balanced_diet_cleaned.csv.

Open the .pbix file (Balanced_Diet_Dashboard.pbix) to explore the dashboard.

Use filters and visuals to explore patterns.

🧾 SQL Queries Used (Optional)
Some queries were used in SQL (before cleaning in Python), like:

Finding max/min Health Score

Segmenting by BMI levels

Grouping by symptoms/job roles


🙋‍♀️ Author
Vamshy NK
Data Analyst | Python & BI Enthusiast

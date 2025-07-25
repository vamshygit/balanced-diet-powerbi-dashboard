CREATE DATABASE diet_analysis;
USE diet_analysis;
CREATE TABLE balanced_diet (
    ID INT,
    Age INT,
    Gender VARCHAR(10),
    Working_Type VARCHAR(50),
    Sleep_Hours FLOAT,
    Height_m FLOAT,
    Required_Daily_Calories FLOAT,
    BMI FLOAT,
    Health_Score FLOAT,
    Health_Category VARCHAR(20)
);

SELECT * FROM balanced_diet;

SELECT COUNT(*) FROM balanced_diet;

-- Health Category Count
SELECT Health_Category, COUNT(*) AS Total
FROM balanced_diet
GROUP BY Health_Category;

--  Average Health Score by Gender
SELECT Gender, ROUND(AVG(Health_Score), 2) AS Avg_Score
FROM balanced_diet
GROUP BY Gender;

-- People Sleeping Less Than 6 Hours and Unhealthy
SELECT *
FROM balanced_diet
WHERE Sleep_Hours < 6 AND Health_Category = 'Unhealthy';

-- Average Calories by Working Type
SELECT Working_Type, ROUND(AVG(Required_Daily_Calories), 2) AS Avg_Calories
FROM balanced_diet
GROUP BY Working_Type;

-- Top 10 Healthiest Individuals
SELECT ID, Health_Score, Health_Category
FROM balanced_diet
ORDER BY Health_Score DESC
LIMIT 10;

-- Health Score Range Buckets
SELECT 
  CASE 
    WHEN Health_Score >= 10 THEN 'Excellent (>=10)'
    WHEN Health_Score >= 7 THEN 'Moderate (7-9.9)'
    ELSE 'Poor (<7)'
  END AS Score_Bucket,
  COUNT(*) AS People_Count
FROM balanced_diet
GROUP BY Score_Bucket;

-- Working Type vs Health Category Matrix
SELECT Working_Type, Health_Category, COUNT(*) AS Count
FROM balanced_diet
GROUP BY Working_Type, Health_Category
ORDER BY Working_Type, Health_Category;

-- Gender-wise Avg Sleep and Calories
SELECT Gender, 
       ROUND(AVG(Sleep_Hours), 2) AS Avg_Sleep,
       ROUND(AVG(Required_Daily_Calories), 2) AS Avg_Calories
FROM balanced_diet
GROUP BY Gender;

-- People with High BMI but Still Healthy
SELECT ID, Age, Gender, BMI, Health_Score
FROM balanced_diet
WHERE BMI > 25 AND Health_Category = 'Healthy'
ORDER BY BMI DESC;

--  Unhealthy People with Long Sleep (>8 hrs)
SELECT *
FROM balanced_diet
WHERE Sleep_Hours > 8 AND Health_Category = 'Unhealthy';

-- Top 5 Oldest Healthy People
SELECT ID, Age, Health_Score
FROM balanced_diet
WHERE Health_Category = 'Healthy'
ORDER BY Age DESC
LIMIT 5;

-- Health Score vs BMI Correlation Insight
SELECT ROUND(AVG(BMI), 2) AS Avg_BMI, 
       ROUND(AVG(Health_Score), 2) AS Avg_Score
FROM balanced_diet;




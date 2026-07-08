



This is a collection of data analysis projects showcasing Excel, Python, SQL, Power BI, Tableau, and data visualisation.

## Skills Developed

**Excel & Data Fundamentals:**  
Applied fundamentals of data analysis using Excel, including functions, VLOOKUP, forecasting, chart creation, and data preparation.

**SQL & Database Design:**

Learnt about database design, including ERDs (Entity Relationship Diagrams), and used SQL queries to retrieve, filter, and manipulate data.

**Python (Google Colab):**  
Used Python for data analysis, including retrieving and analysing datasets, and creating visualisations with Matplotlib and Seaborn.

**Tableau & Power BI:**  

Cleaned data using Power Query, set up relationships between tables, and created interactive dashboards using different features and functions to produce visualisations.

## My Projects 
### <ins>Excel & Data Fundamentals</ins>
#### Project 1: Student Performance Analysis
[Download Student Analysis file](student-performance-insights.xlsx)
##### Project Overview

Analysed a student performance dataset to identify which subjects showed the strongest overall performance. 

<img src="https://raw.githubusercontent.com/C-Duberry/Data-Analysis-Portfolio/main/student-performance-analysis.PNG" alt="Student Performance Analysis" width="800" height="317">

#### Project 2: Bike Sales Trends Visualisation
[Bike Sales Visualisation file](bike-sales-visualisation.xlsx)
##### Project Overview

Created pivot tables and charts in Excel to analyse a bike sales dataset, identifying yearly revenue and profit trends, comparing product revenue by country, and evaluating revenue across different customer age groups.

<img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/Age%20group%20reveue%20pie.PNG?raw=true" alt="[revenue across customer age groups](files/Bike Sales Visualisation.xlsx)" width="800" height="367">

### <ins>SQL & Database Design</ins>

 **Project 1: Database Schema Design** 
 
[View SQL Database Schema](database_schema.sql)


Created a relational database design for a fictional small retailer, including an Entity Relationship Diagram (ERD) and SQL schema to structure customer, inventory, supplier, loyalty, and sales data.

<img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/ERD%20Retailer.PNG?raw=true" alt="[revenue across customer age groups](files/Bike Sales Visualisation.xlsx)" width="700" height="446">

**Project 2: SQL Data Exploration**

 
Used SQL to analyse a world statistics dataset by writing queries such as SELECT, WHERE, GROUP BY, and JOIN to manipulate data and extract insights.

##### Filtering

Filtered global life expectancy data to identify countries with the highest and lowest life expectancy values.

```sql
-- Query 1: Countries with highest life expectancy
SELECT Name, LifeExpectancy, Continent
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 10;
```
```sql
-- Query 2: Countries with lowest life expectancy
SELECT Name, LifeExpectancy, Continent
FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy ASC
LIMIT 10;
```

##### Result & Insights

<table>
  <tr>
    <td width="55%">
<img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/life%20expectancy%20data.png?raw=true" alt="[life expectancy data]" width="450" height="200">
    </td>
    <td width="45%"><p>The results show that countries with the highest life expectancy values are mostly located in Europe, while countries with the lowest values are primarily located in Africa.</p>
    </td>
  </tr>
</table>



##### Aggregation

Aggregated country data to show the number of countries within each continent.

```sql
SELECT Continent, COUNT(Name) AS Number_of_Countries
FROM country
GROUP BY Continent;
```

##### Result & Insights

<table>
  <tr>
    <td>
  <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/num%20of%20countries%20per%20con.PNG?raw=true" alt="[number of countries within each continent]" width="260" height="165">
    </td>
    <td><p>The results show that North America has the most countries, while Antarctica has the fewest.</p>
    </td>
  </tr>
</table>

##### JOIN

Used a JOIN to combine country and city data to compare capital cities with the highest and lowest populations.

```sql
-- Highest populated capital cities
SELECT 
    country.Name AS Country,
    city.Name AS Capital_City,
    city.Population
FROM country
JOIN city ON country.Capital = city.ID
ORDER BY city.Population DESC
LIMIT 10;
```
```sql
-- Lowest populated capital cities
SELECT 
    country.Name AS Country,
    city.Name AS Capital_City,
    city.Population
FROM country
JOIN city ON country.Capital = city.ID
ORDER BY city.Population ASC
LIMIT 10;
```

##### Result & Insights

<table>
  <tr>
      <td width="55%">
  <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/city%20population%20comparison.png?raw=true" alt="[capital city populations]" width="500" height="200">
    </td>
        <td width="45%"><p>The results show that Seoul had the largest capital city population in the dataset, while Adamstown in the Pitcairn Islands had the smallest, highlighting how widely capital city populations can vary.</p>
    </td>
  </tr>
</table>

### <ins>Python </ins>
**Project 1: Python Data Cleaning & Transformation** 
 
Worked with Python and Pandas to explore and prepare student performance data by cleaning the dataset, applying filters, and creating new columns.

[View Python Notebook ](python_data.ipynb)

##### Data Cleaning
Cleaned the dataset by removing incomplete records and correcting missing values.
```python
df = df.drop(26)
df.loc[8,"gender"] = "male"
df['class'] = df['class'].replace('Fifth', 'Five')
```
##### Filtering


<table>
  <tr>
     <td width="70%">
 <p>Identified students whose marks were equal to or above the class average.</p>
    </td>
   <td width="30%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-filtering-up.PNG?raw=true" alt="[capital city populations]" width="500" height="150">
    </td>
  </tr>
</table>

```python
df[df["mark"] >= average_mark]
```
 
##### Sorting

<table>
  <tr>
      <td width="70%">
 <p>Sorted students by their marks to identify the highest-performing students.</p>
    </td>
    <td width="30%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-sorting.PNG?raw=true" alt="[capital city populations]" width="500" height="150">
    </td>
  </tr>
</table>

```python
df = df.sort_values(by="mark", ascending=False)
```

##### Column Creation

<table>
  <tr>
      <td width="70%">
 <p>Created a new column called grade with values based on student marks. </p>
    </td>
     <td width="30%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-column-new.PNG?raw=true" alt="[capital city populations]" width="500" height="150">
    </td>
  </tr>
</table>

```python
df.loc[df["mark"] >= 85, "grade"] = "A"
df.loc[(df["mark"] >= 70) & (df["mark"] <= 84), "grade"] = "B"
df.loc[(df["mark"] >= 60) & (df["mark"] <= 69), "grade"] = "C"
df.loc[df["mark"] < 60, "grade"] = "D"
```

**Project 2: Python & Data Visualisation** 

Created data visualisations using Matplotlib and Seaborn to analyse student performance data. 

[View Python Notebook ](python_visualisationx.ipynb)

#### Bar Chart 

<table>
  <tr>
      <td width="60%">
 <p>The bar chart shows the average mark for each class. Class 6 has the highest average, while Class 9 has the lowest. Excluding Class 9, all classes achieved an average mark above 50. </p>
    </td>
     <td width="40%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-bar-chart.PNG?raw=true" alt="[capital city populations]" width="350" height="276">
    </td>
  </tr>
</table>

#### Scatter Plot

<table>
  <tr>
      <td width="60%">
 <p>The scatter plot shows a similar distribution of marks across both genders. Female students achieved slightly higher marks overall, while one male student appears as a clear low-scoring outlier. </p>
    </td>
     <td width="40%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-scatter-plot.PNG?raw=true" alt="[Scatter plot]" width="350" height="276">
    </td>
  </tr>
</table>

#### Box Plot

<table>
  <tr>
      <td width="60%">
 <p>The box plot shows the distribution of marks across each class. Class 9 appears lower due to its small group size, while Class 6 shows an unusually low value compared to the rest of the class.</p>
    </td>
     <td width="40%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-box-plot.PNG?raw=true" alt="[Box plot]" width="350" height="276">
    </td>
  </tr>
</table>

### <ins>Tableau & Power BI</ins>


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
### <ins>Excel & Data Fundementals</ins>
#### Project 1: Student Performance Analysis
[Student Analysis file](files/student-analysis.xlsx)
##### Project Overview

Analysed a student performance dataset to identify which subjects showed the strongest overall performance. 

<img src="https://raw.githubusercontent.com/C-Duberry/Data-Analysis-Portfolio/main/student-performance-analysis.PNG" alt="Student Performance Analysis" width="800" height="317">

#### Project 2: Bike Sales Trends Visualisation
[Bike Sales Visualisation file](files/bike-sales-visualisation.xlsx)
##### Project Overview

Created pivot tables and charts in Excel to analyse a bike sales dataset, identifying yearly revenue and profit trends, comparing product revenue by country, and evaluating revenue across different customer age groups.

<img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/Age%20group%20reveue%20pie.PNG?raw=true" alt="[revenue across customer age groups](files/Bike Sales Visualisation.xlsx)" width="800" height="367">

### <ins>SQL & Database Design</ins>

#### Project 1: Database Schema Design
[View SQL Database Schema](files/database_schema.sql)
##### Project Overview

Created a relational database design for a fictional small retailer, including an Entity Relationship Diagram (ERD) and SQL schema to structure customer, inventory, supplier, loyalty, and sales data.

<img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/ERD%20Retailer.PNG?raw=true" alt="[revenue across customer age groups](files/Bike Sales Visualisation.xlsx)" width="700" height="446">

#### Project 2: Database Schema Design
 **Project Overview**
 
Used SQL to analyse a world statistics dataset by writing queries such as SELECT, WHERE, GROUP BY, and JOIN to manipulate data and extract insights.

##### Filtering

Filters countries with populations between 500,000 and 1,000,000 and displays them in descending order from highest to lowest population.

```sql
SELECT Name, Population
FROM country
WHERE Population BETWEEN 500000 AND 1000000
ORDER BY Population DESC;
```


<img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/country%20population%20data.PNG?raw=true" alt="[revenue across customer age groups](files/Bike Sales Visualisation.xlsx)" width="150" height="165">

##### Insights

The results highlighted the variation in population sizes among countries within this range, with East Timor having the highest population and Comoros the lowest.
<table>
  <tr>
    <td>
  <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/country%20population%20data.PNG?raw=true" alt="[revenue across customer age groups](files/Bike Sales Visualisation.xlsx)" width="150" height="165">
    </td>
    <td><p>The results highlighted the variation in population sizes among countries within this range, with East Timor having the highest population and Comoros the lowest.</p>
    </td>
  </tr>
</table>

##### Aggregation

```sql
SELECT Continent, COUNT(Name) AS Number_of_Countries
FROM country
GROUP BY Continent;;
```

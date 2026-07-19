# <ins>SQL & Database Design</ins>

<br>

## Project 1: Database Schema Design
 
[View SQL Database Schema](database_schema.sql)


Created a relational database design for a fictional small retailer, including an Entity Relationship Diagram (ERD) and SQL schema to structure customer, inventory, supplier, loyalty, and sales data.

<img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/ERD%20Retailer.PNG?raw=true" alt="[revenue across customer age groups](files/Bike Sales Visualisation.xlsx)" width="700" height="446">

<br>

---
<br>

## Project 2: SQL Data Exploration

 
Used SQL to analyse a world statistics dataset by writing queries such as SELECT, WHERE, GROUP BY, and JOIN to manipulate data and extract insights.

<br>

### <ins>Filtering</ins>

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

#### Result & Insights

<table>
  <tr>
    <td width="60%">
<img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/life-expectancy.PNG?raw=true" alt="[life expectancy data]" width="550" height="230">
    </td>
    <td width="40%"><p>The results show that countries with the highest life expectancy values are mostly located in Europe, while countries with the lowest values are primarily located in Africa.</p>
    </td>
  </tr>
</table>

<br>

### <ins>Aggregation</ins>

Aggregated country data to show the number of countries within each continent.

```sql
SELECT Continent, COUNT(Name) AS Number_of_Countries
FROM country
GROUP BY Continent
ORDER BY Number_of_Countries DESC;
```

#### Result & Insights

<table>
  <tr>
    <td>
  <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/num%20of%20countries%20per%20cont.PNG?raw=true" alt="[number of countries within each continent]" width="350" height="180">
    </td>
    <td><p>The results show that North America has the most countries, while Antarctica has the fewest.</p>
    </td>
  </tr>
</table>

<br>

### <ins>JOIN</ins>

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

#### Result & Insights

<table>
  <tr>
      <td width="55%">
  <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/capital-city-population.png?raw=true" alt="[capital city populations]" width="550" height="230">
    </td>
        <td width="45%"><p>The results show that Seoul had the largest capital city population in the dataset, while Adamstown in the Pitcairn Islands had the smallest, highlighting how widely capital city populations can vary.</p>
    </td>
  </tr>
</table>

<br>

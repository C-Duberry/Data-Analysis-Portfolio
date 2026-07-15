## <ins>Python </ins>

### Project 1: Python Data Cleaning & Transformation
 
Worked with Python and Pandas to explore and prepare student performance data by cleaning the dataset, applying filters, and creating new columns.

[View Python Notebook ](python_datax.ipynb)

<br>

#### Data Cleaning
Cleaned the dataset by removing incomplete records and correcting missing values.
```python
df = df.drop(26)
df.loc[8,"gender"] = "male"
df['class'] = df['class'].replace('Fifth', 'Five')
```
<br>

#### Filtering

<table>
  <tr>
     <td width="70%">
 <p>Identified students whose marks were equal to or above the class average.</p>
    </td>
   <td width="30%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-filtering-up.PNG?raw=true" alt="[Python filtering]" width="500" height="150">
    </td>
  </tr>
</table>

```python
df[df["mark"] >= average_mark]
```
 <br>
 
#### Sorting

<table>
  <tr>
      <td width="70%">
 <p>Sorted students by their marks to identify the highest-performing students.</p>
    </td>
    <td width="30%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-sorting.PNG?raw=true" alt="[Python sorting]" width="500" height="150">
    </td>
  </tr>
</table>

```python
df = df.sort_values(by="mark", ascending=False)
```
<br>

#### Column Creation

<table>
  <tr>
      <td width="70%">
 <p>Created a new column called grade with values based on student marks. </p>
    </td>
     <td width="30%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-column-new.PNG?raw=true" alt="[Column Creation]" width="500" height="150">
    </td>
  </tr>
</table>

```python
df.loc[df["mark"] >= 85, "grade"] = "A"
df.loc[(df["mark"] >= 70) & (df["mark"] <= 84), "grade"] = "B"
df.loc[(df["mark"] >= 60) & (df["mark"] <= 69), "grade"] = "C"
df.loc[df["mark"] < 60, "grade"] = "D"
```
<br>

### Project 2: Python & Data Visualisation

Created data visualisations using Matplotlib and Seaborn to analyse student performance data. 

[View Python Notebook ](python_visualisationx.ipynb)

<br>

#### Bar Chart 

<table>
  <tr>
      <td width="60%">
 <p>The bar chart shows the average mark for each class. Class 6 has the highest average, while Class 9 has the lowest. Excluding Class 9, all classes achieved an average mark above 50. </p>
    </td>
     <td width="40%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-bar-chart.PNG?raw=true" alt="[Bar chart]" width="350" height="276">
    </td>
  </tr>
</table>

#### Count Plot

<table>
  <tr>
      <td width="60%">
 <p>The count plot shows the number of students in each class. Class Seven has the most students, while Class Eight has the fewest. The chart highlights the variation in class sizes across the dataset. </p>
    </td>
     <td width="40%">
     <img src="https://github.com/C-Duberry/Data-Analysis-Portfolio/blob/main/python-count-plot.PNG?raw=true" alt="[Scatter plot]" width="350" height="276">
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

<br> 

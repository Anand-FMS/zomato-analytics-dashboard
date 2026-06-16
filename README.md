**Zomato Restaurant Analytics Dashboard**



**Project Overview :**



This project analyzes restaurant ratings, pricing segments, customer engagement, and city-level performance using PostgreSQL, SQL, Excel, and Power BI.



The goal was to analyze restaurant performance data and generate actionable business insights through SQL analysis and interactive Power BI dashboards.



**Tools Used :**



\* PostgreSQL

\* SQL

\* Excel

\* Power BI



**Data Preparation :**



\* Removed duplicate restaurant records

\* Standardized rating categories

\* Removed incomplete and inconsistent records
\* Prepared the dataset for SQL analysis and dashboard reporting



**SQL Analysis Performed :**



1. **Exploratory Analysis**



\* Total restaurants in the dataset

\* Total cities covered

\* City distribution analysis

\* Restaurant rating distribution

\* Cost segment distribution



**2. Business Analysis**



\* Most popular restaurants by popularity score

\* Highest-rated cities

\* Cities with the largest restaurant concentration

\* Impact of online delivery on ratings and customer engagement

\* Impact of table booking on ratings and customer engagement

\* Performance comparison across pricing segments

\* Top restaurants per city using Window Functions (DENSE\_RANK)

\* Identification of highly rated restaurants with low customer awareness

\* Best restaurant in each city using ROW\_NUMBER()

\* Identification of smaller markets with high customer satisfaction and low restaurant density



**SQL Techniques Used :**



\* Aggregations (COUNT, AVG)

\* GROUP BY and HAVING

\* Common Table Expressions (CTEs)

\* Window Functions (DENSE\_RANK, ROW\_NUMBER)

\* Business KPI Analysis

\* Conditional Filtering



**Dashboard Pages :**



1. **Executive Overview**



Displays:



\* Total Restaurants

\* Total Cities

\* Average Rating

\* Average Cost

\* Total Votes

\* Restaurant distribution by city

\* Rating distribution

\* Cost segment analysis



**2. Customer \& Rating Analysis**



Displays:



\* Average Rating by City

\* Online Delivery vs Rating

\* Table Booking vs Rating

\* Votes vs Rating correlation



**Key Insights :**



\* Significant variation exists in average restaurant ratings across different cities.

\* Restaurants offering table booking generally receive higher ratings.

\* Restaurants offering online delivery generally receive higher customer engagement, measured through votes and ratings.

\* Low and Medium cost restaurants dominate the dataset.

\* Higher customer votes tend to correlate with higher ratings.



**Files Included :**



\* SQL Scripts

\* Cleaned Dataset

\* Power BI Dashboard (.pbix)

\* Dashboard Screenshots



**Project Structure :**



1. datasets

2\. sql

3\. powerbi

4\. screenshots

5\. README.md


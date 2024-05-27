# Pizza Sales Analysis Dashboard

This project presents an analysis of pizza sales data using a dashboard created with Excel and MySQL for querying the data. The dashboard provides insights into various aspects of the sales performance, including daily and hourly order trends, sales by pizza category and size, and the best and worst-selling pizzas.

## Table of Contents
- [Overview](#overview)
- [Dashboard Highlights](#dashboard-highlights)
- [Technologies Used](#technologies-used)
- [Data Sources](#data-sources)
- [Setup and Usage](#setup-and-usage)
- [Data Cleaning and Transformation](#data-cleaning-and-transformation)
- [Table Structure](#table-structure)
- [SQL Queries](#sql-queries)
- [License](#license)

## Overview
The Pizza Sales Analysis Dashboard is designed to help understand the sales patterns and trends of a pizza shop. The key metrics and visualizations included in the dashboard are:
- Total revenue
- Average order value
- Total pizzas sold
- Total orders
- Average pizzas per order
- Daily and hourly trends for orders
- Sales distribution by pizza category and size
- Best and worst-selling pizzas

## Dashboard Highlights
### Summary of Orders
- **Peak Days:** Friday, Saturday, and Thursday are the busiest days for pizza orders.
- **Peak Times:** 12 AM to 1 AM and 5 PM to 6 PM are the busiest hours.

### Summary of Sales and Sold Pizzas
- **Popular Category:** Classic pizzas are mostly sold.
- **Popular Size:** Large pizzas contribute more to sales.
- **Sales Contribution:** All pizza categories contribute approximately 23% to 26% of the total sales.

### Key Metrics
- **Total Revenue:** ₹817,860.05
- **Average Order Value:** ₹38.31
- **Total Pizzas Sold:** 49,574
- **Total Orders:** 21,350
- **Average Pizzas Per Order:** 2.32

### Top 5 Best-Selling Pizzas
1. The Classic Deluxe Pizza - 2453 sold
2. The Barbecue Chicken Pizza - 2439 sold
3. The Hawaiian Pizza - 2422 sold
4. The Pepperoni Pizza - 2418 sold
5. The Thai Chicken Pizza - 2371 sold

### Bottom 5 Worst-Selling Pizzas
1. The Spinach Supreme Pizza - 950 sold
2. The Soppressata Pizza - 961 sold
3. The Mediterranean Pizza - 934 sold
4. The Calabrese Pizza - 937 sold
5. The Brie Carre Pizza - 490 sold

### Note
- Data for the year 2016 is not available and thus not included in the dashboard.

## Technologies Used
- **MySQL:** For querying the database and retrieving the necessary data.
- **Excel:** For creating the dashboard and visualizations.

## Data Sources
The data used in this analysis comes from Kaggle. The dataset includes information on order dates, pizza categories, pizza sizes, and sales amounts. The dataset has been cleaned and transformed to ensure accuracy and consistency.

## Setup and Usage
### Prerequisites
- MySQL installed on your system.
- Excel or any spreadsheet software that supports pivot tables and charts.

### Steps
1. **Database Setup:**
   - Import the provided sales data into your MySQL database.
   - Use the provided SQL queries to retrieve data for analysis.

2. **Excel Dashboard:**
   - Open the Excel file and load the data retrieved from MySQL.
   - Use pivot tables and charts to create visualizations as shown in the dashboard.

## Data Cleaning and Transformation
The raw data from Kaggle underwent several cleaning and transformation steps, including:
- Removing duplicate records
- Handling missing values
- Normalizing data formats (e.g., date and time)
- Aggregating data for summary statistics

These steps ensured that the data was accurate and ready for analysis.

## Table Structure
The data is stored in a table named `pizza_sales` with the following columns:

| Column Name          | Data Type | Description                               |
|----------------------|-----------|-------------------------------------------|
| `pizza_id`           | int       | Unique identifier for each pizza          |
| `order_id`           | int       | Unique identifier for each order          |
| `pizza_name_id`      | text      | Identifier for the pizza name             |
| `quantity`           | int       | Number of pizzas ordered                  |
| `order_date`         | date      | Date when the order was placed            |
| `order_time`         | text      | Time when the order was placed            |
| `unit_price`         | double    | Price per unit of pizza                   |
| `total_price`        | double    | Total price for the order                 |
| `pizza_size`         | text      | Size of the pizza (e.g., L, M, XL)        |
| `pizza_category`     | text      | Category of the pizza (e.g., Classic, Veggie) |
| `pizza_ingredients`  | text      | Ingredients used in the pizza             |
| `pizza_name`         | text      | Name of the pizza                         |

## SQL Queries
The SQL queries used for retrieving data are stored in the repository. Please refer to the `pizza_sales_query.sql` file in the repository for the detailed SQL scripts.



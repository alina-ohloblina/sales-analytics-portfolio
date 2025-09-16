# sales-analytics-portfolio
https://public.tableau.com/app/profile/alina.ohloblina/viz/Salesanalytics_17580224667530/Dashboard1?publish=yes
# 🛍️ Sales Analytics Portfolio Project

## 📁 Overview

This project demonstrates end-to-end sales analytics for an online store using **SQL**, **Python**, and **Tableau**. The goal was to extract, analyze, and visualize sales data to uncover business insights and showcase technical proficiency across the data pipeline.

---

## 🧰 Tools & Technologies

- **Google BigQuery** – SQL-based data extraction
- **Python (Jupyter Notebook)** – Exploratory data analysis, statistical testing, and visualization
- **Tableau Public** – Interactive dashboard creation

---

## 🗃️ Dataset Construction

A custom dataset was created by joining multiple tables from the BigQuery database. The final dataset includes:

- **Order/session metadata**: `order_date`, `session_id`, `continent`, `country`, `device`, `browser`, `device_model_name`, `operating_system`, `browser_language`
- **Traffic info**: `traffic_source_info`, `traffic_channel`
- **User data**: `registered_user_id`, `email_confirmed`, `newsletter_subscribed`
- **Product details**: `product_category`, `product_name`, `price`, `short_product_description`

> **Join strategy**: Left joins were used to retain all sessions and orders, including those without registered users.

---

## 📊 Dataset Summary

- **Total columns**: 18  
- **Numeric columns**: `price`  
- **Categorical columns**: 13 (e.g., `continent`, `country`, `device`, etc.)  
- **Datetime columns**: `order_date`  
- **Boolean columns**: `email_confirmed`, `newsletter_subscribed`  
- **Unique sessions**: ~X,XXX  
- **Time period**: YYYY-MM-DD to YYYY-MM-DD  
- **Missing values**: Present in user-related fields due to anonymous sessions  
- **Most missing**: `registered_user_id`, `email_confirmed`, `newsletter_subscribed`

---

## 📈 Analysis Highlights

### 🌍 Regional Performance
- Top-3 continents and top-5 countries by total sales and order volume

### 🛒 Product Insights
- Top-10 product categories globally
- Top-10 categories in the highest-sales country

### 📱 Device & Traffic Breakdown
- Sales by device type and model (% of total)
- Sales by traffic source (% of total)

### 👤 User Behavior
- % of registered users who confirmed email
- % who unsubscribed from newsletter
- Sales comparison: subscribed vs. unsubscribed users
- Top countries by registered users

### 📅 Sales Dynamics
- Daily sales trends and seasonality
- Sales by continent, traffic channel, and device type

### 📊 Pivot Tables
- Sessions by traffic channel and device type
- Sales by product category across top countries
- Custom pivot tables for deeper segmentation

### 📐 Statistical Analysis
- Correlation between sessions and sales
- Inter-continent and inter-channel sales correlations
- Group differences: registered vs. unregistered users
- Traffic channel comparisons and organic traffic proportions

---

## 📊 Tableau Dashboard

An interactive dashboard was published to **Tableau Public**, featuring:

- Sales trends and breakdowns
- Regional and product performance
- Device and traffic insights

> Dashboard limited to 2 pages for clarity and usability.

---

## 📌 Conclusion

This project demonstrates the ability to:
- Extract and transform complex datasets using SQL
- Perform in-depth exploratory and statistical analysis in Python
- Build compelling visual narratives using Tableau

Feel free to explore the notebook and dashboard to dive deeper into the insights!

---

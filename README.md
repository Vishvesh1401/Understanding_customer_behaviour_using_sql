# Customer Retention & Repeat Purchase Analysis (SQL)

## Overview
This project analyzes e-commerce transaction data to understand customer behavior, focusing on new vs repeat purchases, revenue contribution, and geographic patterns using SQL.

## Dataset
The dataset contains order-level transaction data including customer identifiers, purchase dates, product details, quantities, prices, and country.

## Business Questions
- Who are new vs repeat customers?
- How much revenue comes from repeat customers?
- How deeply do customers engage (orders per customer)?
- How does customer behavior vary by country?


## Structure
SQL logic is organized step-by-step, from data understanding to customer behavior analysis.


Invalid records (missing customer IDs, non-positive quantities or prices) are excluded during analysis.

---

## 🛠 Tools Used
- **MySQL** – data cleaning, transformation, and analysis
- **MySQL Workbench** – query execution
- **Tableau Public** – visualization and storytelling

---


- SQL files are organized step-by-step, from data preparation to behavioral analysis.
- `tableau_changes.sql` contains the final queries used to generate CSVs for Tableau dashboards.

---

## ❓ Business Questions Answered
- Who are **new vs repeat customers**?
- How much **revenue comes from repeat customers**?
- How many orders do customers place on average?
- Which countries generate the most revenue?
- How does new vs repeat customer behavior vary by country?

---

## 📈 Key Analysis Highlights
- Customers are classified as **New** or **Repeat** based on their first purchase date.
- Repeat customers, while fewer in number, contribute a significant share of revenue.
- Customer engagement depth is measured using average orders per customer.
- Revenue and retention dynamics differ across countries, indicating region-specific behavior patterns.

Detailed takeaways are documented in `insights/insights.md`.

---

## 📊 Tableau Dashboard
The final SQL outputs were exported as CSVs and visualized using **Tableau Public**.

🔗 **Interactive Dashboard:**  
(https://public.tableau.com/app/profile/vish.g145/viz/AnalysingCustomerBehaviour/Dashboard1)

The dashboard includes:
- Revenue contribution: New vs Repeat customers
- Order volume by customer type
- Top countries by revenue

---



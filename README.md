# Retail Customer Churn & Sales Analytics Portfolio Project

## 📌 Project Overview
An end-to-end data analytics project combining **PostgreSQL** data logic with professional **Tableau** visualization. The primary objective is to analyze retail transactional data, track behavioral customer retention tiers, and correlate them with financial performance metrics (**Gross Sales** and **Net Sales**) across different customer segments and sales channels.

---

## 🛠️ Tech Stack & Skills Demonstrated
* **Database & Query Logic:** PostgreSQL (Data modeling, aggregations, recency calculations, conditional churn segmentation).
* **Data Visualization & BI:** Tableau (Interactive dashboard design, KPI tracking, layout containers, and cross-filtering).
* **Version Control:** GitHub (Repository documentation and structural workflow management).

---

## 📐 Business Logic & Churn Definition
Customer churn is defined using a **recency-based behavioral model** based on the number of days since their last recorded order:
* **Active:** < 45 days since last order
* **At-Risk:** 45 – 90 days since last order
* **Churned:** > 90 days since last order

---

## 📊 Dashboard & Analytical Insights
The Tableau dashboard is structured around three primary analytical views:
1. **Churn Risk Overview:** Visualizes behavioral retention tiers to highlight the volume of active versus lost customers.
2. **Sales by Channel:** Tracks revenue performance across multiple sales touchpoints (**Mobile App, Website, Marketplace, Social Media**) to identify top acquisition drivers.
3. **Sales by Segment:** Correlates tier structures (**VIP, Premium, Consumer, Business**) against financial volume to prioritize high-value retention efforts.

---

## 📂 Repository Structure
* [`churn_logic.sql`](./churn_logic.sql): Contains the core PostgreSQL script used for data aggregation and recency-based churn classification.
* **Sample Data Files:** Lightweight CSV files (`customer_master.csv`, `product_catalog.csv`, `dataset_statistics.csv`) included for data structure and schema reference.

---

## 🚀 How to Review
1. Review the backend query logic in [`churn_logic.sql`](./churn_logic.sql).
2. Explore the reference schemas via the included CSV files.
3. Check out the project highlights and business insights documented above!

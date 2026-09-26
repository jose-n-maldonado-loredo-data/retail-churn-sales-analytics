# Retail Customer Churn & Sales Analytics Portfolio Project

## 📊 Project Overview
An end-to-end data analytics project combining **PostgreSQL** data logic with an interactive **Tableau** dashboard. The objective is to correlate customer churn status with high-level financial performance metrics (`Gross Sales` and `Net Sales`) across customer segments and sales channels to support strategic retention campaigns.

## 🛠️ Tech Stack
* **Database & Logic:** PostgreSQL (Data modeling, aggregation, and recency logic)
* **Visualization & BI:** Tableau (Interactive dashboard design, mark labeling, and container layouts)

## 📐 Business Logic & Metrics
* **Churn Definition (Recency-based):**
  * **Active:** $< 45$ days since last order
  * **At-Risk:** $45 - 90$ days since last order
  * **Churned:** $> 90$ days since last order
* **Core KPIs:** Gross Sales, Net Sales, Customer Count by Risk Tier.
* **Dimensions:** Customer Segments (VIP, Premium, Consumer, Business) and Sales Channels (Mobile App, Website, Marketplace, Social Media).

## 📈 Dashboard Highlights
1. **Churn Risk Overview:** Visualizes behavioral retention tiers to highlight the volume of at-risk and lost customers.
2. **Sales by Channel:** Tracks revenue performance across multiple sales touchpoints to identify high-grossing acquisition channels.
3. **Sales by Segment:** Correlates tier structures (e.g., Consumer and Premium) against financial volume to prioritize high-value retention efforts.

## 🚀 How to View
1. Clone or download this repository.
2. Open the packaged Tableau workbook (`.twbx`) located in the `dashboard/` folder using Tableau Desktop or Tableau Public.

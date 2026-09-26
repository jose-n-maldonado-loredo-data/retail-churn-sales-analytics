-- Retail Customer Churn & Sales Analytics Logic
-- Calculates customer recency, assigns behavioral churn tiers, and aggregates KPIs.

WITH customer_last_order AS (
    SELECT
        customer_id,
        customer_segment,
        sales_channel,
        MAX(order_date) AS last_order_date,
        SUM(gross_sales) AS total_gross_sales,
        SUM(net_sales) AS total_net_sales
    FROM retail_transactions
    GROUP BY customer_id, customer_segment, sales_channel
),

customer_churn_status AS (
    SELECT
        customer_id,
        customer_segment,
        sales_channel,
        total_gross_sales,
        total_net_sales,
        last_order_date,
        -- Assuming current reference date is today or max date in dataset
        CURRENT_DATE - last_order_date AS days_since_last_order,
        CASE 
            WHEN (CURRENT_DATE - last_order_date) < 45 THEN 'Active'
            WHEN (CURRENT_DATE - last_order_date) BETWEEN 45 AND 90 THEN 'At-Risk'
            ELSE 'Churned'
        END AS churn_risk_status
    FROM customer_last_order
)

SELECT
    churn_risk_status,
    customer_segment,
    sales_channel,
    COUNT(customer_id) AS distinct_customers,
    SUM(total_gross_sales) AS gross_sales,
    SUM(total_net_sales) AS net_sales
FROM customer_churn_status
GROUP BY churn_risk_status, customer_segment, sales_channel;
# 🛒 E-Commerce Performance Dashboard (XYZ Company)

## 📊 Overview
This project presents a **sales performance analysis** of XYZ Store’s e-commerce operations, visualized through **Looker Studio (Google Data Studio)**.  
The dashboard highlights key metrics such as revenue, orders, delivery rate, and payment method distribution, providing a comprehensive overview of overall store performance.

🔗 **Dashboard:** [View on Looker Studio](https://lookerstudio.google.com/reporting/9dc5aa90-b22d-4285-9dfa-9e7a03600085)  
📂 **Dataset:** [OpenDataBay – E-Commerce Dataset](https://www.opendatabay.com/data/consumer/7f21cfbe-afa0-421c-972e-71ae08d85e8d)

---

## 🧾 Dataset Description
The dataset represents a structured e-commerce system divided into multiple tables, each serving a specific purpose. It contains detailed information about orders, products, customers, payments, and sellers.

### Tables Overview
- **Orders Table**: Contains core information about each order, such as its status, timestamps, and estimated delivery dates.  
- **Order Items Table**: Links orders with products and sellers, including item prices and shipping charges.  
- **Customers Table**: Stores basic customer information like city, state, and postal code prefix.  
- **Payments Table**: Records details about payment methods, installment counts, and payment values.  
- **Products Table**: Includes product attributes such as category, dimensions, and weight.  

The dataset is distributed in CSV format and originally divided into *train* and *test* directories.  
For this analysis, **only the training data** was used to perform SQL-based analysis and dashboard visualization.

---

## 📈 Key Insights
This dashboard provides 9 key insights derived from SQL analysis:

1. **Total Sales** – Total sum of all payment values  
2. **On-time Delivery Rate** – Percentage of delivered orders completed on time  
3. **Cancellation Rate** – Percentage of canceled orders  
4. **Sales Trends by Month** – Monthly total sales trend over time  
5. **Total Sales by Product Category** – Contribution of each product category to total sales  
6. **Top 5 Sellers by Sales Performance** – Sellers with the highest total sales and order count  
7. **Order Status Distribution** – Total number of orders for each status type  
8. **Payment Method Distribution** – Proportion of payment methods used (credit card, debit, etc.)  
9. **Customer Distribution by City** – Geographic concentration of customers across cities  

---

## 🧰 Tools & Technologies
- **MySQL** – Data transformation and aggregation  
- **Google Looker Studio** – Interactive data visualization  

---

## 📌 Purpose
This project was created to:
- Demonstrate **end-to-end data analysis** from raw data to interactive dashboard  
- Practice **SQL querying and visualization design**  
- Provide **business insights** that help evaluate e-commerce performance  

---

## 👤 Author
**Filbert Naldo Wijaya**  
💼 [GitHub: iZekCode](https://github.com/iZekCode)

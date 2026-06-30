# 📊 Restaurant Inventory Control & Supply Chain Optimization Portal

## 🎯 Project Overview
An enterprise-grade, end-to-end Business Intelligence solution designed to transition restaurant operations from reactive tracking to proactive supply chain risk management. This project integrates an engineered SQL database backend with a dynamic 2-page Power BI dashboard to monitor demand volatility, optimize safety stock buffers, and predict inventory stockouts before they impact restaurant profit margins.

---

## 📁 Repository Structure
To protect corporate data privacy, the raw datasets are withheld. The complete engineering logic and production layouts are fully accessible via the following files:
* query.sql - The complete, optimized production SQL script containing database schemas, primary/foreign key definitions, and analytical data population queries.
*# 📊 Restaurant Inventory Control & Supply Chain Optimization Portal

## 🎯 Project Overview
An enterprise-grade, end-to-end Business Intelligence solution designed to transition restaurant operations from reactive tracking to proactive supply chain risk management. This project integrates an engineered SQL database backend with a dynamic 2-page Power BI dashboard to monitor demand volatility, optimize safety stock buffers, and predict inventory stockouts before they impact restaurant profit margins.

---

## 📁 Repository Structure
To protect corporate data privacy, the raw datasets are withheld. The complete engineering logic and production layouts are fully accessible via the following files:
* query.sql - The complete, optimized production SQL script containing database schemas, primary/foreign key definitions, and analytical data population queries.
*<img width="1307" height="742" alt="Screenshot 2026-06-30 202820" src="https://github.com/user-attachments/assets/e2e936f2-e22b-4432-a952-07a9f3469449" />

* <img width="1290" height="723" alt="Screenshot 2026-06-30 202852" src="https://github.com/user-attachments/assets/73d3c09a-3235-44b0-9e81-a43c7ae6fbcb" />


---

## 🛠️ Tech Stack & Skills Demonstrated
* Database Engineering: Relational Data Modeling, Primary/Foreign Key indexing, Entity-Relationship (ER) optimization, and data normalization.
* Advanced DAX & Power BI Engineering: Context-aware filtering, cross-report interactions, conditional formatting logic, and multi-page dashboard execution.
* Technical Problem Solving: Resolved cross-table granularity constraints by bypassing mismatched dimension lookups and binding structural aggregations directly to the underlying fact grain, eliminating row-duplication bugs.

---

## 🗄️ Backend Data Engineering (SQL Architecture)
The backend layer normalizes flat data into an optimized relational schema. It creates dedicated lookup dimensions (`dim_locations`, `dim_food_items`) and a central tracking table to maintain stock targets and safety buffers.

The full script is available in the query.sql file in this repository, structured around production DDL and DML operations:
* DDL Architecture: Explicit definitions for auto-incrementing identity primary keys, strict data types (`INT`, VARCHAR, `DECIMAL`), and structural constraint logic.
* DML Population: Safe extraction of unique entities using SELECT DISTINCT filters and validation rules to handle NULL exception entries smoothly.

---

## 📊 Dashboard Architecture

### Page 1: Executive Performance & Profitability
* Focuses on historical financial trends, multi-channel platform performance (Zomato, Swiggy, Dine-In), and high-level brand revenue tracking.

### Page 2: Supply Chain & Inventory Optimization
* Outlet Filter (Slicer): Allows regional operations managers to dynamically isolate and analyze specific restaurant hubs.
* Demand Volatility Visual: A Clustered Column Chart capturing volume distribution metrics across core menu items.
* Predictive Runout Grid: A live operational risk table utilizing a custom DAX measure (`Days of Supply`) to automatically flag any menu item dropping below critical buffer thresholds (under 8.5 days of supply) in real-time.

---

## 💡 Business Impact
Instead of looking solely at lagging, static historical charts, this portal acts as a proactive operational assistant. Restaurant managers can instantly identify supply chain vulnerabilities, protect local kitchen margins, and ensure 100% ingredient availability across online food aggregators and dine-in locations. - Full-screen production snapshot of the historical financial performance layout.
* Page2_Supply_Chain_Dashboard.png - Full-screen production snapshot of the operational inventory risk portal.

---

## 🛠️ Tech Stack & Skills Demonstrated
* Database Engineering: Relational Data Modeling, Primary/Foreign Key indexing, Entity-Relationship (ER) optimization, and data normalization.
* Advanced DAX & Power BI Engineering: Context-aware filtering, cross-report interactions, conditional formatting logic, and multi-page dashboard execution.
* Technical Problem Solving: Resolved cross-table granularity constraints by bypassing mismatched dimension lookups and binding structural aggregations directly to the underlying fact grain, eliminating row-duplication bugs.

---

## 🗄️ Backend Data Engineering (SQL Architecture)
The backend layer normalizes flat data into an optimized relational schema. It creates dedicated lookup dimensions (`dim_locations`, `dim_food_items`) and a central tracking table to maintain stock targets and safety buffers.

The full script is available in the query.sql file in this repository, structured around production DDL and DML operations:
* DDL Architecture: Explicit definitions for auto-incrementing identity primary keys, strict data types (`INT`, VARCHAR, `DECIMAL`), and structural constraint logic.
* DML Population: Safe extraction of unique entities using SELECT DISTINCT filters and validation rules to handle NULL exception entries smoothly.

---

## 📊 Dashboard Architecture

### Page 1: Executive Performance & Profitability
* Focuses on historical financial trends, multi-channel platform performance (Zomato, Swiggy, Dine-In), and high-level brand revenue tracking.

### Page 2: Supply Chain & Inventory Optimization
* Outlet Filter (Slicer): Allows regional operations managers to dynamically isolate and analyze specific restaurant hubs.
* Demand Volatility Visual: A Clustered Column Chart capturing volume distribution metrics across core menu items.
* Predictive Runout Grid: A live operational risk table utilizing a custom DAX measure (`Days of Supply`) to automatically flag any menu item dropping below critical buffer thresholds (under 8.5 days of supply) in real-time.

---

## 💡 Business Impact
Instead of looking solely at lagging, static historical charts, this portal acts as a proactive operational assistant. Restaurant managers can instantly identify supply chain vulnerabilities, protect local kitchen margins, and ensure 100% ingredient availability across online food aggregators and dine-in locations.

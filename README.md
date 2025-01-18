# Creating an Xbox Sales Dashboard

[dashboard_image_broken](assets/dashboard_image.png)

This repository organizes, analyzes, and visualizes sales data for the Xbox platform. The project transforms raw data into actionable insights through a well-structured Excel dashboard.

## Project Overview

The project involves the following phases:

### Phase 1: Initial Database Transformation
The raw data is provided in the file `base_de_dados.xlsx`. This file is analyzed and converted into an SQL-compatible format, resulting in the script `xbox_dashboard.sql`, which creates the database and tables in MySQL.

### Phase 2: Database Adjustments
The SQL database is further refined and implemented locally using a MySQL server. Adjustments include table optimizations and adding any necessary constraints or indexes for efficient querying.

### Phase 3: Query Design
Key business questions are formulated to extract meaningful insights from the database. Corresponding SQL queries are written and stored in the `queries/` directory. These queries address specific aspects of sales performance and trends.

### Phase 4: Data Extraction
Query results are exported from MySQL into a new Excel file, `loaded_xbox_dashboard.xlsx`, which serves as the foundation for the dashboard.

### Phase 5: Dashboard Creation
Using the query results, the `loaded_xbox_dashboard.xlsx` file is implemented with pivot tables and pivot charts to create a comprehensive Xbox Sales Dashboard.

## Dashboard Features
- **Sales Trends:** Visual representation of sales over time.
- **Top Products:** Insights into the best-performing Xbox products.
- **Regional Analysis:** Breakdown of sales by geographical region.
- **Performance Metrics:** Key performance indicators (KPIs) for tracking sales success.

## Setup Instructions

### Prerequisites
- MySQL server installed
- Access to a MySQL client or GUI
- Microsoft Excel (or a compatible alternative)
- Internet access and link to [tableconvert.com](https://tableconvert.com/)

### Steps to Reproduce
1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-repo/xbox_sales_dashboard
   ```   

2. **Convert `base_de_dados.xlsx` using tableconvert.com:**
     Export your database XLSX file to the website and convert it to SQL.

3. **Import the Database Schema:**
   ```bash
   mysql -u [your_user] -p < xbox_dashboard.sql
   ```

4. **Run Queries:**
   Execute individual query scripts to extract data. For example:
   ```bash
   mysql -u [your_user] -p < queries/sales_trends.sql
   ```    
5. **Export Data to Excel:**
   Export the results of the queries and save them in `loaded_xbox_dashboard.xlsx`.

6. **Open and View the Dashboard:**
   Use Microsoft Excel to open `loaded_xbox_dashboard.xlsx` and explore the dashboard.

## Contact
For questions or suggestions, feel free to reach out at [rmjo.inbox@gmail.com](mailto:rmjo.inbox@gmail.com) or via my GitHub Inbox.


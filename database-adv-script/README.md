# SQL Join Queries – ALX Airbnb Clone Database

## 📁 Repository
**GitHub Repo**: `alx-airbnb-database`  
**Directory**: `database-adv-script`  
**File**: `joins_queries.sql`

---

## 🎯 Objective

The objective of this project is to **master SQL JOINs** by writing and executing complex queries involving different types of joins on an Airbnb-like database schema.

---

## 📄 Files Included

- `joins_queries.sql`: Contains SQL statements using different types of JOINs (INNER JOIN, LEFT JOIN, FULL OUTER JOIN).
- `README.md`: Documentation and explanation of the purpose and content of the SQL file.

---

## 🧠 Task Descriptions

### ✅ 1. INNER JOIN – Bookings with Users

Write a query to retrieve all bookings and the respective users who made those bookings.

```sql
SELECT bookings.*, users.*
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

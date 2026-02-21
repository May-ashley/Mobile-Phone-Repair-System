# Mobile Phone Repair System

## Overview
The **Mobile Phone Repair System** is a Java Swing desktop application for managing mobile phone repairs.  
It includes login functionality, tracks customer repairs, and uses a MySQL database for storing data.

---

## Features
- Admin and user login
- Add / Update / Delete customer and phone repair records
- Search and filter repairs
- Database-driven (MySQL)

---

## Requirements
- Java JDK 8 or higher
- NetBeans IDE (optional but recommended)
- MySQL database

---

## Project Structure
- `src/` → Java source code  
- `nbproject/` → NetBeans configuration  
- `sql/phonedb.sql` → Full database dump  
- `README.md` → Project instructions

---

## Database Setup

1. Open **MySQL Command Line** or **MySQL Workbench**  
2. Run the SQL dump to create the database and all tables:

```sql
SOURCE sql/phonedb.sql;
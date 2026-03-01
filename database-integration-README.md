# 🗄️ Project 2: Database Integration (MySQL + MuleSoft)

> Full CRUD REST API connected to a MySQL database using MuleSoft Database Connector

---

## 📌 Overview

This project demonstrates how to build a **REST API backed by a MySQL database** using MuleSoft. It covers all four CRUD operations (Create, Read, Update, Delete) with proper input parameterization to prevent SQL injection.

---

## 🔌 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/employees` | Get all employees |
| GET | `/employees/{id}` | Get employee by ID |
| POST | `/employees` | Create new employee |
| DELETE | `/employees/{id}` | Delete an employee |

**Base URL:** `http://localhost:8082`

---

## 🛠️ Setup Instructions

### Step 1: Setup MySQL Database
```sql
-- Run the setup script
mysql -u root -p < sql/setup.sql
```

### Step 2: Configure Database Properties
Create `src/main/resources/application.properties`:
```properties
db.host=localhost
db.port=3306
db.name=mulesoft_portfolio
db.user=root
db.password=your_password
```

### Step 3: Run in Anypoint Studio
1. Import project into Anypoint Studio
2. Right-click → `Run As → Mule Application`

---

## 📬 Test with Postman / curl

```bash
# GET all employees
curl http://localhost:8082/employees

# GET by ID
curl http://localhost:8082/employees/1

# POST - Create employee
curl -X POST http://localhost:8082/employees \
  -H "Content-Type: application/json" \
  -d '{"name":"New User","department":"IT","email":"new@example.com","salary":70000}'

# DELETE
curl -X DELETE http://localhost:8082/employees/3
```

---

## 📚 MuleSoft Concepts Demonstrated

| Concept | Description |
|---------|-------------|
| `db:select` | Query records from database |
| `db:insert` | Insert new records |
| `db:delete` | Delete records |
| Input Parameters | Parameterized SQL (prevents SQL injection) |
| `choice` router | Conditional logic (employee found/not found) |
| URI Parameters | `attributes.uriParams` to extract path variables |
| HTTP Status Codes | 200 success, 404 not found |

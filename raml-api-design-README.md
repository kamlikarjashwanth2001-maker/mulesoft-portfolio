# 📝 Project 4: RAML API Design

> API-first design using RAML 1.0 — defining the contract before writing a single line of integration code

---

## 📌 Overview

This project demonstrates **API-first design** using **RAML 1.0** in MuleSoft's Anypoint Platform. RAML (RESTful API Modeling Language) is used to design, document, and mock APIs before building them — a key industry best practice.

---

## 📄 API Specification

**File:** `api.raml`

| Property | Value |
|----------|-------|
| Title | Employee Management API |
| Version | v1 |
| Base URI | `http://localhost:8081/api/v1` |
| Media Type | `application/json` |

---

## 🔌 API Endpoints Defined

| Method | Path | Description |
|--------|------|-------------|
| GET | `/employees` | Get all employees (with pagination & filtering) |
| POST | `/employees` | Create new employee |
| GET | `/employees/{id}` | Get employee by ID |
| PUT | `/employees/{id}` | Update employee |
| DELETE | `/employees/{id}` | Delete employee |

---

## 📐 RAML Features Used

| Feature | Description |
|---------|-------------|
| **Types** | Reusable data type definitions (`Employee`, `ErrorResponse`) |
| **Traits** | Reusable behaviors (`pageable`, `searchable`) applied to multiple methods |
| **URI Parameters** | `{id}` with type validation and min value |
| **Query Parameters** | `page`, `pageSize`, `department`, `name` |
| **Examples** | Inline JSON examples for requests and responses |
| **Enums** | Department values constrained to valid options |
| **Pattern validation** | Email format validated via regex pattern |
| **Response Codes** | 200, 201, 400, 404, 500 all documented |

---

## 🛠️ How to View in Anypoint Platform

1. Log in to [Anypoint Platform](https://anypoint.mulesoft.com)
2. Go to **Design Center**
3. Click **Create New → API Specification**
4. Paste the content of `api.raml`
5. Use the **API Console** panel on the right to visualize and test

---

## 🧠 Why API-First Design?

- ✅ Frontend & backend teams can work in **parallel**
- ✅ Catches design issues **before** writing code
- ✅ Auto-generates **mock servers** for testing
- ✅ Acts as **living documentation** for the API
- ✅ Enables **contract testing** between services

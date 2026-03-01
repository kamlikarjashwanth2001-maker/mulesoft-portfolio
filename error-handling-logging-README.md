# ⚠️ Project 3: Error Handling & Logging

> Production-grade error handling and structured logging in MuleSoft

---

## 📌 Overview

This project demonstrates **best practices for error handling and logging** in MuleSoft — two of the most critical skills for any integration developer. It covers global error handlers, Try scopes, custom error types, and structured logging.

---

## 🔌 Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/validate` | Validates input fields, raises errors if missing |
| GET | `/logging-demo` | Shows different log levels |

**Base URL:** `http://localhost:8083`

---

## 🧪 Test Scenarios

### Test 1: Valid Input (200 OK)
```bash
curl -X POST http://localhost:8083/validate \
  -H "Content-Type: application/json" \
  -d '{"name":"Jashwanth","email":"jashwanth@email.com"}'
```
**Response:**
```json
{ "status": "success", "message": "Input is valid" }
```

### Test 2: Missing Fields (400 Bad Request)
```bash
curl -X POST http://localhost:8083/validate \
  -H "Content-Type: application/json" \
  -d '{"name":"Jashwanth"}'
```
**Response:**
```json
{ "status": "error", "errorType": "VALIDATION_ERROR", "message": "Fields 'name' and 'email' are required" }
```

### Test 3: Logging Demo
```bash
curl http://localhost:8083/logging-demo
```

---

## 📚 Concepts Demonstrated

| Concept | Description |
|---------|-------------|
| `error-handler` | Global & local error handling |
| `on-error-continue` | Handles error and continues flow |
| `on-error-propagate` | Handles error and re-throws |
| `try` scope | Wraps risky operations |
| `raise-error` | Custom error types |
| `logger` | DEBUG / INFO / WARN / ERROR levels |
| HTTP Status Codes | Dynamic status from variables |

---

## 🧠 Key Learnings

- Always use a **Global Error Handler** to avoid repeated code
- Use `try` scopes around risky operations (DB calls, HTTP calls)
- **Never expose internal error details** to the client — log them, return safe messages
- Use **structured log messages** with `[LEVEL]` prefixes for easy filtering
- Custom error types follow the format `NAMESPACE:IDENTIFIER` (e.g., `VALIDATION:INVALID_INPUT`)

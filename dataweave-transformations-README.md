# 📊 Project 1: DataWeave Transformations

> Demonstrating DataWeave 2.0 data transformation capabilities in MuleSoft

---

## 📌 Overview

This project showcases **DataWeave 2.0** — MuleSoft's powerful transformation language. It covers real-world data transformation scenarios including JSON↔XML conversion, CSV parsing, data filtering, and mapping.

---

## 🔄 Flows

### Flow 1: JSON → XML (`/transform/json-to-xml`)
Converts an array of employee JSON objects into structured XML.

**Input (JSON):**
```json
[
  { "id": 1, "name": "Jashwanth", "department": "IT", "salary": 75000 },
  { "id": 2, "name": "Priya", "department": "HR", "salary": 55000 }
]
```

**Output (XML):**
```xml
<employees>
  <employee id="1">
    <name>Jashwanth</name>
    <department>IT</department>
    <salary>75000</salary>
  </employee>
</employees>
```

---

### Flow 2: CSV → JSON (`/transform/csv-to-json`)
Reads CSV data and converts it to a JSON array with type casting.

**Output (JSON):**
```json
[
  { "name": "Alice", "age": 28, "city": "Hyderabad", "upperName": "ALICE" }
]
```

---

### Flow 3: Data Filtering & Mapping (`/transform/filter`)
Filters active IT employees and calculates monthly salary.

**Output (JSON):**
```json
{
  "activeITEmployees": [
    { "employeeName": "Jashwanth", "annualSalary": 75000, "monthlySalary": 6250.0 }
  ],
  "totalCount": 2
}
```

---

## 🛠️ How to Run

1. Open **Anypoint Studio**
2. Import this project: `File → Import → Anypoint Studio Project`
3. Right-click project → `Run As → Mule Application`
4. Test with **Postman** or **curl**:

```bash
# Flow 1 - JSON to XML
curl -X POST http://localhost:8081/transform/json-to-xml \
  -H "Content-Type: application/json" \
  -d '[{"id":1,"name":"Jashwanth","department":"IT","salary":75000}]'

# Flow 2 - CSV to JSON
curl http://localhost:8081/transform/csv-to-json

# Flow 3 - Filter
curl http://localhost:8081/transform/filter
```

---

## 📚 DataWeave Concepts Demonstrated

| Concept | Where Used |
|---------|-----------|
| `map` operator | Flow 1, 3 |
| `filter` operator | Flow 3 |
| Type casting (`as Number`) | Flow 2 |
| Built-in functions (`upper`, `sizeOf`) | Flow 2, 3 |
| Variables (`var`) | Flow 3 |
| XML attribute mapping | Flow 1 |
| Input/Output directives | All flows |

---

## 🧠 Key Learnings

- DataWeave `map` is used to transform each element in an array
- `filter` returns only elements matching a condition
- You can chain `filter` and `map` together for complex transformations
- Type casting with `as Number` ensures proper data types in output

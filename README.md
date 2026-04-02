# 🚔 The Midnight Parking Heist (SQL Case Study)

## 📖 Story
A luxury car was stolen from a paid parking lot between **10:00 PM – 11:00 PM**.

We have the following data:
- Parking entry & exit records
- Payment transactions
- Police statements from people present

🕵️ Your mission: **Find the imposter using SQL.**

---

## 🎯 Objective
Analyze the data using SQL to:
- Track vehicle movements
- Identify suspicious activity
- Match witness statements
- Detect anomalies
- Find the thief

---

## 🗂️ Database Schema

### 🚗 Parking Records
```sql
CREATE TABLE parking_logs (
    vehicle_id INT,
    entry_time DATETIME,
    exit_time DATETIME
);
```

---

### 💳 Payment Data
```sql
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    vehicle_id INT,
    amount INT,
    payment_time DATETIME
);
```

---

### 🧍 Persons
```sql
CREATE TABLE persons (
    person_id INT PRIMARY KEY,
    name VARCHAR(50)
);
```

---

### 🗣️ Police Statements
```sql
CREATE TABLE statements (
    statement_id INT PRIMARY KEY,
    person_id INT,
    statement TEXT
);
```

---

## 🔍 Key Questions to Solve

1. Which vehicles were present between **10 PM – 11 PM**?
2. Did any vehicle **exit without payment**?
3. Are there any **suspicious payment timings**?
4. What do witness statements reveal?
5. Who is the **most likely suspect**?

---

## 🧠 Approach

- Filter vehicles within the crime time window  
- Join parking logs with payments  
- Identify mismatches (no payment / delayed payment)  
- Analyze statements for clues  
- Narrow down suspects step-by-step  

---

## 🛠️ Example Queries

### Vehicles present during the crime
```sql
SELECT *
FROM parking_logs
WHERE entry_time <= '23:00:00'
AND exit_time >= '22:00:00';
```

---

### Vehicles with no payment
```sql
SELECT p.vehicle_id
FROM parking_logs p
LEFT JOIN payments pay
ON p.vehicle_id = pay.vehicle_id
WHERE pay.vehicle_id IS NULL;
```

---

### Suspicious late payments
```sql
SELECT *
FROM payments
WHERE payment_time > '23:00:00';
```

---

## 🏁 Final Goal

👉 Identify:
- The **vehicle involved**
- The **person responsible**
- The **timeline of the crime**

---

## 📌 Skills Used

- SQL Joins
- Filtering & Conditions
- Aggregations
- Data Investigation
- Analytical Thinking

---

## 🚀 How to Use

1. Clone the repository  
2. Run the SQL scripts  
3. Analyze the datasets  
4. Solve the mystery  

---

## ⭐ Conclusion

This project simulates a **real-world investigative scenario** where SQL is used to uncover hidden insights and solve a crime.

💡 Perfect for practicing **data analysis, SQL, and problem-solving skills**.

---

## 🙌 Author

**Samir Vadher**

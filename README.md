# 🧠 Advanced SQL Query Portfolio (PostgreSQL)

A technical collection of advanced SQL queries showcasing deep understanding of relational databases, data analysis, and performance optimization in PostgreSQL.

---

## 🎯 Overview

This repository features over **50 advanced SQL queries**, each designed to demonstrate real-world data analysis and manipulation skills.  
The goal is to show how complex business questions can be translated into efficient, readable, and accurate SQL statements.

All examples are built for a simulated **University Library Management System** — a realistic, relational environment including:

- `Students`, `Courses`
- `Books`, `Authors`, `Publishers`
- `Genres`, `Languages`
- `Loans`, `Librarians`, and `Inventory`

This structure provides a robust testbed for exploring multi-table joins, aggregations, and analytical queries.

---

## 🗂️ Repository Structure

Queries are organized by technical theme for clarity and progression:

- **[Joins](./Joins)** → Combining multiple tables with `INNER`, `LEFT`, `RIGHT`, and `FULL JOIN`.
- **[DataFilteringAndSelection](./DataFilteringAndSelection)** → Logical filtering using `WHERE`, `LIKE`, `IN`, and `BETWEEN`.
- **[AggregationAndSetOperations](./AggregationAndSetOperations)** → Use of `GROUP BY`, `HAVING`, and set operations like `UNION` and `INTERSECT`.
- **[OuterJoinsAndNullHandling](./OuterJoinsAndNullHandling)** → Managing incomplete data with `LEFT JOIN`, `COALESCE`, and `IS NULL`.
- **[AdvancedAggregationAndWindowFunctions](./AdvancedAggregationAndWindowFunctions)** → Window functions (`OVER()`, `PARTITION BY`) for rankings, cumulative totals, and percentages.
- **[Subqueries](./Subqueries)** → Correlated and non-correlated subqueries within `WHERE`, `HAVING`, and `JOIN` clauses.
- **[ViewsAndIndexing](./ViewsAndIndexing)** → Creating reusable `VIEW`s and optimizing query performance with `CREATE INDEX` and `EXPLAIN ANALYZE`.

---

## 🧩 Core Skills Demonstrated

This project highlights advanced proficiency with SQL concepts including:

### Data Manipulation (DML)
`SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`

### Data Combination
`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`

### Aggregate & Analytical Functions
`COUNT()`, `SUM()`, `AVG()`, `RANK()`, and other `OVER()`-based calculations

### Subqueries & Set Operations
`IN`, `EXISTS`, `UNION`, `INTERSECT`, `NOT EXISTS`

### Data Definition & Optimization
`CREATE VIEW`, `CREATE INDEX`, and performance diagnostics with `EXPLAIN ANALYZE`

### Data Cleaning & Validation
`COALESCE`, `NULLIF`, `CASE`, and other integrity-oriented expressions

---

## 🧭 Purpose

This portfolio demonstrates not only technical SQL fluency but also a strong analytical mindset — the ability to break down real-world problems into structured, efficient queries that reveal insights and drive decision-making.

---

📘 *All queries are written for PostgreSQL 15+, with a focus on clarity, performance, and maintainability.*

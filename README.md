# 📘 Day 4 of SQL: Types of Databases

Welcome to **Day 4 of SQL**! 🚀

In software engineering, data analytics, and cloud architecture, choosing the right database is one of the most critical decisions. This guide breaks down the **major types of databases**, how they store information, their primary use cases, and includes a few concise lines of hands-on SQL practice queries.

---

## 📑 Table of Contents
1. [Introduction: What is a Database?](#1-introduction-what-is-a-database)
2. [Major Types of Databases](#2-major-types-of-databases)
   - [1. Relational Databases (RDBMS)](#1-relational-databases-rdbms)
   - [2. NoSQL Databases (Non-Relational)](#2-nosql-databases-non-relational)
   - [3. Cloud & Distributed Databases](#3-cloud--distributed-databases)
   - [4. In-Memory Databases](#4-in-memory-databases)
   - [5. Data Warehouses (OLAP)](#5-data-warehouses-olap)
   - [6. Time-Series Databases](#6-time-series-databases)
   - [7. Vector Databases (AI & LLMs)](#7-vector-databases-ai--llms)
   - [8. Hierarchical & Network Databases (Legacy)](#8-hierarchical--network-databases-legacy)
3. [Quick Comparison Table](#3-quick-comparison-table)
4. [OLTP vs OLAP at a Glance](#4-oltp-vs-olap-at-a-glance)
5. [How to Choose the Right Database](#5-how-to-choose-the-right-database)
6. [Hands-on Practice Queries (A Few Concise Lines)](#6-hands-on-practice-queries-a-few-concise-lines)
7. [Summary & Key Takeaways](#7-summary--key-takeaways)

---

## 1. Introduction: What is a Database?

A **database** is an organized, electronic collection of structured or unstructured data stored in a computer system and managed by a **DBMS (Database Management System)**.

Different applications require different ways of organizing and accessing data:
- A banking app needs strict transaction guarantees (ACID).
- A social media feed needs high-speed writes and flexible schemas.
- An AI search engine needs high-dimensional vector similarity lookups.

---

## 2. Major Types of Databases

### 1. Relational Databases (RDBMS)
- **Data Model**: Organizes data into structured **tables** consisting of **rows (records)** and **columns (fields)**.
- **Query Language**: Standard **SQL**.
- **Key Features**:
  - Enforces strict schemas and data integrity rules (Primary & Foreign Keys).
  - ACID compliant (Atomicity, Consistency, Isolation, Durability) for reliable transactions.
- **Popular Examples**: MySQL, PostgreSQL, Oracle Database, Microsoft SQL Server, SQLite.
- **Best For**: E-commerce orders, banking/financial systems, ERP, CRM applications.

---

### 2. NoSQL Databases (Non-Relational)
Designed for unstructured, semi-structured, or rapidly changing data formats that scale horizontally across server clusters.

NoSQL is categorized into four main types:

| NoSQL Type | How Data is Stored | Popular Examples | Best Use Case |
| :--- | :--- | :--- | :--- |
| **Document Store** | JSON / BSON documents | MongoDB, CouchDB | User profiles, content management, e-commerce product catalogs |
| **Key-Value Store** | Key-value pairs (fast dictionary) | Redis, Memcached, DynamoDB | Session management, shopping carts, high-speed caching |
| **Wide-Column / Columnar** | Tables with dynamic, flexible columns | Apache Cassandra, ScyllaDB, HBase | Massive write loads, IoT logs, event tracking |
| **Graph Database** | Nodes (entities) and Edges (relationships) | Neo4j, Amazon Neptune | Social network graphs, recommendation engines, fraud detection |

---

### 3. Cloud & Distributed Databases
- **Concept**: Cloud-native databases hosted and managed on cloud infrastructure (DBaaS - Database-as-a-Service).
- **Key Features**: Auto-scaling, automated backups, multi-region replication, and serverless options.
- **Popular Examples**: Amazon Aurora, Google Cloud Spanner, CockroachDB, Azure Cosmos DB.
- **Best For**: Global web-scale applications requiring 99.999% uptime and geo-distribution.

---

### 4. In-Memory Databases
- **Concept**: Stores data directly in the computer's **RAM** rather than reading from disk or SSD storage.
- **Key Features**: Ultra-fast microsecond response times and sub-millisecond latencies.
- **Popular Examples**: Redis, Memcached, SAP HANA.
- **Best For**: Real-time leaderboards, session caching, financial trading screens, rate limiting.

---

### 5. Data Warehouses (OLAP)
- **Concept**: Column-oriented analytical databases optimized for reading, aggregating, and analyzing massive historical datasets.
- **Key Features**: Optimized for complex aggregation queries (`SUM`, `AVG`, `GROUP BY`) across petabytes of data without locking transactional databases.
- **Popular Examples**: Snowflake, Google BigQuery, Amazon Redshift, ClickHouse.
- **Best For**: Business Intelligence (BI) dashboards, reporting, predictive data analytics.

---

### 6. Time-Series Databases (TSDB)
- **Concept**: Purpose-built to ingest, store, and analyze time-stamped data points over time.
- **Key Features**: High ingestion throughput, automatic data retention policies, and time-range query optimizations.
- **Popular Examples**: InfluxDB, TimescaleDB, Prometheus.
- **Best For**: IoT sensor metrics, server CPU/memory telemetry, stock market tick tracking.

---

### 7. Vector Databases (Modern AI & LLMs)
- **Concept**: Stores high-dimensional numerical vectors (embeddings) generated by Machine Learning models.
- **Key Features**: Specialized for **Approximate Nearest Neighbor (ANN)** similarity search rather than exact keyword matches.
- **Popular Examples**: Pinecone, Milvus, Qdrant, Chroma, pgvector (PostgreSQL extension).
- **Best For**: Retrieval-Augmented Generation (RAG) for LLMs, semantic text search, facial recognition, image similarity.

---

### 8. Hierarchical & Network Databases (Legacy)
- **Hierarchical**: Tree-like structure where each record has a single parent (one-to-many). *Example: IBM IMS, Windows Registry.*
- **Network**: Graph-like predecessor where records can have multiple parents (many-to-many). *Example: IDMS.*
- **Best For**: Legacy mainframe applications.

---

## 3. Quick Comparison Table

| Database Type | Primary Storage Model | Schema Flexibility | Scaling Method | Typical Examples |
| :--- | :--- | :--- | :--- | :--- |
| **Relational (RDBMS)** | Tables (Rows & Columns) | Rigid / Predefined | Vertical (Scale Up) | PostgreSQL, MySQL, Oracle |
| **Document (NoSQL)** | JSON / BSON Documents | Highly Flexible | Horizontal (Scale Out) | MongoDB, CouchDB |
| **Key-Value (NoSQL)** | Key-Value pairs | Schema-less | Horizontal (Scale Out) | Redis, DynamoDB |
| **Graph (NoSQL)** | Nodes & Edges | Graph-based | Horizontal / Specialized | Neo4j, Amazon Neptune |
| **In-Memory** | RAM / Memory | Key-value / Data structures | Vertical / Clustered | Redis, SAP HANA |
| **Data Warehouse** | Columnar Tables | Structured / Semi-structured | Horizontal (Massive Scale) | Snowflake, BigQuery, Redshift |
| **Time-Series** | Timestamped Records | Structured time-series | Horizontal / Time-partitioned | InfluxDB, Prometheus |
| **Vector DB** | High-dimensional Embeddings | Vector coordinates | Horizontal / Cluster | Pinecone, Milvus, Qdrant |

---

## 4. OLTP vs OLAP at a Glance

| Feature | OLTP (Online Transaction Processing) | OLAP (Online Analytical Processing) |
| :--- | :--- | :--- |
| **Purpose** | Day-to-day transactional business operations | Complex analytical queries and reporting |
| **Query Type** | Short, fast reads and writes (`INSERT`, `UPDATE`) | Heavy aggregate scans (`SUM`, `AVG`, `GROUP BY`) |
| **Data Structure** | Normalized tables (minimize redundancy) | Denormalized / Star or Snowflake schemas |
| **Response Time** | Milliseconds | Seconds to minutes |
| **Typical Databases** | MySQL, PostgreSQL, SQL Server | Snowflake, BigQuery, ClickHouse |

---

## 5. How to Choose the Right Database

```
Do you need ACID transactions and structured relationships?
 ├─► YES: Relational Database (PostgreSQL / MySQL)
 └─► NO:
      ├─► Storing flexible JSON documents? ──► Document DB (MongoDB)
      ├─► Need ultra-fast caching in RAM? ─────► In-Memory (Redis)
      ├─► Analyzing billions of rows for BI? ─► Data Warehouse (Snowflake / BigQuery)
      ├─► Tracking time-stamped metrics / IoT? ► Time-Series (InfluxDB / TimescaleDB)
      ├─► AI embeddings & semantic search? ────► Vector DB (Pinecone / Qdrant)
      └─► Social networks / complex links? ───► Graph DB (Neo4j)
```

---

## 6. Hands-on Practice Queries (A Few Concise Lines)

Here is a short, complete SQL script demonstrating relational database tables, relationships, and queries:

```sql
-- 1. Create and use database
CREATE DATABASE IF NOT EXISTS day4_db;
USE day4_db;

-- 2. Create 'customers' table (Entity 1)
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50) DEFAULT 'Hyderabad'
);

-- 3. Create 'orders' table with Foreign Key link (Entity 2)
CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_name VARCHAR(100) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    order_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- 4. Insert sample records
INSERT INTO customers (name, email, city) VALUES
('Harish', 'harish@example.com', 'Hyderabad'),
('Rahul', 'rahul@example.com', 'Bangalore'),
('Ananya', 'ananya@example.com', 'Mumbai');

INSERT INTO orders (customer_id, product_name, amount) VALUES
(1, 'Laptop', 75000.00),
(1, 'Mouse', 1200.00),
(2, 'Keyboard', 2500.00),
(3, 'Monitor', 18000.00);

-- 5. Query: Join both tables via relational link
SELECT 
    c.name AS customer_name,
    c.city,
    o.product_name,
    o.amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- 6. Query: Aggregate spending per customer
SELECT 
    c.name AS customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;
```

---

## 7. Summary & Key Takeaways

- **No Single Database Fits All**: Modern architectures use **Polyglot Persistence** (using different databases for different jobs within the same system).
- **RDBMS**: Perfect for transactions, data integrity, and structured relationships.
- **NoSQL**: Perfect for speed, flexible schemas, and horizontal scaling.
- **OLAP / Warehouses**: Purpose-built for big data analytics and business intelligence.
- **Vector & Modern DBs**: Powering next-generation AI and real-time event streaming applications.

---

⭐ **Stay tuned for Day 5!** Keep practicing and writing queries.

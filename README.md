# Travel-Reimbursement-System
A three-phase database project that models, queries, and visualizes a university travel reimbursement system using MySQL and Neo4j. Key objective is to streamline and manage university employee travel reimbursements through structured relational and graph-based systems.

## 📚 Table of Contents

- [Overview](#-overview)
- [Project Structure](#-project-structure)
- [Sample Visuals](#-sample-visuals)
- [Technologies Used](#-technologies-used)
- [Key Takeaways](#-key-takeaways)
- [Reports](#-reports)
- [Contact Information](#-contact-information)

---

## 📌 Overview
This project presents a three-phase implementation of a university Travel Reimbursement System, designed to manage travel approvals, expense reports, reimbursements, and financial oversight. The system transitions from **conceptual modeling in Phase 1**, to **relational schema and SQL queries in Phase 2**, and finally to a **graph database implementation using Neo4j in Phase 3**.

---

## 🧱 Project Structure

### ✅ Phase 1: Conceptual Modeling
  - Designed a comprehensive **Enhanced Entity Relationship (EER) Diagram** to capture key entities like Department, Employee, Supervisor, Budget Officer, University financial service officer, Travel reports, and Reimbursements.
  - Focused on disjoint specialization for roles such as UFS Officer, Supervisor, and Budget Officer under the superclass Employee.
  - Defined all participation and cardinality constraints with precise logic to handle optional and total relationships.
    
📌 **Impact** : Built a clean and extensible conceptual foundation to support future relational and graph data models.

### ✅ Phase 2: Relational Database Design
  - Developed a normalized **MySQL database** using 9 interrelated tables, including junction tables for M:N relationships (e.g., Employee-Department).
  - Wrote and tested over 10 SQL queries to answer real-world administrative questions such as:\
    - Which departments spend the most on travel?
    - Which employees incur the highest travel expenses?
    - Are actual costs in line with estimates?
    
📌 **Impact** : 
  - Reduced schema complexity by merging redundant entities.
  - Simplified relationships for better query performance and schema readability.

### ✅ Phase 3: Graphical Database Design
  - Migrated core schema from MySQL to **Neo4j**, using Cypher queries to load nodes and establish key relationships.
  - Executed advanced Cypher queries for pattern matching, aggregation, and traversal.
  - Performed delete operations to manage data integrity during iterative testing.
    
📌 **Impact** : Graph-based modeling in Neo4j allowed visual traceability from submission to approval and reimbursement, eliminating multi-join complexities in relational systems.

--- 

## 📊 Sample Visuals
![EER Diagram](https://github.com/user-attachments/assets/dc9e90c6-a193-4375-bc04-4e05d89d9931)

![relationaldb diagram](https://github.com/user-attachments/assets/302c1bc3-618a-451f-93c6-5e45e8dd9f13)

![graphdb diagram](https://github.com/user-attachments/assets/1da131fe-2d7f-40eb-b2c8-75923a96951b)

---

## 🔍 Technologies Used

| Technology         | Purpose                                                                 |
|--------------------|-------------------------------------------------------------------------|
| **MySQL Workbench** | Relational database design and query execution                         |
| **Neo4j Desktop**   | Graph database modeling using Cypher                                   |
| **Draw.io**         | Conceptual modeling and EER diagram design                             |
| **CSV**             | Intermediate data format for import/export between systems             |
| **SQL & Cypher**    | Query languages used for data operations and analysis                  |

---

## 💡 Key Takeaways

- Gained practical experience in database normalization, schema refinement, and constraint handling.
- Learned how to translate relational models into property graph models for better real-world data mapping.
- Understood performance trade-offs and schema simplification techniques between database types.

---

## 📚 Reports
Each phase contains a detailed report, diagrams, code snippets, and reflections on modeling decisions:

- [Phase-1.report](https://github.com/DK-3333/Travel-Reimbursement-System/blob/main/Phase-1/Phase-1_report.pdf)
- [Phase-2.report](https://github.com/DK-3333/Travel-Reimbursement-System/blob/main/Phase-2/Phase-2_report.pdf)
- [Phase-3.report](https://github.com/DK-3333/Travel-Reimbursement-System/blob/main/Phase-3/Phase-3_report.pdf)

---

## ✨ Contact Information

📬 Contact Author: Dhyey Kasundra <br> 
📧 Email: dhyey.d.kasundra@gmail.com

💡 Data is not just stored, it tells a story. This project is where structure meets insight.

---

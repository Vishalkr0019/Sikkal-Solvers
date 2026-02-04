 Retail Data Quality & Cleaning Pipeline

 Problem Statement

Modern retail systems generate massive volumes of transactional data every day from multiple sources such as stores, POS systems, customer platforms, and promotion engines.
Although this data is critical for analytics, loyalty scoring, and business decisions, **raw operational data is often dirty and unreliable**.

Common data issues include:

* Missing values
* Duplicate records
* Invalid characters
* Wrong number formats
* Mixed date formats
* Broken foreign keys
* Unwanted or junk columns


Hence, there is a strong need for an **automated data quality and cleaning system** that can:

1. Detect bad records
2. Separate good and bad data
3. Standardize formats
4. Make data analytics-ready

 
Dataset Description

The system works on a retail schema consisting of  7 related tables

1. Stores – Store master data
2. Products – Product catalog
3.  Customer Details – Customer information and loyalty status
4. Promotion Details – Discount and promotion metadata
5. Loyalty Rules – Rules for awarding loyalty points
6. Store Sales Header – Transaction-level data
7. Store Sales Line Items – Item-level transaction data

Each table contains:

* Primary keys
* Foreign key relationships
* Date fields
* Numeric fields
* Categorical fields

The raw dataset is intentionally generated with:

* NULL values
* Duplicate keys
* Invalid text in numeric columns
* Negative values where not allowed
* Mixed date formats (dd-mm-yyyy, mm-dd-yyyy, yyyy-mm-dd)
* Invalid emails and phone numbers
* Extra unwanted columns


| Issue Type     | Example                                  |
| -------------- | ---------------------------------------- |
| Missing value  | `store_id = NULL`                        |
| Invalid number | `unit_price = "abc"`                     |
| Negative value | `quantity = -5`                          |
| Invalid date   | `transaction_date = "BADDATE"`           |
| Mixed formats  | `12-01-2025`, `01-12-2025`, `2025-12-01` |
| Duplicate key  | `transaction_id = TX101`                 |
| Junk column    | `random_col = "trash"`                   |




 Conclusion

This project demonstrates how **real-world dirty data** can be transformed into **high-quality structured data** using rule-based validation and cleaning.
It highlights the importance of data quality in analytics, machine learning, and decision-making systems.

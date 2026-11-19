# E-Commerce Sales Analytics (SQL)

## Overview
End-to-end SQL project analyzing a 50,000+ row e-commerce dataset to derive
revenue trends, customer segments (RFM), and product performance insights.

## Tech Stack
- MySQL 8.0
- Window Functions (RANK, LAG, NTILE, SUM OVER)
- CTEs (WITH clauses)
- Advanced Joins (INNER, LEFT, SELF, anti-join)
- Subqueries & CASE expressions

## Database Schema (7 normalized tables)
| Table | Purpose |
|---|---|
| customers | Customer master data |
| categories | Product category hierarchy |
| products | Product catalog with pricing |
| orders | Order headers (status, date) |
| order_items | Line items per order |
| payments | Payment transactions |
| reviews | Product ratings & text |

## Key Analyses
1. Monthly revenue trend with MoM growth %
2. RFM customer segmentation (Champions, Loyal, At Risk, Lost)
3. Top 10 products by revenue (window function ranking)
4. Category revenue share with running totals
5. Customer-product affinity (frequently bought together)
6. Dormant customers (anti-join)
7. Product rating vs. sales correlation

## Sample Business Insights
- Top 10 products drive ~40% of total revenue
- "Champions" segment = ~8% of customers but ~35% of revenue
- ~12% of registered customers never placed an order → re-engagement opportunity
- Electronics category has ~3x higher AOV than Fashion

## Files
- `schema.sql` — database & table definitions
- `seed_data.sql` — sample data inserts
- `queries/` — all analytical queries organized by skill level
- `insights.md` — detailed business findings

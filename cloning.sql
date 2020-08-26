USE DATABASE my_db;

SELECT COUNT(*) FROM sales;

SELECT * FROM sales LIMIT 20;

--Clone sales table
CREATE TRANSIENT TABLE sales_copy CLONE sales;

SELECT COUNT(*) FROM sales_copy;

SELECT * FROM sales_copy LIMIT 20;

--Update data in sales_copy table
UPDATE sales_copy SET Company = 'Knoldus Inc' WHERE Name = 'Sarfaraz';

--Check data from sales_copy table
SELECT * FROM sales_copy WHERE Name = 'Sarfaraz';

--Check data from sales table
SELECT * FROM sales WHERE Name = 'Safaraz';

--Dropping sales_copy table
DROP TABLE sales_copy;

--Check data from sales table
SELECT COUNT(*) FROM sales;

--Cone Public schema
CREATE SCHEMA PUBLIC_COPY CLONE PUBLIC;


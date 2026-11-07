-- goit-rdb-hw-07: SQL queries
USE goit_rdb_hw_03;

-- ========== 1. Extract YEAR, MONTH, DAY from date ==========

SELECT 
    id,
    date,
    YEAR(date) AS year,
    MONTH(date) AS month,
    DAY(date) AS day
FROM orders;

-- ========== 2. Add one day to date ==========

SELECT 
    id,
    date,
    DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_one
FROM orders;

-- ========== 3. Date as timestamp (seconds since epoch) ==========

SELECT 
    id,
    date,
    UNIX_TIMESTAMP(date) AS timestamp_seconds
FROM orders;

-- ========== 4. Count rows with date between two dates ==========

SELECT COUNT(*) AS row_count
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- ========== 5. JSON object with id and date ==========

SELECT 
    id,
    date,
    JSON_OBJECT('id', id, 'date', date) AS json_data
FROM orders;

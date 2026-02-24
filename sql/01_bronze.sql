-- Use proper role
USE ROLE SYSADMIN;

-- Create / use warehouse database
CREATE DATABASE IF NOT EXISTS SnowDatabase;
USE DATABASE SnowDatabase;

-- Create Bronze schema
CREATE SCHEMA IF NOT EXISTS BRONZE;
USE SCHEMA BRONZE;

-- Ingest raw store sales data (limited for CI testing)
CREATE OR REPLACE TABLE STORE_SALES_RAW AS
SELECT *
FROM SNOWFLAKE_SAMPLE_DATA.TPCDS_SF100TCL.STORE_SALES
LIMIT 1000;

-- Validation checks
SELECT COUNT(*) AS total_rows
FROM STORE_SALES_RAW;

-- Preview data
SELECT *
FROM STORE_SALES_RAW
LIMIT 10;
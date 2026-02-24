-- Ensure we are using the correct role
USE ROLE SYSADMIN;

-- Create new testing database
CREATE DATABASE IF NOT EXISTS SnowDatabase;

-- Set database context
USE DATABASE SnowDatabase;

-- Create Bronze schema
CREATE SCHEMA IF NOT EXISTS BRONZE;

-- Set schema context
USE SCHEMA BRONZE;

-- Create lightweight CI test table
CREATE OR REPLACE TABLE CI_TEST_TABLE (
    id INT,
    pipeline_name STRING,
    created_at TIMESTAMP
);

-- Insert small test data
INSERT INTO CI_TEST_TABLE VALUES
(1, 'GitHub_Bronze_Test', CURRENT_TIMESTAMP()),
(2, 'Automation_Check', CURRENT_TIMESTAMP());

-- Validation query
SELECT COUNT(*) AS total_rows
FROM CI_TEST_TABLE;
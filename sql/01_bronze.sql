-- Create test database
CREATE DATABASE IF NOT EXISTS MY_DATABASE;

USE DATABASE MY_DATABASE;

-- Create Bronze schema
CREATE SCHEMA IF NOT EXISTS BRONZE;

USE SCHEMA BRONZE;

-- Create tiny test table
CREATE OR REPLACE TABLE CI_TEST_TABLE (
    id INT,
    name STRING,
    created_at TIMESTAMP
);

-- Insert small test data
INSERT INTO CI_TEST_TABLE VALUES
(1, 'CI_Run', CURRENT_TIMESTAMP()),
(2, 'GitHub_Action', CURRENT_TIMESTAMP());

-- Validation query
SELECT COUNT(*) AS total_rows FROM CI_TEST_TABLE;
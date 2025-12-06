-- Drop tables if they already exist
DROP TABLE IF EXISTS train;
DROP TABLE IF EXISTS stores;
DROP TABLE IF EXISTS features;

-- Create the train table
CREATE TABLE train (
    store INT,
    dept INT,
    date DATE,
    weekly_sales NUMERIC,
    is_holiday BOOLEAN
);

-- Create the stores table
CREATE TABLE stores (
    store INT,
    type VARCHAR(1),
    size INT
);

-- Create the features table
CREATE TABLE features (
    store INT,
    date DATE,
    temperature NUMERIC,
    fuel_price NUMERIC,
    markdown1 NUMERIC,
    markdown2 NUMERIC,
    markdown3 NUMERIC,
    markdown4 NUMERIC,
    markdown5 NUMERIC,
    cpi NUMERIC,
    unemployment NUMERIC,
    is_holiday BOOLEAN
);

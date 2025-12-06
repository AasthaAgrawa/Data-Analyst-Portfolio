--Top stores by total sales
SELECT Store, SUM(weekly_sales) AS total_sales
FROM train 
GROUP BY Store
ORDER BY total_sales DESC
LIMIT 5;

-- Average top weekly sales by department
SELECT Dept, AVG(weekly_sales) as avg_sales
FROM train
GROUP BY Dept
ORDER BY avg_sales DESC
LIMIT 5;

--Sales trend over time
SELECT date, SUM(weekly_sales) AS total_sales
FROM train
GROUP BY date
ORDER BY date
LIMIT 10;

-- Effect of holidays on sales
SELECT t.date, t.store, t.weekly_sales
FROM train t
JOIN features f
ON t.store = f.store AND t.date = f.date
WHERE f.is_holiday = TRUE
ORDER BY t.weekly_sales DESC
LIMIT 5;

-- Total sales by store type
SELECT s.type, SUM(t.weekly_sales) as total_sales
FROM train t
JOIN Stores s 
ON t.store = s.store
GROUP BY s.type;
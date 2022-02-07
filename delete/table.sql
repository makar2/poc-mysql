USE bestbuy;

SELECT 'BEFORE:' as '';
SELECT slug from items;

DROP TABLE IF EXISTS items;

SELECT 'AFTER:' as '';
SELECT slug from items;


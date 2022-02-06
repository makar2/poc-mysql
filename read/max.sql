USE bestbuy;

SELECT 'The most expensive item:' as '';

SELECT id, slug, MAX(price) as price FROM items;
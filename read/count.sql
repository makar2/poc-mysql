USE bestbuy;

SELECT COUNT(price <= 100) as `Items under $100`
FROM items
WHERE price <= 100;

SELECT 'Proof below' as '';

SELECT id, slug, price
FROM items
WHERE price <= 100;

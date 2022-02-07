USE bestbuy;

SELECT 'BEFORE:' as '';
SELECT id, slug from items ORDER BY id;

DELETE FROM items WHERE name LIKE '%Google%';

SELECT 'AFTER: Proof -- no Google products any more' as '';
SELECT id, slug from items ORDER BY id;

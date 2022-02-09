USE bestbuy;

SELECT "BEFORE: Prices are integers." as "";
DESC items;

ALTER TABLE items MODIFY COLUMN price CHAR(20);

SELECT "AFTER: Prices are strings now." as "";
DESC items;

ALTER TABLE items MODIFY COLUMN price REAL;

SELECT "BONUS: It even converts back to integers." as "";
DESC items;

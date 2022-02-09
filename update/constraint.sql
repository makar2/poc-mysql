USE bestbuy;

-- Run only this to drop the constraint
-- ALTER TABLE section_meta DROP FOREIGN KEY c_section_meta;

SELECT 'Constraint added. Now changes to parent table (items) will be cascaded to the child table (section_meta)' FROM '';
ALTER TABLE section_meta ADD CONSTRAINT c_section_meta
FOREIGN KEY (item_id)
REFERENCES items(id)
ON UPDATE CASCADE;

UPDATE items
SET id = 100
WHERE id = 10;

SELECT 'PROOF: id 10 updated to 100 in items table, and cascaded to section_meta, too' FROM '';
SELECT id, slug FROM items WHERE id = 100;

UPDATE items
SET id = 10
WHERE id = 100;

SELECT 'BONUS: It does not work the other way around, section_meta cannot be updated at all.' FROM '';
UPDATE section_meta
SET item_id = 10
WHERE item_id = 1000;

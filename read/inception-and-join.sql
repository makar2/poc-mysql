USE bestbuy;

SELECT
  i.id as id,
  i.slug as slug,
  i.price as price,
  s2.section as section
FROM items as i
-- Here LEFT JOIN includes Pixel 6 (#4) with NULL as section, since he belings to no section
-- Replacing LEFT JOIN with JOIN makes the smartphone drop out of the list
LEFT JOIN (
  SELECT
    sm.section_id as section_id,
    sm.item_id as item_id,
    s.slug as section
  FROM section_meta as sm
  LEFT JOIN sections as s on s.id = sm.section_id
  GROUP BY item_id -- does the magic
)
AS s2 ON i.id = s2.item_id
ORDER BY id;

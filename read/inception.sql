USE bestbuy;

SELECT
  i.id as id,
  i.slug as slug,
  i.price as price,
  s2.section as section
FROM items as i
-- Left joins are kind of pointless here, since there's full overlap of presence of values in all tables
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

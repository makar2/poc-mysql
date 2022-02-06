USE bestbuy;

SELECT DISTINCT
  sm.section_id,
  s.slug
FROM section_meta as sm
LEFT JOIN sections as s ON sm.section_id = s.id;
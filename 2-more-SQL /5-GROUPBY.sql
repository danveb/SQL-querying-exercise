SELECT
  age,
  COUNT(*) people_count
FROM
  people
GROUP BY
  age

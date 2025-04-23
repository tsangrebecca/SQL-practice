Show all allergies ordered by popularity. Remove NULL values from query.

Solution 1:
SELECT
  allergies,
  COUNT(*) AS total_diagnosis
FROM patients
WHERE
  allergies IS NOT NULL
GROUP BY allergies
ORDER BY total_diagnosis DESC

Solution 2:
SELECT
  allergies,
  count(*)
FROM patients
WHERE allergies NOT NULL
GROUP BY allergies
ORDER BY count(*) DESC

Solution 3:
SELECT
  allergies,
  count(allergies) AS total_diagnosis
FROM patients
GROUP BY allergies
HAVING
  allergies IS NOT NULL
ORDER BY total_diagnosis DESC
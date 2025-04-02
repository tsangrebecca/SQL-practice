Show unique birth years from patients and order them by ascending.

Solution 1:
SELECT year(birth_date)
FROM patients
GROUP BY year(birth_date)

Solution 2:
SELECT
  DISTINCT YEAR(birth_date) AS birth_year
FROM patients
ORDER BY birth_year;
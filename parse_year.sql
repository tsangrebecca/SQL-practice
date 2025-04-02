Show how many patients have a birth_date with 2010 as the birth year.

Solution 1:
SELECT COUNT(*) AS total_patients
FROM patients
WHERE YEAR(birth_date) = 2010;

Solution 2:
SELECT count(first_name) AS total_patients
FROM patients
WHERE
  birth_date >= '2010-01-01'
  AND birth_date <= '2010-12-31';

Solution 3:
SELECT count(first_name) AS total_patients
FROM patients
WHERE
  birth_date between '2010-01-01' AND '2010-12-31';
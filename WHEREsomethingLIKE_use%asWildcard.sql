Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.

something LIKE 'abc'

Solution 1: use _ as a placeholder, 4 _ means 4 letters in between. % means wildcard, could be anything
SELECT
  patient_id,
  first_name
FROM patients
WHERE first_name LIKE 's____%s';

Solution 2: if we don't use _, then we can specify the LEN of the string
SELECT
  patient_id,
  first_name
FROM patients
WHERE
  first_name LIKE 's%s'
  AND len(first_name) >= 6;

Solution 3: clumsiest solution, separating everything in the WHERE clause
SELECT
  patient_id,
  first_name
FROM patients
WHERE
  first_name LIKE 's%'
  and first_name LIKE '%s'
  AND LEN(first_name) >= 6;
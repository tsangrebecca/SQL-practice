Show the total amount of male patients and the total amount of female patients in the patients table.
Display the two results in the same row.

Solution 1:
SELECT 
    COUNT(gender) AS male_count,
    (SELECT COUNT(gender) FROM patients Where gender = 'F') AS female_count
FROM patients 
WHERE gender = 'M';

Solution 2:
SELECT 
  (SELECT count(*) FROM patients WHERE gender='M') AS male_count, 
  (SELECT count(*) FROM patients WHERE gender='F') AS female_count;

Solution 3:
SELECT 
  SUM(gender = 'M') AS male_count, 
  SUM(gender = 'F') AS female_count
FROM patients;

Solution 4:
SELECT 
  SUM(CASE WHEN gender = 'M' THEN 1 END) AS male_count,
  SUM(CASE WHEN gender = 'F' THEN 1 END) AS female_count 
FROM patients;
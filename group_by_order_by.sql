Show the city and the total number of patients in the city.
Order from most to least patients and then by city name ascending.

Solution 1:
SELECT city, COUNT(distinct patient_id) AS num_patients
FROM patients
group by city
order by num_patients desc, city;

Solution 2:
SELECT
  city,
  COUNT(*) AS num_patients
FROM patients
GROUP BY city
ORDER BY num_patients DESC, city asc;
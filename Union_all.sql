Show first name, last name and role of every person that is either patient or doctor.
The roles are either "Patient" or "Doctor"

Hint: create a new column called role and fill in constants in '' then UNION ALL includes duplicates just in case some patients are also doctors.

Solution:
SELECT first_name, last_name, 'Patient' AS role 
FROM patients
    union all
SELECT first_name, last_name, 'Doctor' AS role
FROM doctors;
-- Get all of the students without a gmail.com account and a phone number.

-- Get their name, email, id, and cohort_id.
-- Expected Result:

--       name       | id  |           email           | cohort_id 
-- -----------------+-----+---------------------------+-----------
--  Javonte Ward    | 178 | jessie_howell@hotmail.com |        12
--  Jessika Jenkins | 187 | stephanie.koss@kevon.io   |        12
--  Jerrold Rohan   | 189 | wehner.twila@hotmail.com  |        12
-- (3 rows)

SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com' 
AND phone IS NULL;
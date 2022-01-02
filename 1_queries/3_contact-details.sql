-- Get all of the students that don't have an email or phone number.

-- Get their name, id, and cohort_id.
-- Expected Result:

--        name       | id  
-- ------------------+-----
--  Aurore Yundt     | 160
--  Cory Toy         | 161
--  Kurt Turcotte    | 163
--  Elda McClure     | 164
--  Luisa Sipes      | 168
-- ...
-- (17 rows)

SELECT name, id, cohort_id
FROM students
WHERE email IS NULL 
OR phone IS NULL;
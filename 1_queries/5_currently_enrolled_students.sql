-- Get all of the students currently enrolled.

-- Get their name, id, and cohort_id.
-- Order them by cohort_id.
-- Expected Result:

--         name         | id  | cohort_id 
-- ---------------------+-----+-----------
--  Deon Hahn           | 151 |        11
--  Sean Bartell        | 152 |        11
--  Sarai Flatley       | 153 |        11
--  Billie Mitchell     | 154 |        11
--  Vance Kihn          | 155 |        11
-- ...
-- (42 rows)

SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;
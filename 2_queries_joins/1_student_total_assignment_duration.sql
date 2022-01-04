-- Get the total amount of time that a student has spent on all assignments.

-- This should work for any student but use 'Ibrahim Schimmel' for now.
-- Select only the total amount of time as a single column.
-- Expected Result:

--  total_duration 
-- ----------------
--            6888
-- (1 row)
-- SUM(duration)

SELECT SUM(duration) AS total_duration FROM assignment_submissions JOIN students ON assignment_submissions.student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';
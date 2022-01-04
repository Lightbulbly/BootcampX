-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

-- This should work for any cohort but use FEB12 for now.
-- Select only the total amount of time as a single column.
-- You can write as many JOIN statements as you need in a single query. Expected Result:
--  total_duration 
-- ----------------
--          373501
-- (1 row)

SELECT SUM(duration) as total_duration 
FROM assignment_submissions JOIN students ON assignment_submissions.student_id=students.id 
WHERE cohort_id=(
  SELECT cohorts.id as cohort_id FROM cohorts JOIN students ON cohorts.id=students.cohort_id WHERE cohorts.name = 'FEB12' LIMIT 1
  )
GROUP BY cohort_id;
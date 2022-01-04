-- Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.
-- Expected Result:

--  cohort | total_submissions 
-- --------+-------------------
--  SEP24  |              9328
--  JUN04  |              8030
--  APR09  |              7935
--  NOV19  |              7231
--  JUL02  |              5868
-- ...
-- (11 rows)

-- SELECT name AS cohort, COUNT(submission_date) AS total_submissions
-- FROM (SELECT students.id AS student_id, students.cohort_id, cohorts.name FROM students JOIN cohorts ON students.cohort_id = cohorts.id) AS x JOIN assignment_submissions ON x.student_id=assignment_submissions.student_id
-- GROUP BY name
-- ORDER BY COUNT(submission_date) DESC;

SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;
 
 
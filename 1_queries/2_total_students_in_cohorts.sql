-- Select the total number of students who were in the first 3 cohorts.

-- Expected Result:

--  count 
-- -------
--     48
-- (1 row)

-- SELECT count(*)
-- FROM students
-- WHERE cohort_id =1 OR cohort_id =2 OR cohort_id =3;

SELECT count(id)
FROM students
WHERE cohort_id in (1,2,3);
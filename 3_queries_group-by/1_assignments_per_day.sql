-- Get the total number of assignments for each day of bootcamp.

-- Select the day and the total assignments.
-- Order the results by day.
-- This query only requires the assignments table.
-- Expected Result:

--  day | total_assignments 
-- -----+-------------------
--    1 |                11
--    2 |                 9
--    3 |                 9
--    4 |                 9
--    5 |                 7
-- ...
-- (51 rows)

SELECT day, COUNT(id) AS total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;
 
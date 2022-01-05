-- Get each day with the total number of assignments and the total duration of the assignments.

-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.
-- Expected Result:

--  day | number_of_assignments | duration 
-- -----+-----------------------+----------
--    1 |                    11 |      590
--    2 |                     9 |      585
--    3 |                     9 |      425
--    4 |                     9 |      380
--    5 |                     7 |      405
-- ...
-- (51 rows)

-- SELECT day, COUNT(id) AS number_of_assignments, SUM(duration) AS duration
-- FROM assignments
-- GROUP BY assignments.day
-- ORDER BY day;

SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;
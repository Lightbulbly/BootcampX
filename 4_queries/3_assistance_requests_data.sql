-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.
-- Expected Result:

--       teacher       |         student          |    assignment    | duration 
-- --------------------+--------------------------+------------------+----------
--  Helmer Rodriguez   | Maximillian Pfannerstill | Expedita officia | 00:02:45
--  Roberto Towne      | Vivien Mosciski          | Ea totam iste    | 00:02:45
--  Georgiana Fahey    | Gene Carter              | Ut fuga          | 00:02:45
--  Cheyanne Powlowski | Vivien Mosciski          | Eum eaque        | 00:02:45
--  Roberto Towne      | Maximillia Willms        | Quibusdam est    | 00:03:00
-- (26299 rows)


-- select count(*) FROM (
SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (assistance_requests.completed_at-assistance_requests.started_at) AS duration 
FROM assistance_requests 
JOIN teachers ON assistance_requests.teacher_id=teachers.id
JOIN students ON assistance_requests.student_id=students.id
JOIN assignments ON assistance_requests.assignment_id=assignments.id
ORDER BY duration 
-- ) AS X;

--       teacher       |         student          |             assignment             | duration 
-- --------------------+--------------------------+------------------------------------+----------
--  Helmer Rodriguez   | Maximillian Pfannerstill | Expedita officia                   | 00:02:45
--  Georgiana Fahey    | Gene Carter              | Ut fuga                            | 00:02:45
--  Roberto Towne      | Vivien Mosciski          | Ea totam iste                      | 00:02:45
--  Cheyanne Powlowski | Vivien Mosciski          | Eum eaque                          | 00:02:45
--  Rosalyn Raynor     | Gene Carter              | Porro placeat velit                | 00:03:00
--  Roberto Towne      | Maximillia Willms        | Quibusdam est                      | 00:03:00







-- Following is the answer from compass which has the same result as my code above, which is different from expected result. 

-- select count(*) FROM (

-- SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (completed_at-started_at) as duration
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- JOIN students ON students.id = student_id
-- JOIN assignments ON assignments.id = assignment_id
-- ORDER BY duration
-- ) AS X;

--  teacher       |         student          |             assignment             | duration 
-- --------------------+--------------------------+------------------------------------+----------
--  Helmer Rodriguez   | Maximillian Pfannerstill | Expedita officia                   | 00:02:45
--  Georgiana Fahey    | Gene Carter              | Ut fuga                            | 00:02:45
--  Roberto Towne      | Vivien Mosciski          | Ea totam iste                      | 00:02:45
--  Cheyanne Powlowski | Vivien Mosciski          | Eum eaque                          | 00:02:45
--  Rosalyn Raynor     | Gene Carter              | Porro placeat velit                | 00:03:00
--  Roberto Towne      | Maximillia Willms        | Quibusdam est                      | 00:03:00

-- 20214 (1 row)
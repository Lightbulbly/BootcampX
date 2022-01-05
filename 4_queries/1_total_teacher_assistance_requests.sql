-- Get the total number of assistance_requests for a teacher.

-- Select the teacher's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.
-- Expected Result:

--  total_assistances |     name     
-- -------------------+--------------
--               4227 | Waylon Boehm
-- (1 row)

SELECT COUNT(assistance_requests.id) AS total_assistances, teachers.name
FROM assistance_requests 
JOIN teachers ON assistance_requests.teacher_id=teachers.id
WHERE teachers.name='Waylon Boehm'
GROUP BY teachers.name;

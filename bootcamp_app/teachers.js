const { Client } = require('pg');

const client = new Client({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

client.connect();

// client.query(`
// SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
// FROM teachers
// JOIN assistance_requests ON teacher_id = teachers.id
// JOIN students ON student_id = students.id
// JOIN cohorts ON cohort_id = cohorts.id
// WHERE cohorts.name LIKE '%${process.argv[2]}%'
// ORDER BY teacher;
// `)
//   .then(res => {
//     res.rows.forEach(user => {
//       console.log(`${process.argv[2]}: ${user.teacher}`);
//     });
//   }).catch(err => console.error('query error', err.stack));

client.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2] || 'JUL02'}'
ORDER BY teacher;
`)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  });
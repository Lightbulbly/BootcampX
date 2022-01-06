const { Client } = require('pg');

const client = new Client({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

client.connect();

let myArgs = process.argv.slice(2);
const queryCohortName = myArgs[0];
const  maximumNumberOfResults = myArgs[1].toUpperCase();

// client.query(`
// SELECT students.id as id, students.name as name, cohorts.name as cohort
// FROM students
// JOIN cohorts ON students.cohort_id=cohorts.id
// WHERE cohorts.name LIKE '%${queryCohortName}%'
// LIMIT ${maximumNumberOfResults};
// `)
//   .then(res => {
//     res.rows.forEach(user=> {
//       console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
//     }
//     );
//   })
//   .catch(err => console.error('query error', err.stack));

client.query(`
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
LIMIT ${process.argv[3] || 5};
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
    });
  }).catch(err => console.error('query error', err.stack));
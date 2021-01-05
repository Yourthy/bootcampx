SELECT teachers.name AS teacher, cohorts.name AS name
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name = 'JUL02'
ORDER BY teachers.name;

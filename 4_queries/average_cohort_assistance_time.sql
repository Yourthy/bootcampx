SELECT cohorts.name AS name, avg(completed_at - started_at) AS average_assistance_time
FROM students
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN assistance_requests ON students.id = assistance_requests.student_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;
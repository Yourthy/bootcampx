SELECT SUM(assignment_submissions.duration)
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id

WHERE students.name = 'Ibrahim Schimmel';

SELECT sum(assignment_submissions.duration) AS total_duration
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE cohorts.name = 'FEB12';



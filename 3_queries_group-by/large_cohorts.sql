SELECT cohorts.name, count(students.id)
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY count(students.id);


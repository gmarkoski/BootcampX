SELECT cohort.name as cohort, sum(completed_at - start_at) as total_duration
FROM assistance_requests
JOIN students ON student.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;

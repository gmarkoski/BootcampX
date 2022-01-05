SELECT teachers.name as teacher, student.name as student, assignment.name as assignment, ((completed_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teacher.id = teacher_id
JOIN students ON student.id = student_id
JOIN assignments ON assignment.id = assignment_id
ORDER BY duration;

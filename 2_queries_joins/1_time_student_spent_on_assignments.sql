SELECT
  sum(assignment_submissions.duration) AS total_duration
FROM
  students
  RIGHT JOIN assignment_submissions ON students.id = student_id
WHERE
  name = 'Ibrahim Schimmel'
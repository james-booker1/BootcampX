SELECT
  assignments.id AS id,
  assignments.day AS DAY,
  assignments.chapter AS chapter,
  assignments.name AS name,
  count(assistance_requests) AS total_requests
FROM
  assignments
  JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY
  assignments.id,
  assignments.name,
  assignments.day,
  assignments.chapter
ORDER BY
  total_requests DESC;
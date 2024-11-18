 -- Hayat Negash
SELECT * 
FROM courses

SELECT * FROM assignments
LIMIT 10

SELECT count(*) FROM courses

SELECT min(due_date) FROM assignments

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%'

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date

-- Exercise Questions

-- Assignments for a Specific Course
select title, due_date
From assignments
where course_id = 'COMP1234'

-- Earliest Assignment Due Date
SELECT min(due_date)
FROM assignments

-- Latest Assignment Due Date
SELECT max(due_date)
FROM assignments

-- Assignments Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08'

-- Assignments Due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%'

-- The Most Completed Assignment
SELECT MAX(due_date), status 
FROM assignments
WHERE status = 'Completed'


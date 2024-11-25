-- Hayat Negash
SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT min(due_date) FROM assignments;

SELECT sqlite_version();

--Exercise Questions 

SELECT concat (course_name, '_', semester) As courses_semester
From courses

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Friday%';

SELECT assignment_id, assignment_name, due_date
FROM assignments
WHERE DATE(due_date) > CURRENT_DATE;

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;

SELECT UPPER(course_name)
FROM courses;

SELECT assignment_title
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT assignment_title
FROM assignments
WHERE due_date IS NULL;






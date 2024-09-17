-- Mejores notas de cada estudiante superiores a 7
USE university_sql_schema;

SELECT 
	students_name AS StudentName, 
	students_lastname_one AS StudentLastname, 
	courses_name AS Course, 
	grades_notes AS Notes
FROM grades g
JOIN students s
ON g.grades_students_id = s.students_id
JOIN courses c
ON g.grades_courses_id = c.courses_id
WHERE g.grades_notes >= 7 AND g.grades_notes <=10
ORDER BY s.students_id;
-- Estudiantes inscritos en los cursos.
USE university_sql_schema;

SELECT  
	students_name AS StudentName, 
    students_lastname_one AS StudentLastname, 
    courses_name AS Course
FROM courses c
JOIN grades g
ON g.grades_courses_id = c.courses_id
JOIN students s
ON s.students_id = g.grades_students_id
ORDER BY s.students_name;

-- Estudiantes inscritos en la cantidad de los cursos
SELECT  
	students_name AS StudentName, 
	students_lastname_one AS StudentLastname, 
	COUNT(c.courses_id) AS NumberOFCourses
FROM courses c
JOIN grades g
ON g.grades_courses_id = c.courses_id
JOIN students s
ON s.students_id = g.grades_students_id
GROUP BY students_id
ORDER BY s.students_name;

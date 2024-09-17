-- INFORME DE CURSOS Y CALIFICACIONES PROMEDIO ORDENADO POR EL CURSO MAS DESAFIANTE
USE university_sql_schema;

SELECT 
	courses_name AS CourseName,
	ROUND(AVG(grades_notes), 2) AS AverageNote
FROM courses c
JOIN grades g
ON c.courses_id = g.grades_courses_id
GROUP BY c.courses_name
ORDER BY AverageNote ASC; 
	

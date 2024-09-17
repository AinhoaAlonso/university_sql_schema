-- Nota media que otorga cada profesor
USE university_sql_schema;

SELECT 
	professors_name AS ProfessorName, 
	professors_lastname_one AS ProfessorLastname, 
    ROUND(AVG (grades_notes), 2) AS AverageGrades
FROM grades g
JOIN courses c
ON g.grades_courses_id = c.courses_id
JOIN professors p
ON c.courses_professors_id = p.professors_id
GROUP BY p.professors_id
ORDER BY professors_id;


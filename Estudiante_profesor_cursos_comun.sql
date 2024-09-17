-- Estudiante y profesor con más cursos en común
USE university_sql_schema;

SELECT 
    students_name AS StudentName,
    professors_name AS ProfessorName, 
    course_count AS CommonCourse
FROM (
    SELECT 
        s.students_name, 
        p.professors_name,
        COUNT(c.courses_id) AS course_count
    FROM courses c
    JOIN grades g 
    ON c.courses_id = g.grades_courses_id
    JOIN students s 
    ON s.students_id = g.grades_students_id
    JOIN professors p 
    ON p.professors_id = c.courses_professors_id
    GROUP BY s.students_name, p.professors_name
) AS CountCourse
WHERE 
    course_count = (
        SELECT 
            MAX(course_count)
        FROM (
            SELECT 
                COUNT(c.courses_id) AS course_count
            FROM courses c
            JOIN grades g 
            ON c.courses_id = g.grades_courses_id
            JOIN students s 
            ON s.students_id = g.grades_students_id
            JOIN professors p 
            ON p.professors_id = c.courses_professors_id
            GROUP BY s.students_name, p.professors_name
        ) AS MaxCourseCount
    );






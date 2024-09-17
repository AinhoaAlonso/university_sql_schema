USE university_sql_schema;

-- Insertando datos en la tabla professors
INSERT INTO professors
(`professors_name`,
`professors_lastname_one`,
`professors_lasname_two`,
`professors_specialty`,
`professors_email`,
`professors_mobile`)
VALUES
	('Yolanda', 'Gutiérrez', 'Fernéndez', 'Matemáticas', 'yolanda@university.com', '555-555-5555'),
	('Carmen', 'Martín', 'Muñoz', 'Física', 'carmen@university.com', '555-555-5555'),
    ('Andres', 'Alonso', 'Fernández', 'Geología', 'andres@university.com', '555-555-5555'),
    ('Carlos', 'Sánchez', 'Diez', 'Biología', 'carlos@university.com', '555-555-5555'),
    ('Mariola', 'Aranburu', 'García', 'Informática', 'mariola@university.com', '555-555-5555'),
    ('Luis', 'Olabarria', 'Simón', 'Ingeniería industrial', 'luis@university.com', '555-555-5555'),
    ('Lucia', 'Gutiérrez', 'Nieto', 'Química', 'lucia@university.com', '555-555-5555'),
    ('Nekane', 'Pérez', 'Rodríguez', 'Telecomunicaciones', 'nekane@university.com', '555-555-5555'),
    ('Maria', 'Tajes', 'Buendia', 'Matemáticas', 'maria@university.com', '555-555-5555'),
    ('Julio', 'Simón', 'Ojeda', 'Electrónica', 'julio@university.com', '555-555-5555'),
    ('Jon', 'Calle', 'Rojo', 'Ingeniería Mecánica', 'jon@university.com', '555-555-5555'),
    ('Laura', 'Elizo', 'Serrano', 'Informática', 'laura@university.com', '555-555-5555'),
    ('Cristina', 'Alonso', 'García', 'Ingeniería Mecánica', 'cristina@university.com', '555-555-5555'),
    ('Marta', 'Iglesias', 'Gomez', 'Química', 'marta@university.com', '555-555-5555'),
    ('Pedro', 'Izquierdo', 'Sánchez', 'Electrónica', 'pedro@university.com', '555-555-5555');

-- Insertando datos en la tabla students
INSERT INTO students
(`students_name`,
`students_lastname_one`,
`students_lastname_two`,
`students_email`,
`students_mobile`)
VALUES
	('Juan', 'Pérez', 'García', 'student1@student.com', '555 555 5555'),
	('María', 'Gómez', 'Rodríguez', 'student2@student.com', '555 555 5555'),
	('Pedro', 'Sánchez', 'Fernández', 'student3@student.com', '555 555 5555'),
	('Ana', 'López', 'Martínez', 'student4@student.com', '555 555 5555'),
	('Luis', 'Díaz', 'González', 'student5@student.com', '555 555 5555'),
	('Carmen', 'Torres', 'Jiménez', 'student6@student.com', '555 555 5555'),
	('Carlos', 'Romero', 'Pérez', 'student7@student.com', '555 555 5555'),
	('Laura', 'Rubio', 'Morales', 'student8@student.com', '555 555 5555'),
	('Miguel', 'Castro', 'Ortega', 'student9@student.com', '555 555 5555'),
	('Lucía', 'Molina', 'Torres', 'student10@student.com', '555 555 5555'),
	('Javier', 'Suárez', 'Herrera', 'student11@student.com', '555 555 5555'),
	('Marta', 'Marín', 'Moreno', 'student12@student.com', '555 555 5555'),
	('Antonio', 'Ruiz', 'López', 'student13@student.com', '555 555 5555'),
	('Paula', 'Gil', 'Navarro', 'student14@student.com', '555 555 5555'),
	('Sergio', 'Iglesias', 'García', 'student15@student.com', '555 555 5555'),
	('Elena', 'Flores', 'Gómez', 'student16@student.com', '555 555 5555'),
	('Manuel', 'Cortés', 'Díaz', 'student17@student.com', '555 555 5555'),
	('Patricia', 'Medina', 'Romero', 'student18@student.com', '555 555 5555'),
	('David', 'Vargas', 'Jiménez', 'student19@student.com', '555 555 5555'),
	('Cristina', 'Núñez', 'Gutiérrez', 'student20@student.com', '555 555 5555'),
	('Raúl', 'Delgado', 'Castillo', 'student21@student.com', '555 555 5555'),
	('Isabel', 'León', 'Pérez', 'student22@student.com', '555 555 5555'),
	('Fernando', 'Santos', 'Ramos', 'student23@student.com', '555 555 5555'),
	('Sara', 'Herrera', 'Romero', 'student24@student.com', '555 555 5555'),
	('Alberto', 'Lozano', 'Martín', 'student25@student.com', '555 555 5555'),
	('Rosa', 'Molina', 'Morales', 'student26@student.com', '555 555 5555'),
	('Alejandro', 'Ortega', 'González', 'student27@student.com', '555 555 5555'),
	('Natalia', 'Vázquez', 'Fernández', 'student28@student.com', '555 555 5555'),
	('Francisco', 'Ríos', 'Ortega', 'student29@student.com', '555 555 5555'),
	('Adriana', 'Moreno', 'Pérez', 'student30@student.com', '555 555 5555'),
	('Álvaro', 'Ortega', 'Suárez', 'student31@student.com', '555 555 5555'),
	('Teresa', 'Gutiérrez', 'Ruiz', 'student32@student.com', '555 555 5555'),
	('Daniel', 'Garrido', 'Martínez', 'student33@student.com', '555 555 5555'),
	('Beatriz', 'Cabrera', 'Fernández', 'student34@student.com', '555 555 5555'),
	('Pablo', 'Pastor', 'Navarro', 'student35@student.com', '555 555 5555'),
	('Susana', 'Nieto', 'Romero', 'student36@student.com', '555 555 5555'),
	('Ignacio', 'Carrillo', 'Lozano', 'student37@student.com', '555 555 5555'),
	('Eva', 'Lara', 'Torres', 'student38@student.com', '555 555 5555'),
	('Roberto', 'Peña', 'Fernández', 'student39@student.com', '555 555 5555'),
	('Claudia', 'Fuentes', 'García', 'student40@student.com', '555 555 5555'),
	('Tomás', 'Ramos', 'López', 'student41@student.com', '555 555 5555'),
	('Julia', 'Castro', 'García', 'student42@student.com', '555 555 5555'),
	('Esteban', 'Solís', 'Moreno', 'student43@student.com', '555 555 5555'),
	('Gloria', 'Alonso', 'Jiménez', 'student44@student.com', '555 555 5555'),
	('Hugo', 'Escudero', 'González', 'student45@student.com', '555 555 5555'),
	('Alicia', 'Márquez', 'Ortiz', 'student46@student.com', '555 555 5555'),
	('Ángel', 'Vega', 'Pérez', 'student47@student.com', '555 555 5555'),
	('Olga', 'Prieto', 'Fernández', 'student48@student.com', '555 555 5555'),
	('Gustavo', 'Ortega', 'Díaz', 'student49@student.com', '555 555 5555'),
	('Noelia', 'Hernández', 'García', 'student50@student.com', '555 555 5555'),
	('Joaquín', 'Sánchez', 'Herrera', 'student51@student.com', '555 555 5555'),
	('Marcos', 'Medina', 'Navarro', 'student52@student.com', '555 555 5555'),
	('Eva', 'Salazar', 'Ruiz', 'student53@student.com', '555 555 5555'),
	('Victor', 'Ortiz', 'Moreno', 'student54@student.com', '555 555 5555'),
	('Sofía', 'Delgado', 'Ramírez', 'student55@student.com', '555 555 5555'),
	('Ramón', 'Romero', 'Fernández', 'student56@student.com', '555 555 5555'),
	('Mercedes', 'Castro', 'García', 'student57@student.com', '555 555 5555'),
	('Gonzalo', 'López', 'Jiménez', 'student58@student.com', '555 555 5555'),
	('Irene', 'Rubio', 'Torres', 'student59@student.com', '555 555 5555'),
	('Rodrigo', 'Fernández', 'Pérez', 'student60@student.com', '555 555 5555'),
	('Blanca', 'Hernández', 'Ortiz', 'student61@student.com', '555 555 5555'),
	('Óscar', 'Vargas', 'Pérez', 'student62@student.com', '555 555 5555'),
	('Lorena', 'Iglesias', 'Ramírez', 'student63@student.com', '555 555 5555'),
	('Diego', 'Gil', 'Fernández', 'student64@student.com', '555 555 5555'),
	('Verónica', 'Ríos', 'Herrera', 'student65@student.com', '555 555 5555'),
	('Ricardo', 'Martín', 'Díaz', 'student66@student.com', '555 555 5555'),
	('Bárbara', 'Molina', 'Ortega', 'student67@student.com', '555 555 5555'),
	('Cristian', 'Marín', 'Fernández', 'student68@student.com', '555 555 5555'),
	('Silvia', 'Lozano', 'Navarro', 'student69@student.com', '555 555 5555'),
	('Héctor', 'Suárez', 'López', 'student70@student.com', '555 555 5555'),
	('Clara', 'Rubio', 'Jiménez', 'student71@student.com', '555 555 5555'),
	('Mariano', 'León', 'Herrera', 'student72@student.com', '555 555 5555'),
	('Violeta', 'Rodríguez', 'Ruiz', 'student73@student.com', '555 555 5555'),
	('Eduardo', 'Castillo', 'Fernández', 'student74@student.com', '555 555 5555'),
	('Ruth', 'Cortés', 'Ortega', 'student75@student.com', '555 555 5555'),
	('Felipe', 'Ruiz', 'Pérez', 'student76@student.com', '555 555 5555'),
	('Lourdes', 'Roldán', 'Morales', 'student77@student.com', '555 555 5555'),
	('Ricardo', 'Arroyo', 'Sánchez', 'student78@student.com', '555 555 5555'),
	('Verónica', 'Ramírez', 'Gómez', 'student79@student.com', '555 555 5555'),
	('Luis', 'García', 'Martínez', 'student80@student.com', '555 555 5555'),
	('Rocío', 'Castro', 'Navarro', 'student81@student.com', '555 555 5555'),
	('Adrián', 'Vega', 'López', 'student82@student.com', '555 555 5555'),
	('Natalia', 'Alonso', 'Herrera', 'student83@student.com', '555 555 5555'),
	('Antonio', 'Montes', 'García', 'student84@student.com', '555 555 5555'),
	('Julia', 'Suárez', 'Romero', 'student85@student.com', '555 555 5555'),
	('Ángel', 'Sánchez', 'Ríos', 'student86@student.com', '555 555 5555'),
	('María', 'Torres', 'Castro', 'student87@student.com', '555 555 5555'),
	('Rubén', 'Reyes', 'Díaz', 'student88@student.com', '555 555 5555'),
	('Helena', 'Gómez', 'Pérez', 'student89@student.com', '555 555 5555'),
	('Jorge', 'Paredes', 'López', 'student90@student.com', '555 555 5555'),
	('Claudia', 'Pérez', 'Iglesias', 'student91@student.com', '555 555 5555'),
	('Andrés', 'Gutiérrez', 'Ramos', 'student92@student.com', '555 555 5555'),
	('Gabriela', 'González', 'Martínez', 'student93@student.com', '555 555 5555'),
	('Emilio', 'García', 'Gómez', 'student94@student.com', '555 555 5555'),
	('Paula', 'Morales', 'Navarro', 'student95@student.com', '555 555 5555'),
	('Óscar', 'Ferrer', 'López', 'student96@student.com', '555 555 5555'),
	('Inés', 'Castro', 'Ríos', 'student97@student.com', '555 555 5555'),
	('Carlos', 'Gómez', 'Suárez', 'student98@student.com', '555 555 5555'),
	('Marina', 'García', 'Romero', 'student99@student.com', '555 555 5555'),
	('Samuel', 'González', 'Ríos', 'student100@student.com', '555 555 5555');

-- Insertando datos en la tabla courses
INSERT INTO courses
(`courses_name`,
`courses_credits`,
`courses_professors_id`)
VALUES
	('Análisis Matemático', rand()* 6 , 1),
    ('Física', rand()* 6 , 2),
    ('Geología', rand()* 6 , 3),
    ('Biología', rand()* 6 , 4),
    ('Seguridad Informática', rand()* 6 , 5),
    ('Fundamentos de la Ingeniería Industrial', rand()* 6 , 6),
    ('Química I', rand()* 6 , 7),
    ('Teoría de la Información', rand()* 6 , 8),
    ('Matemáticas II', rand()* 6 , 9),
    ('Circuitos Eléctricos', rand()* 6 , 10),
    ('Termodinámica', rand()* 6 , 11),
    ('Bases de Datos', rand()* 6 , 12),
    ('Robótica', rand()* 6 , 13),
    ('Química II', rand()* 6 , 14),
    ('Electrónica Analógica y Digital', rand()* 6 , 15),
	('Fisica II', rand()* 6 , 2),
    ('Estructuras de Datos y Algoritmos', rand()* 6 , 5),
    ('Optimización de Procesos', rand()* 6 , 6),
    ('Química Experimental', rand()* 6 , 7),
    ('Comunicación Inalámbrica', rand()* 6 , 8),
    ('Álgebra I', rand()* 6 , 9),
    ('Microcontroladores', rand()* 6 , 10),
    ('Dinámica de Máquinas', rand()* 6 , 11),
    ('Inteligencia Artificial', rand()* 6 , 12),
    ('Resistencia de Materiales', rand()* 6 , 13),
    ('Química industrial', rand()* 6 , 14),
    ('Electromagnetismo', rand()* 6 , 15),
    ('Control de Calidad', rand()* 6 , 6),
    ('Electroquímica', rand()* 6 , 7),
    ('Seguridad en Redes', rand()* 6 , 8),
    ('Algebra II', rand()* 6 , 9);

-- Insertando datos en la tabla grades
INSERT INTO grades (grades_notes, grades_students_id, grades_courses_id)
SELECT 
	ROUND(RAND()*10,2) as grades_notes,
    students.students_id,
    courses.courses_id
FROM students
CROSS JOIN courses
ORDER BY RAND()
LIMIT 500;

    
















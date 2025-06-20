-- 1. Insertar datos en Document_document (Documentos)
INSERT INTO [dbo].[Document_document] ([code_document], [name_document])
VALUES 
('DOC001', 'Acta de Nacimiento'),
('DOC002', 'Certificado de Estudios'),
('DOC003', 'Fotografías Tamaño Infantil'),
('DOC004', 'CURP'),
('DOC005', 'Comprobante de Domicilio'),
('DOC006', 'Cartilla de Vacunación'),
('DOC007', 'Historial Académico'),
('DOC008', 'Certificado Médico'),
('DOC009', 'Carta de Buena Conducta'),
('DOC010', 'RFC del Tutor'),
('DOC011', 'Boleta Anterior'),
('DOC012', 'Constancia de No Adeudo'),
('DOC013', 'IFE del Tutor'),
('DOC014', 'Certificado de Idiomas'),
('DOC015', 'Registro de Calificaciones'),
('DOC016', 'Permiso de Viaje'),
('DOC017', 'Seguro Médico'),
('DOC018', 'Exámenes Diagnósticos'),
('DOC019', 'Certificado de Discapacidad'),
('DOC020', 'Carta de Recomendación'),
('DOC021', 'Pasaporte'),
('DOC022', 'Visa de Estudiante'),
('DOC023', 'Test Psicométrico'),
('DOC024', 'Reglamento Firmado'),
('DOC025', 'Autorización de Imagen'),
('DOC026', 'Ficha de Inscripción'),
('DOC027', 'Comprobante de Pago'),
('DOC028', 'Certificado de Bachillerato'),
('DOC029', 'Título Universitario'),
('DOC030', 'Diploma de Cursos');

-- 2. Insertar datos en Group_group (Grupos)
INSERT INTO [dbo].[Group_group] ([code_group], [level_group], [section_group], [amount_group])
VALUES 
('G1A', 'Primero', 'A', 25),
('G1B', 'Primero', 'B', 28),
('G1C', 'Primero', 'C', 30),
('G2A', 'Segundo', 'A', 22),
('G2B', 'Segundo', 'B', 26),
('G3A', 'Tercero', 'A', 24),
('G3B', 'Tercero', 'B', 27),
('G4A', 'Cuarto', 'A', 23),
('G4B', 'Cuarto', 'B', 25),
('G5A', 'Quinto', 'A', 20),
('G5B', 'Quinto', 'B', 28),
('G6A', 'Sexto', 'A', 30),
('G6B', 'Sexto', 'B', 32),
('G7A', 'Séptimo', 'A', 18),
('G7B', 'Séptimo', 'B', 21),
('G8A', 'Octavo', 'A', 19),
('G8B', 'Octavo', 'B', 22),
('G9A', 'Noveno', 'A', 25),
('G9B', 'Noveno', 'B', 24),
('G10A', 'Décimo', 'A', 20),
('G10B', 'Décimo', 'B', 23),
('G11A', 'Undécimo', 'A', 18),
('G11B', 'Undécimo', 'B', 19),
('G12A', 'Duodécimo', 'A', 17),
('G12B', 'Duodécimo', 'B', 20),
('PRE1', 'Preescolar', '1', 15),
('PRE2', 'Preescolar', '2', 16),
('PRE3', 'Preescolar', '3', 14),
('KIN1', 'Kínder', 'A', 12),
('KIN2', 'Kínder', 'B', 13);

-- 3. Insertar datos en Mentor_mentor (Tutores)
INSERT INTO [dbo].[Mentor_mentor] ([code_tutor], [name_tutor], [birthdate_tutor], [phone_tutor], [email_tutor], [address_tutor])
VALUES 
('T001', 'Juan Pérez', '1980-05-15', '555-1001', 'juan.perez@mail.com', 'Calle Falsa 123'),
('T002', 'María García', '1975-08-22', '555-1002', 'maria.garcia@mail.com', 'Av. Siempre Viva 456'),
('T003', 'Carlos López', '1982-03-30', '555-1003', 'carlos.lopez@mail.com', 'Boulevard Los Olivos 789'),
('T004', 'Ana Martínez', '1978-11-10', '555-1004', 'ana.martinez@mail.com', 'Callejón Diagonal 101'),
('T005', 'Luis Rodríguez', '1985-07-18', '555-1005', 'luis.rod@mail.com', 'Paseo Reforma 202'),
('T006', 'Laura Sánchez', '1979-02-14', '555-1006', 'laura.san@mail.com', 'Cerro del Tepeyac 303'),
('T007', 'Roberto Jiménez', '1983-09-05', '555-1007', 'roberto.jim@mail.com', 'Calzada Independencia 404'),
('T008', 'Patricia Díaz', '1976-12-03', '555-1008', 'paty.diaz@mail.com', 'Avenida Central 505'),
('T009', 'Jorge Hernández', '1981-04-25', '555-1009', 'jorge.hern@mail.com', 'Plaza Mayor 606'),
('T010', 'Sofía Ramírez', '1984-06-12', '555-1010', 'sofia.ram@mail.com', 'Circunvalación 707'),
('T011', 'Miguel Torres', '1977-01-19', '555-1011', 'miguel.torres@mail.com', 'Ronda Norte 808'),
('T012', 'Elena Castro', '1980-08-08', '555-1012', 'elena.castro@mail.com', 'Glorieta Sur 909'),
('T013', 'Fernando Ruiz', '1979-05-30', '555-1013', 'fer.ruiz@mail.com', 'Pasaje Este 1010'),
('T014', 'Lucía Mendoza', '1982-10-17', '555-1014', 'lucia.mendoza@mail.com', 'Camino Oeste 1111'),
('T015', 'Ricardo Vargas', '1975-07-23', '555-1015', 'ricky.vargas@mail.com', 'Sendero Norte 1212'),
('T016', 'Carmen Ortega', '1983-03-11', '555-1016', 'carmen.ort@mail.com', 'Vereda Sur 1313'),
('T017', 'Oscar Flores', '1978-11-28', '555-1017', 'oscar.flores@mail.com', 'Calzada Poniente 1414'),
('T018', 'Adriana Silva', '1981-02-09', '555-1018', 'adri.silva@mail.com', 'Avenida Oriente 1515'),
('T019', 'Manuel Rojas', '1976-09-15', '555-1019', 'manu.rojas@mail.com', 'Paseo de la Reforma 1616'),
('T020', 'Isabel Herrera', '1984-04-02', '555-1020', 'isa.herrera@mail.com', 'Boulevard Norte 1717'),
('T021', 'Francisco Mora', '1979-12-19', '555-1021', 'fran.mora@mail.com', 'Circuito Sur 1818'),
('T022', 'Gabriela Paredes', '1982-01-07', '555-1022', 'gaby.paredes@mail.com', 'Anillo Vial 1919'),
('T023', 'Raúl Guzmán', '1977-06-24', '555-1023', 'raul.guz@mail.com', 'Periférico 2020'),
('T024', 'Silvia Núñez', '1980-10-11', '555-1024', 'silvia.nunez@mail.com', 'Eje Central 2121'),
('T025', 'Alberto Cortés', '1983-05-08', '555-1025', 'alberto.cort@mail.com', 'Viaducto 2222'),
('T026', 'Beatriz León', '1978-08-31', '555-1026', 'bea.leon@mail.com', 'Avenida Juárez 2323'),
('T027', 'Héctor Delgado', '1981-03-16', '555-1027', 'hector.delgado@mail.com', 'Paseo de Montejo 2424'),
('T028', 'Claudia Ríos', '1976-07-04', '555-1028', 'clau.rios@mail.com', 'Calzada de los Héroes 2525'),
('T029', 'Javier Méndez', '1984-11-21', '555-1029', 'javier.mend@mail.com', 'Blvd. Díaz Ordaz 2626'),
('T030', 'Daniela Orozco', '1979-09-13', '555-1030', 'dani.orozco@mail.com', 'Paseo Triunfo de la República 2727');

-- 4. Insertar datos en Student_student (Estudiantes)
INSERT INTO [dbo].[Student_student] ([code_student], [name_student], [surname_student], [birthday_student], [phone_student], [email_student])
VALUES 
('S001', 'Alejandro', 'González', '2010-03-15', '555-2001', 'alex.gonz@mail.com'),
('S002', 'Valeria', 'Martínez', '2011-05-22', '555-2002', 'vale.mart@mail.com'),
('S003', 'Diego', 'Hernández', '2010-08-30', '555-2003', 'diego.hern@mail.com'),
('S004', 'Camila', 'López', '2011-02-10', '555-2004', 'cami.lopez@mail.com'),
('S005', 'Mateo', 'García', '2010-11-18', '555-2005', 'mateo.gar@mail.com'),
('S006', 'Sofía', 'Rodríguez', '2011-07-14', '555-2006', 'sofi.rod@mail.com'),
('S007', 'Nicolás', 'Pérez', '2010-04-05', '555-2007', 'nico.perez@mail.com'),
('S008', 'Isabella', 'Sánchez', '2011-01-03', '555-2008', 'isa.san@mail.com'),
('S009', 'Samuel', 'Ramírez', '2010-09-25', '555-2009', 'sam.ram@mail.com'),
('S010', 'Mía', 'Torres', '2011-06-12', '555-2010', 'mia.torres@mail.com'),
('S011', 'Benjamín', 'Díaz', '2010-12-19', '555-2011', 'benja.diaz@mail.com'),
('S012', 'Valentina', 'Jiménez', '2011-03-08', '555-2012', 'valen.jim@mail.com'),
('S013', 'Joaquín', 'Ruiz', '2010-10-17', '555-2013', 'joaquin.ruiz@mail.com'),
('S014', 'Ximena', 'Mendoza', '2011-08-30', '555-2014', 'ximena.mend@mail.com'),
('S015', 'Emiliano', 'Vargas', '2010-05-23', '555-2015', 'emi.vargas@mail.com'),
('S016', 'Renata', 'Ortega', '2011-02-11', '555-2016', 'rena.ort@mail.com'),
('S017', 'Leonardo', 'Flores', '2010-11-28', '555-2017', 'leo.flores@mail.com'),
('S018', 'Mariana', 'Silva', '2011-04-09', '555-2018', 'mari.silva@mail.com'),
('S019', 'Dylan', 'Rojas', '2010-01-15', '555-2019', 'dylan.rojas@mail.com'),
('S020', 'Regina', 'Herrera', '2011-09-02', '555-2020', 'regi.herrera@mail.com'),
('S021', 'Thiago', 'Mora', '2010-06-19', '555-2021', 'thiago.mora@mail.com'),
('S022', 'Victoria', 'Paredes', '2011-03-07', '555-2022', 'vicky.paredes@mail.com'),
('S023', 'Matías', 'Guzmán', '2010-12-24', '555-2023', 'mati.guz@mail.com'),
('S024', 'Luciana', 'Núñez', '2011-10-11', '555-2024', 'lu.nunez@mail.com'),
('S025', 'Emmanuel', 'Cortés', '2010-07-08', '555-2025', 'emma.cort@mail.com'),
('S026', 'Danna', 'León', '2011-05-31', '555-2026', 'danna.leon@mail.com'),
('S027', 'Jerónimo', 'Delgado', '2010-02-16', '555-2027', 'jero.delgado@mail.com'),
('S028', 'Paulina', 'Ríos', '2011-11-04', '555-2028', 'pau.rios@mail.com'),
('S029', 'Maximiliano', 'Méndez', '2010-08-21', '555-2029', 'max.mend@mail.com'),
('S030', 'Ana Paula', 'Orozco', '2011-04-13', '555-2030', 'anita.orozco@mail.com');

-- 5. Insertar datos en Subjects_subjects (Materias)
INSERT INTO [dbo].[Subjects_subjects] ([code_subject], [name_subject], [period_subject], [academic_subject])
VALUES 
('MAT101', 'Matemáticas I', 'Anual', 'Matematicas'),
('ESP102', 'Español I', 'Anual', 'Lengua'),
('ING103', 'Inglés Básico', 'Semestral', 'Idiomas'),
('CIV104', 'Civismo', 'Trimestral', 'Formación cívica'),
('HIS105', 'Historia Universal', 'Anual', 'Ciencias sociales'),
('GEO106', 'Geografía', 'Semestral', 'Ciencias sociales'),
('BIO107', 'Biología', 'Anual', 'Ciencias naturales'),
('FIS108', 'Física I', 'Semestral', 'Ciencias exactas'),
('QUI109', 'Química', 'Anual', 'Ciencias exactas'),
('ART110', 'Artes Plásticas', 'Trimestral', 'Educación artística'),
('MUS111', 'Música', 'Trimestral', 'Educación artística'),
('EDF112', 'Educación Física', 'Anual', 'Desarrollo físico'),
('INF113', 'Informática', 'Semestral', 'Tecnología'),
('FIL114', 'Filosofía', 'Anual', 'Humanidades'),
('ECO115', 'Economía', 'Semestral', 'Ciencias sociales'),
('LIT116', 'Literatura', 'Anual', 'Humanidades'),
('CAL117', 'Cálculo', 'Semestral', 'Matemáticas avanzadas'),
('EST118', 'Estadística', 'Trimestral', 'Matemáticas aplicadas'),
('DER119', 'Derecho', 'Anual', 'Ciencias sociales'),
('PSI120', 'Psicología', 'Semestral', 'Ciencias de la salud'),
('SOC121', 'Sociología', 'Anual', 'Ciencias sociales'),
('ANT122', 'Antropología', 'Semestral', 'Ciencias sociales'),
('MET123', 'Metodología', 'Trimestral', 'Investigación'),
('TEC124', 'Tecnología', 'Anual', 'Ciencias aplicadas'),
('ECO125', 'Ecología', 'Semestral', 'Ciencias ambientales'),
('ADM126', 'Administración', 'Anual', 'Ciencias económicas'),
('CON127', 'Contabilidad', 'Semestral', 'Ciencias económicas'),
('MED128', 'Medicina', 'Anual', 'Ciencias de la salud'),
('COM129', 'Comunicación', 'Semestral', 'Humanidades'),
('PRO130', 'Programación', 'Anual', 'Tecnología');

-- 6. Insertar datos en Teacher_teacher (Profesores)
INSERT INTO [dbo].[Teacher_teacher] ([code_teacher], [name_teacher], [phone_teacher], [email_teacher], [address_teacher], [area_teacher])
VALUES 
('PROF01', 'Laura Méndez', '555-3001', 'laura.mend@mail.com', 'Av. Conocimiento 100', 'Matemáticas'),
('PROF02', 'Pedro Castillo', '555-3002', 'pedro.cast@mail.com', 'Calle Sabiduría 200', 'Lengua'),
('PROF03', 'Gabriela Solís', '555-3003', 'gaby.sol@mail.com', 'Boulevard Ciencia 300', 'Ciencias Naturales'),
('PROF04', 'Ricardo Fuentes', '555-3004', 'ricky.fuentes@mail.com', 'Paseo Literatura 400', 'Humanidades'),
('PROF05', 'Fernanda Juárez', '555-3005', 'fer.juarez@mail.com', 'Avenida Arte 500', 'Educación Artística'),
('PROF06', 'Omar Valencia', '555-3006', 'omar.val@mail.com', 'Circuito Tecnología 600', 'Informática'),
('PROF07', 'Silvia Pacheco', '555-3007', 'silvia.pach@mail.com', 'Vía Deportes 700', 'Educación Física'),
('PROF08', 'Jorge Navarro', '555-3008', 'jorge.nav@mail.com', 'Camino Historia 800', 'Ciencias Sociales'),
('PROF09', 'Adriana Ríos', '555-3009', 'adri.rios@mail.com', 'Sendero Idiomas 900', 'Lenguas Extranjeras'),
('PROF10', 'Héctor Domínguez', '555-3010', 'hector.dom@mail.com', 'Ronda Física 1000', 'Ciencias Exactas'),
('PROF11', 'Carolina Herrera', '555-3011', 'caro.herrera@mail.com', 'Glorieta Química 1100', 'Química'),
('PROF12', 'Raúl Campos', '555-3012', 'raul.campos@mail.com', 'Plaza Biología 1200', 'Biología'),
('PROF13', 'Patricia Vega', '555-3013', 'paty.vega@mail.com', 'Calzada Filosofía 1300', 'Filosofía'),
('PROF14', 'Alfonso Morales', '555-3014', 'alfonso.mor@mail.com', 'Bulevar Economía 1400', 'Economía'),
('PROF15', 'Daniela Romero', '555-3015', 'dani.romero@mail.com', 'Vereda Psicología 1500', 'Psicología'),
('PROF16', 'Francisco Luna', '555-3016', 'fran.luna@mail.com', 'Anillo Sociología 1600', 'Sociología'),
('PROF17', 'Lucía Gil', '555-3017', 'luci.gil@mail.com', 'Periférico Derecho 1700', 'Derecho'),
('PROF18', 'Roberto Soto', '555-3018', 'roberto.soto@mail.com', 'Eje Administración 1800', 'Administración'),
('PROF19', 'Marisol Ortega', '555-3019', 'mari.ort@mail.com', 'Viario Contabilidad 1900', 'Contabilidad'),
('PROF20', 'Sergio Miranda', '555-3020', 'sergio.mir@mail.com', 'Avenida Medicina 2000', 'Medicina'),
('PROF21', 'Angélica Cruz', '555-3021', 'angel.cruz@mail.com', 'Paseo Comunicación 2100', 'Comunicación'),
('PROF22', 'José Mejía', '555-3022', 'jose.mejia@mail.com', 'Boulevard Programación 2200', 'Programación'),
('PROF23', 'Teresa Reyes', '555-3023', 'tere.reyes@mail.com', 'Circuito Ecología 2300', 'Ecología'),
('PROF24', 'Guillermo Ponce', '555-3024', 'guille.ponce@mail.com', 'Calzada Estadística 2400', 'Estadística'),
('PROF25', 'Verónica Aguilar', '555-3025', 'vero.aguilar@mail.com', 'Vía Metodología 2500', 'Metodología'),
('PROF26', 'Mauricio Delgado', '555-3026', 'mauricio.del@mail.com', 'Camino Antropología 2600', 'Antropología'),
('PROF27', 'Alejandra Rojas', '555-3027', 'ale.rojas@mail.com', 'Sendero Tecnología 2700', 'Tecnología'),
('PROF28', 'Arturo Méndez', '555-3028', 'arturo.mend@mail.com', 'Ronda Arte 2800', 'Artes'),
('PROF29', 'Claudia Sosa', '555-3029', 'clau.sosa@mail.com', 'Glorieta Música 2900', 'Música'),
('PROF30', 'Eduardo Nava', '555-3030', 'edu.nava@mail.com', 'Plaza Civismo 3000', 'Formación Cívica');

-- 7. Insertar datos en Registration_registration (Matrículas)
INSERT INTO [dbo].[Registration_registration] ([code_registration], [date_registration], [mode_registration], [level_registration], [id_group_id], [id_student_id], [id_tutor_id])
SELECT 
  'REG-' + RIGHT ('000' + CAST(ROW_NUMBER() OVER(ORDER BY s.id) AS VARCHAR(10)),4),
  DATEADD(DAY, -ABS(CHECKSUM(NEWID()) % 365), CAST('2023-01-15' AS date)), 
  CASE WHEN ROW_NUMBER() OVER(order by s.id) % 3 = 0 THEN 'Presencial' WHEN ROW_NUMBER() OVER(order by s.id ) % 3 = 1 THEN 'Virtual' ELSE 'Mixto' END,
  g.level_group,
  g.id,
  s.id,
  t.id

FROM Group_group g
CROSS JOIN Student_student s
CROSS JOIN Mentor_mentor t
WHERE s.id <= 30 AND t.id <= 30 AND g.id <= 30;

-- 8. Insertar datos en Document_Detail_document_detail (Detalles de documentos)
INSERT INTO [dbo].[Document_Detail_document_detail] ([Id_document_id], [id_student_id])
SELECT 
  d.id,
  s.id
FROM Document_document d
CROSS JOIN Student_student s
WHERE d.id <= 30 AND s.id <= 30;

-- 9. Insertar datos en Imparte_imparte (Horarios)
INSERT INTO [dbo].[Imparte_imparte] ([Hora], [id_group_id], [id_subject_id], [id_teacher_id])
SELECT 
  DATEADD(MINUTE, (ABS(CHECKSUM(NEWID())) % 480),'07:00'), 
  g.id,
  s.id,
  t.id
FROM Group_group g
CROSS JOIN Subjects_subjects s
CROSS JOIN Teacher_teacher t
WHERE g.id <= 30 AND s.id <= 30 AND t.id <= 30;

-- 10. Insertar datos en Non_Attendance_non_attendance (Inasistencias)
INSERT INTO [dbo].[Non_Attendance_non_attendance] ([Date], [id_registration_id], [id_subject_id])
SELECT 
  DATEADD(DAY, -ABS(CHECKSUM(NEWID()) % 180),'2023-03-01'),
  r.id,
  s.id

FROM Registration_registration r
CROSS JOIN Subjects_subjects s
WHERE r.id <= 30 AND s.id <= 30;

-- 11. Insertar datos en Note_note (Calificaciones)
INSERT INTO [dbo].[Note_note] (
  [first_partial], 
  [second_partial], 
  [first_semester], 
  [third_partial], 
  [quarter_partial], 
  [second_semester], 
  [final_grade], 
  [special_note], 
  [id_registration_id], 
  [id_subject_id]
)
SELECT 
  CAST(ABS(CHECKSUM(NEWID())) % 10 + 1 AS NVARCHAR(10)),
  CAST(ABS(CHECKSUM(NEWID())) % 10 + 1 AS NVARCHAR(10)),
  CAST(ABS(CHECKSUM(NEWID())) % 10 + 1 AS NVARCHAR(10)),
  CAST(ABS(CHECKSUM(NEWID())) % 10 + 1 AS NVARCHAR(10)),
  CAST(ABS(CHECKSUM(NEWID())) % 10 + 1 AS NVARCHAR(10)),
  CAST(ABS(CHECKSUM(NEWID())) % 10 + 1 AS NVARCHAR(10)),
  CAST(ABS(CHECKSUM(NEWID())) % 10 + 1 AS NVARCHAR(10)),
  CAST(ABS(CHECKSUM(NEWID())) % 100 / 10.0 AS FLOAT),
  r.id,
  s.id
FROM Registration_registration r
CROSS JOIN Subjects_subjects s
WHERE r.id <= 30 AND s.id <= 30;
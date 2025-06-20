-- 1. Insertar datos en Document_document (Documentos)
INSERT INTO [dbo].[Document_document] ([code_document], [name_document])
VALUES 
('DOC001', 'Acta de Nacimiento'),
('DOC002', 'Certificado de Estudios'),
('DOC003', 'Fotograf�as Tama�o Infantil'),
('DOC004', 'CURP'),
('DOC005', 'Comprobante de Domicilio'),
('DOC006', 'Cartilla de Vacunaci�n'),
('DOC007', 'Historial Acad�mico'),
('DOC008', 'Certificado M�dico'),
('DOC009', 'Carta de Buena Conducta'),
('DOC010', 'RFC del Tutor'),
('DOC011', 'Boleta Anterior'),
('DOC012', 'Constancia de No Adeudo'),
('DOC013', 'IFE del Tutor'),
('DOC014', 'Certificado de Idiomas'),
('DOC015', 'Registro de Calificaciones'),
('DOC016', 'Permiso de Viaje'),
('DOC017', 'Seguro M�dico'),
('DOC018', 'Ex�menes Diagn�sticos'),
('DOC019', 'Certificado de Discapacidad'),
('DOC020', 'Carta de Recomendaci�n'),
('DOC021', 'Pasaporte'),
('DOC022', 'Visa de Estudiante'),
('DOC023', 'Test Psicom�trico'),
('DOC024', 'Reglamento Firmado'),
('DOC025', 'Autorizaci�n de Imagen'),
('DOC026', 'Ficha de Inscripci�n'),
('DOC027', 'Comprobante de Pago'),
('DOC028', 'Certificado de Bachillerato'),
('DOC029', 'T�tulo Universitario'),
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
('G7A', 'S�ptimo', 'A', 18),
('G7B', 'S�ptimo', 'B', 21),
('G8A', 'Octavo', 'A', 19),
('G8B', 'Octavo', 'B', 22),
('G9A', 'Noveno', 'A', 25),
('G9B', 'Noveno', 'B', 24),
('G10A', 'D�cimo', 'A', 20),
('G10B', 'D�cimo', 'B', 23),
('G11A', 'Und�cimo', 'A', 18),
('G11B', 'Und�cimo', 'B', 19),
('G12A', 'Duod�cimo', 'A', 17),
('G12B', 'Duod�cimo', 'B', 20),
('PRE1', 'Preescolar', '1', 15),
('PRE2', 'Preescolar', '2', 16),
('PRE3', 'Preescolar', '3', 14),
('KIN1', 'K�nder', 'A', 12),
('KIN2', 'K�nder', 'B', 13);

-- 3. Insertar datos en Mentor_mentor (Tutores)
INSERT INTO [dbo].[Mentor_mentor] ([code_tutor], [name_tutor], [birthdate_tutor], [phone_tutor], [email_tutor], [address_tutor])
VALUES 
('T001', 'Juan P�rez', '1980-05-15', '555-1001', 'juan.perez@mail.com', 'Calle Falsa 123'),
('T002', 'Mar�a Garc�a', '1975-08-22', '555-1002', 'maria.garcia@mail.com', 'Av. Siempre Viva 456'),
('T003', 'Carlos L�pez', '1982-03-30', '555-1003', 'carlos.lopez@mail.com', 'Boulevard Los Olivos 789'),
('T004', 'Ana Mart�nez', '1978-11-10', '555-1004', 'ana.martinez@mail.com', 'Callej�n Diagonal 101'),
('T005', 'Luis Rodr�guez', '1985-07-18', '555-1005', 'luis.rod@mail.com', 'Paseo Reforma 202'),
('T006', 'Laura S�nchez', '1979-02-14', '555-1006', 'laura.san@mail.com', 'Cerro del Tepeyac 303'),
('T007', 'Roberto Jim�nez', '1983-09-05', '555-1007', 'roberto.jim@mail.com', 'Calzada Independencia 404'),
('T008', 'Patricia D�az', '1976-12-03', '555-1008', 'paty.diaz@mail.com', 'Avenida Central 505'),
('T009', 'Jorge Hern�ndez', '1981-04-25', '555-1009', 'jorge.hern@mail.com', 'Plaza Mayor 606'),
('T010', 'Sof�a Ram�rez', '1984-06-12', '555-1010', 'sofia.ram@mail.com', 'Circunvalaci�n 707'),
('T011', 'Miguel Torres', '1977-01-19', '555-1011', 'miguel.torres@mail.com', 'Ronda Norte 808'),
('T012', 'Elena Castro', '1980-08-08', '555-1012', 'elena.castro@mail.com', 'Glorieta Sur 909'),
('T013', 'Fernando Ruiz', '1979-05-30', '555-1013', 'fer.ruiz@mail.com', 'Pasaje Este 1010'),
('T014', 'Luc�a Mendoza', '1982-10-17', '555-1014', 'lucia.mendoza@mail.com', 'Camino Oeste 1111'),
('T015', 'Ricardo Vargas', '1975-07-23', '555-1015', 'ricky.vargas@mail.com', 'Sendero Norte 1212'),
('T016', 'Carmen Ortega', '1983-03-11', '555-1016', 'carmen.ort@mail.com', 'Vereda Sur 1313'),
('T017', 'Oscar Flores', '1978-11-28', '555-1017', 'oscar.flores@mail.com', 'Calzada Poniente 1414'),
('T018', 'Adriana Silva', '1981-02-09', '555-1018', 'adri.silva@mail.com', 'Avenida Oriente 1515'),
('T019', 'Manuel Rojas', '1976-09-15', '555-1019', 'manu.rojas@mail.com', 'Paseo de la Reforma 1616'),
('T020', 'Isabel Herrera', '1984-04-02', '555-1020', 'isa.herrera@mail.com', 'Boulevard Norte 1717'),
('T021', 'Francisco Mora', '1979-12-19', '555-1021', 'fran.mora@mail.com', 'Circuito Sur 1818'),
('T022', 'Gabriela Paredes', '1982-01-07', '555-1022', 'gaby.paredes@mail.com', 'Anillo Vial 1919'),
('T023', 'Ra�l Guzm�n', '1977-06-24', '555-1023', 'raul.guz@mail.com', 'Perif�rico 2020'),
('T024', 'Silvia N��ez', '1980-10-11', '555-1024', 'silvia.nunez@mail.com', 'Eje Central 2121'),
('T025', 'Alberto Cort�s', '1983-05-08', '555-1025', 'alberto.cort@mail.com', 'Viaducto 2222'),
('T026', 'Beatriz Le�n', '1978-08-31', '555-1026', 'bea.leon@mail.com', 'Avenida Ju�rez 2323'),
('T027', 'H�ctor Delgado', '1981-03-16', '555-1027', 'hector.delgado@mail.com', 'Paseo de Montejo 2424'),
('T028', 'Claudia R�os', '1976-07-04', '555-1028', 'clau.rios@mail.com', 'Calzada de los H�roes 2525'),
('T029', 'Javier M�ndez', '1984-11-21', '555-1029', 'javier.mend@mail.com', 'Blvd. D�az Ordaz 2626'),
('T030', 'Daniela Orozco', '1979-09-13', '555-1030', 'dani.orozco@mail.com', 'Paseo Triunfo de la Rep�blica 2727');

-- 4. Insertar datos en Student_student (Estudiantes)
INSERT INTO [dbo].[Student_student] ([code_student], [name_student], [surname_student], [birthday_student], [phone_student], [email_student])
VALUES 
('S001', 'Alejandro', 'Gonz�lez', '2010-03-15', '555-2001', 'alex.gonz@mail.com'),
('S002', 'Valeria', 'Mart�nez', '2011-05-22', '555-2002', 'vale.mart@mail.com'),
('S003', 'Diego', 'Hern�ndez', '2010-08-30', '555-2003', 'diego.hern@mail.com'),
('S004', 'Camila', 'L�pez', '2011-02-10', '555-2004', 'cami.lopez@mail.com'),
('S005', 'Mateo', 'Garc�a', '2010-11-18', '555-2005', 'mateo.gar@mail.com'),
('S006', 'Sof�a', 'Rodr�guez', '2011-07-14', '555-2006', 'sofi.rod@mail.com'),
('S007', 'Nicol�s', 'P�rez', '2010-04-05', '555-2007', 'nico.perez@mail.com'),
('S008', 'Isabella', 'S�nchez', '2011-01-03', '555-2008', 'isa.san@mail.com'),
('S009', 'Samuel', 'Ram�rez', '2010-09-25', '555-2009', 'sam.ram@mail.com'),
('S010', 'M�a', 'Torres', '2011-06-12', '555-2010', 'mia.torres@mail.com'),
('S011', 'Benjam�n', 'D�az', '2010-12-19', '555-2011', 'benja.diaz@mail.com'),
('S012', 'Valentina', 'Jim�nez', '2011-03-08', '555-2012', 'valen.jim@mail.com'),
('S013', 'Joaqu�n', 'Ruiz', '2010-10-17', '555-2013', 'joaquin.ruiz@mail.com'),
('S014', 'Ximena', 'Mendoza', '2011-08-30', '555-2014', 'ximena.mend@mail.com'),
('S015', 'Emiliano', 'Vargas', '2010-05-23', '555-2015', 'emi.vargas@mail.com'),
('S016', 'Renata', 'Ortega', '2011-02-11', '555-2016', 'rena.ort@mail.com'),
('S017', 'Leonardo', 'Flores', '2010-11-28', '555-2017', 'leo.flores@mail.com'),
('S018', 'Mariana', 'Silva', '2011-04-09', '555-2018', 'mari.silva@mail.com'),
('S019', 'Dylan', 'Rojas', '2010-01-15', '555-2019', 'dylan.rojas@mail.com'),
('S020', 'Regina', 'Herrera', '2011-09-02', '555-2020', 'regi.herrera@mail.com'),
('S021', 'Thiago', 'Mora', '2010-06-19', '555-2021', 'thiago.mora@mail.com'),
('S022', 'Victoria', 'Paredes', '2011-03-07', '555-2022', 'vicky.paredes@mail.com'),
('S023', 'Mat�as', 'Guzm�n', '2010-12-24', '555-2023', 'mati.guz@mail.com'),
('S024', 'Luciana', 'N��ez', '2011-10-11', '555-2024', 'lu.nunez@mail.com'),
('S025', 'Emmanuel', 'Cort�s', '2010-07-08', '555-2025', 'emma.cort@mail.com'),
('S026', 'Danna', 'Le�n', '2011-05-31', '555-2026', 'danna.leon@mail.com'),
('S027', 'Jer�nimo', 'Delgado', '2010-02-16', '555-2027', 'jero.delgado@mail.com'),
('S028', 'Paulina', 'R�os', '2011-11-04', '555-2028', 'pau.rios@mail.com'),
('S029', 'Maximiliano', 'M�ndez', '2010-08-21', '555-2029', 'max.mend@mail.com'),
('S030', 'Ana Paula', 'Orozco', '2011-04-13', '555-2030', 'anita.orozco@mail.com');

-- 5. Insertar datos en Subjects_subjects (Materias)
INSERT INTO [dbo].[Subjects_subjects] ([code_subject], [name_subject], [period_subject], [academic_subject])
VALUES 
('MAT101', 'Matem�ticas I', 'Anual', 'Matematicas'),
('ESP102', 'Espa�ol I', 'Anual', 'Lengua'),
('ING103', 'Ingl�s B�sico', 'Semestral', 'Idiomas'),
('CIV104', 'Civismo', 'Trimestral', 'Formaci�n c�vica'),
('HIS105', 'Historia Universal', 'Anual', 'Ciencias sociales'),
('GEO106', 'Geograf�a', 'Semestral', 'Ciencias sociales'),
('BIO107', 'Biolog�a', 'Anual', 'Ciencias naturales'),
('FIS108', 'F�sica I', 'Semestral', 'Ciencias exactas'),
('QUI109', 'Qu�mica', 'Anual', 'Ciencias exactas'),
('ART110', 'Artes Pl�sticas', 'Trimestral', 'Educaci�n art�stica'),
('MUS111', 'M�sica', 'Trimestral', 'Educaci�n art�stica'),
('EDF112', 'Educaci�n F�sica', 'Anual', 'Desarrollo f�sico'),
('INF113', 'Inform�tica', 'Semestral', 'Tecnolog�a'),
('FIL114', 'Filosof�a', 'Anual', 'Humanidades'),
('ECO115', 'Econom�a', 'Semestral', 'Ciencias sociales'),
('LIT116', 'Literatura', 'Anual', 'Humanidades'),
('CAL117', 'C�lculo', 'Semestral', 'Matem�ticas avanzadas'),
('EST118', 'Estad�stica', 'Trimestral', 'Matem�ticas aplicadas'),
('DER119', 'Derecho', 'Anual', 'Ciencias sociales'),
('PSI120', 'Psicolog�a', 'Semestral', 'Ciencias de la salud'),
('SOC121', 'Sociolog�a', 'Anual', 'Ciencias sociales'),
('ANT122', 'Antropolog�a', 'Semestral', 'Ciencias sociales'),
('MET123', 'Metodolog�a', 'Trimestral', 'Investigaci�n'),
('TEC124', 'Tecnolog�a', 'Anual', 'Ciencias aplicadas'),
('ECO125', 'Ecolog�a', 'Semestral', 'Ciencias ambientales'),
('ADM126', 'Administraci�n', 'Anual', 'Ciencias econ�micas'),
('CON127', 'Contabilidad', 'Semestral', 'Ciencias econ�micas'),
('MED128', 'Medicina', 'Anual', 'Ciencias de la salud'),
('COM129', 'Comunicaci�n', 'Semestral', 'Humanidades'),
('PRO130', 'Programaci�n', 'Anual', 'Tecnolog�a');

-- 6. Insertar datos en Teacher_teacher (Profesores)
INSERT INTO [dbo].[Teacher_teacher] ([code_teacher], [name_teacher], [phone_teacher], [email_teacher], [address_teacher], [area_teacher])
VALUES 
('PROF01', 'Laura M�ndez', '555-3001', 'laura.mend@mail.com', 'Av. Conocimiento 100', 'Matem�ticas'),
('PROF02', 'Pedro Castillo', '555-3002', 'pedro.cast@mail.com', 'Calle Sabidur�a 200', 'Lengua'),
('PROF03', 'Gabriela Sol�s', '555-3003', 'gaby.sol@mail.com', 'Boulevard Ciencia 300', 'Ciencias Naturales'),
('PROF04', 'Ricardo Fuentes', '555-3004', 'ricky.fuentes@mail.com', 'Paseo Literatura 400', 'Humanidades'),
('PROF05', 'Fernanda Ju�rez', '555-3005', 'fer.juarez@mail.com', 'Avenida Arte 500', 'Educaci�n Art�stica'),
('PROF06', 'Omar Valencia', '555-3006', 'omar.val@mail.com', 'Circuito Tecnolog�a 600', 'Inform�tica'),
('PROF07', 'Silvia Pacheco', '555-3007', 'silvia.pach@mail.com', 'V�a Deportes 700', 'Educaci�n F�sica'),
('PROF08', 'Jorge Navarro', '555-3008', 'jorge.nav@mail.com', 'Camino Historia 800', 'Ciencias Sociales'),
('PROF09', 'Adriana R�os', '555-3009', 'adri.rios@mail.com', 'Sendero Idiomas 900', 'Lenguas Extranjeras'),
('PROF10', 'H�ctor Dom�nguez', '555-3010', 'hector.dom@mail.com', 'Ronda F�sica 1000', 'Ciencias Exactas'),
('PROF11', 'Carolina Herrera', '555-3011', 'caro.herrera@mail.com', 'Glorieta Qu�mica 1100', 'Qu�mica'),
('PROF12', 'Ra�l Campos', '555-3012', 'raul.campos@mail.com', 'Plaza Biolog�a 1200', 'Biolog�a'),
('PROF13', 'Patricia Vega', '555-3013', 'paty.vega@mail.com', 'Calzada Filosof�a 1300', 'Filosof�a'),
('PROF14', 'Alfonso Morales', '555-3014', 'alfonso.mor@mail.com', 'Bulevar Econom�a 1400', 'Econom�a'),
('PROF15', 'Daniela Romero', '555-3015', 'dani.romero@mail.com', 'Vereda Psicolog�a 1500', 'Psicolog�a'),
('PROF16', 'Francisco Luna', '555-3016', 'fran.luna@mail.com', 'Anillo Sociolog�a 1600', 'Sociolog�a'),
('PROF17', 'Luc�a Gil', '555-3017', 'luci.gil@mail.com', 'Perif�rico Derecho 1700', 'Derecho'),
('PROF18', 'Roberto Soto', '555-3018', 'roberto.soto@mail.com', 'Eje Administraci�n 1800', 'Administraci�n'),
('PROF19', 'Marisol Ortega', '555-3019', 'mari.ort@mail.com', 'Viario Contabilidad 1900', 'Contabilidad'),
('PROF20', 'Sergio Miranda', '555-3020', 'sergio.mir@mail.com', 'Avenida Medicina 2000', 'Medicina'),
('PROF21', 'Ang�lica Cruz', '555-3021', 'angel.cruz@mail.com', 'Paseo Comunicaci�n 2100', 'Comunicaci�n'),
('PROF22', 'Jos� Mej�a', '555-3022', 'jose.mejia@mail.com', 'Boulevard Programaci�n 2200', 'Programaci�n'),
('PROF23', 'Teresa Reyes', '555-3023', 'tere.reyes@mail.com', 'Circuito Ecolog�a 2300', 'Ecolog�a'),
('PROF24', 'Guillermo Ponce', '555-3024', 'guille.ponce@mail.com', 'Calzada Estad�stica 2400', 'Estad�stica'),
('PROF25', 'Ver�nica Aguilar', '555-3025', 'vero.aguilar@mail.com', 'V�a Metodolog�a 2500', 'Metodolog�a'),
('PROF26', 'Mauricio Delgado', '555-3026', 'mauricio.del@mail.com', 'Camino Antropolog�a 2600', 'Antropolog�a'),
('PROF27', 'Alejandra Rojas', '555-3027', 'ale.rojas@mail.com', 'Sendero Tecnolog�a 2700', 'Tecnolog�a'),
('PROF28', 'Arturo M�ndez', '555-3028', 'arturo.mend@mail.com', 'Ronda Arte 2800', 'Artes'),
('PROF29', 'Claudia Sosa', '555-3029', 'clau.sosa@mail.com', 'Glorieta M�sica 2900', 'M�sica'),
('PROF30', 'Eduardo Nava', '555-3030', 'edu.nava@mail.com', 'Plaza Civismo 3000', 'Formaci�n C�vica');

-- 7. Insertar datos en Registration_registration (Matr�culas)
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
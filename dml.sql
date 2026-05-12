-- INSERT en ESPECIALIDAD
INSERT INTO ESPECIALIDAD VALUES (1, 'Cardiología', 'Enfermedades del corazón');
INSERT INTO ESPECIALIDAD VALUES (2, 'Pediatría', 'Atención a niños');
INSERT INTO ESPECIALIDAD VALUES (3, 'Neurología', 'Trastornos del sistema nervioso');

-- INSERT en PACIENTE
INSERT INTO PACIENTE VALUES (1, 'Juan', 'Perez', '1234567890', '0987654321', DATE '1990-05-15');
INSERT INTO PACIENTE VALUES (2, 'Maria', 'Lopez', '1234567891', '0987654322', DATE '1985-08-20');
INSERT INTO PACIENTE VALUES (3, 'Carlos', 'Ruiz', '1234567892', '0987654323', DATE '2000-02-10');

-- INSERT en MEDICO
INSERT INTO MEDICO VALUES (1, 'Ana', 'Gomez', 'Cardióloga', '0999999991', 1);
INSERT INTO MEDICO VALUES (2, 'Luis', 'Mendoza', 'Pediatra', '0999999992', 2);
INSERT INTO MEDICO VALUES (3, 'Sofia', 'Ramirez', 'Neuróloga', '0999999993', 3);

-- INSERT en CONSULTA
INSERT INTO CONSULTA VALUES (1, DATE '2025-05-01', 'Hipertensión', 1, 1);
INSERT INTO CONSULTA VALUES (2, DATE '2025-05-02', ' Gripe', 2, 2);
INSERT INTO CONSULTA VALUES (3, DATE '2025-05-03', 'Migraña', 3, 3);

-- INSERT en RECETA
INSERT INTO RECETA VALUES (1, 'Enalapril', '10mg', 'Cada 12 horas', 1);
INSERT INTO RECETA VALUES (2, 'Paracetamol', '500mg', 'Cada 8 horas', 2);
INSERT INTO RECETA VALUES (3, 'Ibuprofeno', '400mg', 'Cada 6 horas', 3);

COMMIT;
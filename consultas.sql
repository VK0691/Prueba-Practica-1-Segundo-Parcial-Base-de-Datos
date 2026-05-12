Provocar error ORA-02291 (clave foránea inexistente)
INSERT INTO CONSULTA VALUES (99, SYSDATE, 'Dolor de cabeza', 99, 1);

UPDATE seguro (con WHERE)

SELECT * FROM PACIENTE WHERE id_paciente = 1;


UPDATE PACIENTE
SET telefono = '0999999999'
WHERE id_paciente = 1;

Analizar DELETE con integridad referencial (ON DELETE CASCADE)
SELECT * FROM MEDICO WHERE id_medico = 1;
SELECT * FROM CONSULTA WHERE id_medico = 1;

DELETE FROM MEDICO WHERE id_medico = 1;

SELECT * FROM MEDICO WHERE id_medico = 1;
SELECT * FROM CONSULTA WHERE id_medico = 1;

COMMIT;
Consulta con IN
-- Mostrar pacientes que han tenido consultas con médicos de Cardiología o Neurología
SELECT DISTINCT p.nombre, p.apellido
FROM PACIENTE p
JOIN CONSULTA c ON p.id_paciente = c.id_paciente
JOIN MEDICO m ON c.id_medico = m.id_medico
WHERE m.especialidad IN ('Cardióloga', 'Neuróloga');

Consulta con LIKE
-- Mostrar medicamentos que empiezan con 'Para'
SELECT id_receta, medicamento, dosis
FROM RECETA
WHERE medicamento LIKE 'Para%';
Consulta con BETWEEN

-- Mostrar consultas realizadas entre el 1 de mayo y el 3 de mayo de 2025
SELECT * FROM CONSULTA
WHERE fecha_consulta BETWEEN DATE '2025-05-01' AND DATE '2025-05-03';
Consulta con MAX
SELECT p.nombre, p.apellido, MAX(c.fecha_consulta) AS ultima_consulta
FROM PACIENTE p
JOIN CONSULTA c ON p.id_paciente = c.id_paciente
GROUP BY p.id_paciente, p.nombre, p.apellido;
Consulta con JOIN
SELECT 
    c.id_consulta,
    p.nombre AS paciente,
    m.nombre AS medico,
    m.especialidad,
    c.fecha_consulta,
    c.diagnostico
FROM CONSULTA c
JOIN PACIENTE p ON c.id_paciente = p.id_paciente
JOIN MEDICO m ON c.id_medico = m.id_medico
ORDER BY c.fecha_consulta DESC;
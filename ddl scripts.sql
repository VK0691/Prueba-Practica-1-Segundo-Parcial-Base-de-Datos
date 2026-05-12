
-- 1. TABLA ESPECIALIDAD
CREATE TABLE ESPECIALIDAD (
    id_especialidad   NUMBER PRIMARY KEY,
    nombre_especialidad VARCHAR2(40) NOT NULL UNIQUE,
    descripcion       VARCHAR2(100)
);

-- 2. TABLA PACIENTE
CREATE TABLE PACIENTE (
    id_paciente   NUMBER PRIMARY KEY,
    nombre        VARCHAR2(30) NOT NULL,
    apellido      VARCHAR2(30) NOT NULL,
    cedula        VARCHAR2(10) NOT NULL UNIQUE,
    telefono      VARCHAR2(10),
    fecha_nac     DATE NOT NULL,
    CONSTRAINT chk_paciente_cedula CHECK (LENGTH(cedula) = 10)
);

-- 3. TABLA MEDICO (con FK a ESPECIALIDAD)
CREATE TABLE MEDICO (
    id_medico      NUMBER PRIMARY KEY,
    nombre         VARCHAR2(30) NOT NULL,
    apellido       VARCHAR2(30) NOT NULL,
    especialidad   VARCHAR2(40) NOT NULL,
    telefono       VARCHAR2(10),
    id_especialidad_per NUMBER NOT NULL,
    CONSTRAINT fk_medico_especialidad FOREIGN KEY (id_especialidad_per)
        REFERENCES ESPECIALIDAD(id_especialidad) ON DELETE CASCADE
);

-- 4. TABLA CONSULTA
CREATE TABLE CONSULTA (
    id_consulta    NUMBER PRIMARY KEY,
    fecha_consulta DATE NOT NULL,
    diagnostico    VARCHAR2(200),
    id_paciente    NUMBER NOT NULL,
    id_medico      NUMBER NOT NULL,
    CONSTRAINT fk_consulta_paciente FOREIGN KEY (id_paciente)
        REFERENCES PACIENTE(id_paciente) ON DELETE CASCADE,
    CONSTRAINT fk_consulta_medico FOREIGN KEY (id_medico)
        REFERENCES MEDICO(id_medico) ON DELETE CASCADE,
    CONSTRAINT chk_consulta_fecha CHECK (fecha_consulta <= SYSDATE)
);

-- 5. TABLA RECETA
CREATE TABLE RECETA (
    id_receta      NUMBER PRIMARY KEY,
    medicamento    VARCHAR2(60) NOT NULL,
    dosis          VARCHAR2(50),
    indicaciones   VARCHAR2(200),
    id_consulta    NUMBER NOT NULL,
    CONSTRAINT fk_receta_consulta FOREIGN KEY (id_consulta)
        REFERENCES CONSULTA(id_consulta) ON DELETE CASCADE
);
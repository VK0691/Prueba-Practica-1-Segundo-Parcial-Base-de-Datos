# Prueba-Practica-1-Segundo-Parcial-Base-de-Datos
Escenario del Hospital Inteligente
# 🏥 Hospital Inteligente - Base de Datos

**Estudiante:** Karen Valeria Molina Nuñez
**Escenario:** Hospital Inteligente
**Integridad:** ON DELETE CASCADE
**Fecha:** Mayo 2025

## 📋 Descripción
Base de datos para gestión de un hospital con las tablas:
- PACIENTE
- MEDICO
- ESPECIALIDAD
- CONSULTA
- RECETA

## 🔧 Tecnologías
- Oracle SQL
- PL/SQL

## 📊 Modelo
[Imagen del modelo lógico]

## 🚀 Scripts incluidos
| Archivo | Descripción |
|---------|-------------|
| 01_create_tables.sql | Creación de tablas con restricciones |
| 02_insert_data.sql | Inserción de datos de ejemplo |
| 03_consultas.sql | 5 consultas con IN, LIKE, BETWEEN, MAX, JOIN |
| 04_integridad.sql | Pruebas de ORA-02291, UPDATE y DELETE |

## ✅ Validaciones
- CHECK en cédula y fechas
- UNIQUE en cédula y especialidad
- ON DELETE CASCADE en todas las FK

## 📌 Consultas incluidas
1. Pacientes con médicos específicos (IN)
2. Medicamentos que empiezan con 'Para' (LIKE)
3. Consultas entre fechas (BETWEEN)
4. Última consulta por paciente (MAX)
5. Detalle completo de consultas (JOIN)

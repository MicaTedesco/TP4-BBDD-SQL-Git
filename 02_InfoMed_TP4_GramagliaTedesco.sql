CREATE OR REPLACE VIEW edad_pacientes AS
SELECT 
    id_paciente,
    nombre AS nombre_paciente,
    fecha_nacimiento,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, fecha_nacimiento)) AS edad,
    id_sexo,
    numero,
    calle,
    ciudad
FROM pacientes;

SELECT * FROM edad_pacientes;

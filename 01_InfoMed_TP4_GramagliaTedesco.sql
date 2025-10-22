CREATE INDEX idx_ciudad ON pacientes(ciudad);

SELECT ciudad, COUNT(id_paciente) AS cantidad_pacientes
FROM pacientes
GROUP BY ciudad;

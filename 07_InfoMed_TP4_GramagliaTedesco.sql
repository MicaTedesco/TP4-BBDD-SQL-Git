SELECT ciudad, COUNT(id_paciente) AS cantidad_pacientes FROM pacientes GROUP BY ciudad ORDER BY cantidad_pacientes ASC;

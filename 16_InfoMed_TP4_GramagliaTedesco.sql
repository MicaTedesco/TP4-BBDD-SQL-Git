SELECT medicos.nombre AS nombre_medico, pacientes.nombre AS nombre_paciente, COUNT(consultas.id_consulta) AS cantidad_consultas
FROM consultas
Inner JOIN medicos
ON consultas.id_medico = medicos.id_medico
INNER JOIN pacientes
ON consultas.id_paciente = pacientes.id_paciente
GROUP BY medicos.id_medico, pacientes.id_paciente
ORDER BY medicos.nombre, pacientes.nombre;








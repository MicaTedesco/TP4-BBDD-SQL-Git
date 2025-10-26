SELECT medicos.nombre AS nombre_medico, COUNT(DISTINCT(consultas.id_paciente)) AS pacientes_atendidos
FROM medicos 
INNER JOIN consultas
ON medicos.id_medico = consultas.id_medico
INNER JOIN pacientes
ON consultas.id_paciente = pacientes.id_paciente
GROUP BY medicos.id_medico
ORDER BY pacientes_atendidos DESC;











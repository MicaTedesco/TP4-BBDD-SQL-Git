SELECT medicos.nombre AS nombre_medico, COUNT(DISTINCT(consultas.id_paciente)) AS pacientes_atendidos
FROM medicos 
INNER JOIN consultas
ON medicos.id_medico = consultas.id_medico
GROUP BY medicos.id_medico
ORDER BY pacientes_atendidos DESC;

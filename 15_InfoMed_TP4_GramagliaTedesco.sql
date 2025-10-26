SELECT pacientes.nombre AS nombre_paciente, consultas.fecha AS ultima_consulta, consultas.diagnostico
FROM consultas
LEFT JOIN pacientes
ON consultas.id_paciente = pacientes.id_paciente
WHERE consultas.fecha = (SELECT MAX(consultas2.fecha) FROM consultas consultas2 WHERE consultas.id_paciente = consultas2.id_paciente)
ORDER BY pacientes.nombre;







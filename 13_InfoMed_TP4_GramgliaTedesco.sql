SELECT pacientes.nombre AS nombre_paciente, COUNT(recetas.id_receta) AS total_recetas
FROM recetas
LEFT JOIN pacientes
ON recetas.id_paciente = pacientes.id_paciente
GROUP BY pacientes.id_paciente
ORDER BY total_recetas ASC;





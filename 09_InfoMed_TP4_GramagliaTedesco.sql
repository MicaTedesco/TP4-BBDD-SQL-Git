SELECT medicos.nombre AS nombre_medico, COUNT(recetas.id_receta) AS cantidad_recetas
FROM medicos
RIGHT JOIN recetas
ON medicos.id_medico = recetas.id_medico
GROUP BY medicos.id_medico
ORDER BY cantidad_recetas asc;

SELECT medicamentos.nombre AS nombre_medicamento, COUNT(recetas.id_receta) AS cantidad_recetas
FROM recetas
LEFT JOIN medicamentos
ON medicamentos.id_medicamento = recetas.id_medicamento
WHERE recetas.id_medico = 2
GROUP BY medicamentos.id_medicamento
HAVING COUNT(recetas.id_receta) > 1;

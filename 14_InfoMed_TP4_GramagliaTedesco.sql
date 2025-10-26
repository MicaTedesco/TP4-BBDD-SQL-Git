SELECT medicamentos.nombre AS nombre_medicamento, COUNT(recetas.id_receta) AS total_recetas
FROM recetas
LEFT JOIN medicamentos
ON recetas.id_medicamento = medicamentos.id_medicamento
GROUP BY medicamentos.id_medicamento
ORDER BY total_recetas DESC
LIMIT 1;






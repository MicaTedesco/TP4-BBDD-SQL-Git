SELECT 
    medicamentos.nombre AS nombre_medicamento,
    t.total_recetas AS total_recetas,
    medicos.nombre AS nombre_medico,
    pacientes.nombre AS nombre_paciente
FROM recetas
INNER JOIN medicamentos
    ON recetas.id_medicamento = medicamentos.id_medicamento
INNER JOIN medicos
    ON recetas.id_medico = medicos.id_medico
INNER JOIN pacientes
    ON recetas.id_paciente = pacientes.id_paciente
INNER JOIN (
    SELECT id_medicamento, COUNT(*) AS total_recetas
    FROM recetas
    GROUP BY id_medicamento
) AS t ON recetas.id_medicamento = t.id_medicamento
ORDER BY t.total_recetas DESC, nombre_medicamento;









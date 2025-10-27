--- 26-10-2025 17:29:27 PostgreSQL
SELECT pacientes.nombre AS nombre_paciente, consultas.fecha , consultas.diagnostico
FROM pacientes
RIGHT JOIN consultas
ON pacientes.id_paciente = consultas.id_paciente
WHERE fecha BETWEEN '2024-08-01' AND '2024-08-31';





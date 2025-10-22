SELECT pacientes.ciudad, sexobiologico.descripcion AS sexo, COUNT(pacientes.id_paciente) AS cantidad_pacientes
FROM sexobiologico
RIGHT JOIN pacientes
ON sexobiologico.id_sexo = pacientes.id_sexo
GROUP BY pacientes.ciudad, sexobiologico.descripcion
ORDER BY pacientes.ciudad asc;

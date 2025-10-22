#OPCIÓN 1
SELECT *, CASE
WHEN LOWER(SUBSTRING(trim(ciudad),1,1)) = 'r' THEN 'Rosario'
WHEN LOWER(SUBSTRING(trim(ciudad),1,1)) = 's' THEN 'Santa Fe'
WHEN LOWER(SUBSTRING(trim(ciudad),1,1)) = 'b' THEN 'Buenos Aires'
WHEN LOWER(SUBSTRING(trim(ciudad),1,1)) = 'c' THEN 'Cordoba'
ELSE 'Mendoza'
END AS ciudades_corregidas
FROM pacientes

#OPCIÓN 2
UPDATE pacientes SET ciudad = CASE
WHEN LOWER(SUBSTRING(trim(ciudad),1,1)) = 'r' THEN 'Rosario'
WHEN LOWER(SUBSTRING(trim(ciudad),1,1)) = 's' THEN 'Santa Fe'
WHEN LOWER(SUBSTRING(trim(ciudad),1,1)) = 'b' THEN 'Buenos Aires'
WHEN LOWER(SUBSTRING(trim(ciudad),1,1)) = 'c' THEN 'Cordoba'
ELSE 'Mendoza'
END;

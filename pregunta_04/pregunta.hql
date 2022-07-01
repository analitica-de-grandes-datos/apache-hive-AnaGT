/* 
Pregunta
===========================================================================

Escriba una consulta que retorne los valores únicos de la columna `t0.c5` 
(ordenados). 

Apache Hive se ejecutará en modo local (sin HDFS).

Escriba el resultado a la carpeta `output` de directorio de trabajo.
*/

INSERT OVERWRITE LOCAL DIRECTORY './output'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
SELECT DISTINCT c5_explode FROM tbl0
LATERAL VIEW explode(c5) tbl0 AS c5_explode;

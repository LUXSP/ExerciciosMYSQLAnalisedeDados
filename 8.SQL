/*Trazer clientes do segmento varejo onde o id cliente é maior que 5*/

SELECT 
	id_cliente,
    nome
FROM
	clientes
WHERE
	segmento = 'Varejo' AND
    id_cliente > 5

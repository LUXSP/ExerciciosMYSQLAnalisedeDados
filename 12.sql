/*Faz uma consulta que traz todos os pedidos e o ticket médio geral*/

SELECT
	id_pedido,
    valor_total,
    (
		SELECT
			AVG(valor_total)
		FROM
			pedidos
    ) AS media_geral
FROM
	pedidos
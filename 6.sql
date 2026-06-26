/*Consulta feita para extrair os clientes que mais compraram, a partir da cláusula de agrupamento SUM */

SELECT 
	c.id_cliente,
	c.nome,
    SUM(p.valor_total) as total_gasto
FROM
	clientes c
INNER JOIN 
	pedidos p ON c.id_cliente = p.id_cliente
GROUP BY
	c.id_cliente
ORDER BY
	total_gasto DESC

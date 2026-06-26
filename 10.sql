/*Classificar de acordo com a movimentação de cada cliente se o mesmo se enquadra como 'VIP', 'Ouro' ou 'Bronze'.
Utilizado a condicional case para tratativa da classificação*/

SELECT
	c.nome,
    SUM(p.valor_total) AS TotalGasto,
	CASE
		WHEN SUM(p.valor_total) > 10000 THEN 'VIP'
		WHEN SUM(p.valor_total) BETWEEN 5000 AND 10000 THEN 'Cliente Ouro'
		WHEN SUM(p.valor_total) < 5000 THEN 'Cliente Bronze'
	END AS Classificacao
FROM 
	clientes c
INNER JOIN
	pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nome	
ORDER BY SUM(p.valor_total) DESC
/*Utilizar a função nativa do MySQL Dense_Rank para criar uma coluna de classificação dos clientes, a partir da função de agregação 
SUM no valor total. O cliente que comprou mais estará na maior classificação*/

SELECT
	c.nome,
    SUM(p.valor_total),
	DENSE_RANK() OVER
    (
		ORDER BY SUM(p.valor_total) DESC
    ) AS posicao_ranking
FROM
	clientes c
INNER JOIN
	pedidos p ON
    c.id_cliente = p.id_cliente
GROUP BY
	c.nome
ORDER BY SUM(p.valor_total) DESC
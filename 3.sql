/*Trazer em ordem decrescente as movimentações, se baseando no maior valor para o menor*/

SELECT
	a.nome,
    b.id_pedido,
    b.valor_total
FROM
	clientes a
INNER JOIN
	pedidos b ON
    a.id_cliente = b.id_cliente
ORDER BY
	b.valor_total DESC
    
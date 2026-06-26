/*LEFT join realizado para retornar os clientes que não realizaram nenhum tipo de movimentação*/

SELECT 
	a.id_cliente,
    a.nome,
    b.id_pedido
FROM
	clientes a 
LEFT JOIN
	pedidos b ON a.id_cliente = b.id_cliente
WHERE 
	b.id_pedido IS NULL
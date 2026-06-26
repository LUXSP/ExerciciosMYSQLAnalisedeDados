/*Verificar quais clientes ainda não possuem movimentação no sistema*/

SELECT
	c.id_cliente, 
    c.nome
FROM
	clientes c
LEFT JOIN 
	pedidos p ON c.id_cliente = p.id_cliente
WHERE 
	p.id_pedido IS NULL
	
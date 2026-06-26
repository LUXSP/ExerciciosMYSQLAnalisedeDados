/*Fazer uma consulta que traga todos os clientes que compraram alguma vez o produto código 18 (utilizado no exemplo).
Aborda a utilização de subqueries para abstrair o problema de recuperar os ids de clientes que compraram tal produto, para depois trazer
o id e o nome na query inicial*/

SELECT
	id_cliente,
    nome
FROM 
	clientes
WHERE 
	id_cliente IN
    (
		SELECT
			p.id_cliente
		FROM
			pedidos p
		INNER JOIN 
			itens_pedido i
			ON p.id_pedido = i.id_pedido
		WHERE
			i.id_produto = 18
    )


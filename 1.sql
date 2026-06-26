/*A necessidade que a consulta resolve é trazer os segmentos que fizeram alguma compra no ano de 2025.*/

SELECT 
	DISTINCT(c.segmento)
FROM
	clientes c
INNER JOIN
	pedidos p ON
    c.id_cliente = p.id_cliente 
WHERE
	p.data_pedido BETWEEN '2025-01-01' AND '2025-12-31'
ORDER BY
	c.segmento ASC
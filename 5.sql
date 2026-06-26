/*Relação de todos os registros em ambas tabelas de pedidos e de cadastro de cliente. Foi utilizado um UNION, visto que MySQL
não trabalha com FULL OUTER JOIN*/

SELECT
	a.*,
    b.*
FROM	
	clientes a
LEFT JOIN 
	pedidos b ON a.id_cliente = b.id_cliente

UNION
    
SELECT
	c.*,
    d.*
FROM	
	clientes c

RIGHT JOIN
	pedidos d ON c.id_cliente = d.id_cliente



    
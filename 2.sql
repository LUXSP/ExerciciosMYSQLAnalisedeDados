/*Trazer quais pedidos foram Entregues e Processado no primeiro trimeste do mês com um valor acima de 1500 reais*/

SELECT
	id_pedido,
    data_pedido,
    valor_total 
FROM
	pedidos
WHERE
	status_pedido in ('Processado','Entregue') and
    valor_total >  1500.00 and
    data_pedido BETWEEN '2026-01-01' AND '2026-03-31'

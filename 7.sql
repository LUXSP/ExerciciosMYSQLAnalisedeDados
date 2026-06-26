/*Criado a procedure que recebe o parametro 'segmento', utilizando-o para fazer a consulta interna de qual cliente está no seguimento
OBS.: Foi alterado o DELIMITER para $$, indicando que quando houver ponto e vírgula, a procedure não será finalizada.*/

DELIMITER $$

 CREATE PROCEDURE  ConsultarClientesPorSegmento(IN nome_segmento VARCHAR(50))
BEGIN
	SELECT 
		id_cliente,
		nome,
		segmento
	FROM
		clientes
	WHERE segmento = nome_segmento;
END $$

DELIMITER ;

CALL ConsultarClientesPorSegmento('Varejo');


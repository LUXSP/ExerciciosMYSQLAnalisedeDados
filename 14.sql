/*Procedure que permite, a partir de um parâmetro em sua chamada, atualizar o segmento do cliente indicado. Abstrai toda a 
regra de atualização para dentro da procedure, permitindo que a pessoa que a execute se preocupe apenas com os parâmetros do objeto
 a ser atualizado*/

DELIMITER $$

CREATE PROCEDURE AtualizarSegmentoCliente(IN p_id_cliente INT, p_novo_segmento VARCHAR(50))
	BEGIN
		/*Faz a primeira consulta para mostrar os atributos atuais do cadastro*/
		SELECT
			id_cliente,
            nome,
            segmento
		FROM
			clientes
        WHERE
			id_cliente = p_id_cliente;
		/*Update de acordo com os parâmetros*/ 
        UPDATE
			clientes
		SET 
			segmento = p_novo_segmento
        WHERE
			id_cliente = p_id_cliente;
        /*Faz a consulta novamente, porém mostrando o resultado*/    
        SELECT
			id_cliente,
            nome,
            segmento
		FROM
			clientes
        WHERE
			id_cliente = p_id_cliente;
	END $$
DELIMITER ;


CALL AtualizarSegmentoCliente(1, 'Parabéns!')
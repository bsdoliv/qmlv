/*
-- *****************************
    CRIACAO DE USUARIOS
-- *****************************
  OPERACOES: 1 - Adicionar usuarios; 0 - Remover Usuarios
`_development_manage_test_users`(flg_create TINYINT(1))
* Os usuarios user1, user2 e user3 serao criados com a senha padrao (exato igual admin)


-- *****************************
--    CRIACAO  DE TICKET
-- *****************************

--OPERACOES: 1: Criar Ticket; 0 - Remover Ticket
`_development_manage_create_ticket`(     _operacao TINYINT(1),
                                         _codigoUsuario TINYINT(2), 
                                         _codigoTicket VARCHAR(8), 
                                         _valor DECIMAL(18,2)
                                    )

tabelas referência
select * from cas_tck_mextickets;
select * from cas_mvi_mexmovimientos;
select * from cas_his_historicooperacao;
*/

-- *****************************
--    ADICIONAR CRÉDITO AO TICKET
-- *****************************

_development_manage_add_credit_ticket
				    (_codigoTicket VARCHAR(8),
				    _valor        DECIMAL(18,2),
				    _codigoUsuario INT)

-- *****************************
--    FECHAR TICKET
-- *****************************
_development_manage_close_ticket(

    _codigoTicket VARCHAR(8),
    _codigoUsuario INT
)

-- *****************************
--    EXEMPLO UTILIZAÇÃO
-- *****************************

-- Revertendo teste
CALL _development_manage_test_users(0);
CALL _development_manage_create_ticket(0,1,'99999999', null);

-- Iniciando testes
CALL _development_manage_test_users(1);
CALL _development_manage_create_ticket(1,1,'99999999', 200.32);
call _development_manage_add_credit_ticket('99999999', 3.00, 1);
call _development_manage_close_ticket('99999999',1 );

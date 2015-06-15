/*
    tabelas referência

select * from cas_tck_mextickets;
select * from cas_mvi_mexmovimientos;
select * from cas_his_historicooperacao;

update cas_tck_mextickets set tck_n_saldo = 5000 where tck_c_code  = '5880333'

*/

-- ************************************
-- INSERCAO DO TICKET
-- ************************************

/*
	_vch_code			VARCHAR(8),
	_int_entrada	INT,
	_int_tipomovimento	INT,		
	_vch_maquina		VARCHAR(16),
	_vch_id		VARCHAR(21),
	_int_codecliente	INT
*/


call 
p_cas_i_wmexnewticket
('5880666',300,1,'F04DA2E5208C','',0);

-- adiciona a criacao do ticket no historico
call p_cas_i_atualizahistoricooperacao ('333333',
  'Crear Ticket',
  'Crear: 5880118 Valor: 58.00',
  '5880666',
  1,
  5800,
  '0',
  '',
  'F04DA2E5208C');

-- verifica disponibilidade do ticket
call 
p_cas_c_verificadisponumeroticket ('5880666',@p2);
select @p2;



-- ************************************
-- -- ADICIONAR CREDITO
-- ************************************


-- OBTÉM DADOS DE PARAMETRIZAÇÃO DO SISTEMA

call p_cas_o_mexobterexpiracaotickets(1,0);


-- Registra o novo movimento no caixa (atualiza o valor do ticket) 

CALL 
p_cas_i_wmexnewmovement 
('5880333',5000,100000,1,'F04DA2E5208C','');

-- Registra histórico da atualizacao do ticket

call 
p_cas_i_atualizahistoricooperacao 
('333333',
 'Crear Ticket',
 'Add credit: 7698911 Valor: 58.00',
  '5880333',
  1,
  5800,
  '0',
  '',
  'F04DA2E5208C');

-- ************************************
-- FECHAR TICKET
-- ************************************

-- REALIZA PRIMEIRA CHAMADA A PROC p_cas_i_wmexcierreticket 
-- NO QUAL FAZ A VALIDAÇÃO DO STATUS DO TICKET E RETORNA OS DADOS REFERENTE A 
-- SALDO, PREMIOS, ENTRADAS DINHEIRO E OUTROS CASO O TICKET SEJA VALIDO


call p_cas_i_wmexcierreticket 
('5880333',
'',
0, -- @int_save=@
'F04DA2E5208C',
1,
1,
0,
1);

-- --REALIZA A SEGUNDA CHAMADA A PROC p_cas_i_wmexcierreticket 
-- NO ENTANTO COM O PARAMETRO @int_save=1 NO QUAL EFETIVA O FECHAMENTO DO TICKET
call p_cas_i_wmexcierreticket 
('5880333',
'',
1, -- @int_save=@
'F04DA2E5208C',
1,
1,
0,
1);


-- REGISTRA O HISTÓRICO DE OPERAÇÃO
call p_cas_i_atualizahistoricooperacao 
('333333',
'Close Ticket',
'Close: 3958363 Valor: 100.00',
'5880333',
4,
10000,
'0',
'395836320130416111100',
'F04DA2E5208C');



/*
PROCS ENVOLVIDAS LOGIN/LOGOFF

p_cas_l_mexconsultaclienteconta (obsolete)
p_cas_l_mexconsultaclientecontexto
(gerencia troca de senhas e retorna contexto)
Tabelas:
                        cas_cli_cliente (read)
                        cas_mcu_mexcontroleusuario (read)

p_cas_l_mexcontroleusuario (obsolete)
p_cas_l_mexcontrolelogin
(gerencia tentativas sucessivas e bloqueio)
Tabelas
                cas_mcu_mexcontroleusuario (write)
                cas_cli_clientes (write)

p_cas_l_consultarlogin  (obsolete)
p_cas_l_gerencialoginterminal
(gerencia usuario LOGADO x estações)
                cas_mcl_mexcontrolelogin (write)

*/

/*
-- ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/*
--------------------------------
p_cas_l_mexconsultaclientecontexto
--------------------------------

call p_cas_l_mexconsultaclienteconta

params:
@vch_user='admin'
@bit_trocarsenha=0
@vch_senha='644178114313429135972293472238730138'
@vch_senhadesc='igsitc54'

Fluxos Possíveis:
Troca de Senha: _bit_trocarsenha =1
CPF Valido: Validacao da expiração da senha e retorno de contexto
CPF Nulo   : Retorno do contexto

***: o campo _bit_expirasenha não é utilizado nesta proc em nenhum momento

*/

/*
----------------------------------------------
p_cas_l_mexcontrolelogin
----------------------------------------------
params: codigo usuario, codigo_operacao

Fluxos possiveis:
    1: Registrar tentativa / ?
    3: Bloqueio automático do usuário em cas_cli_clientes
    2: Desbloqueio do usuario/ remoção seu registro em cas_mcu_mexcontroleusuario

Selects uteis:
    select * from cas_mcu_mexcontroleusuario;
    select cli_n_codigo, cli_c_usuario, cli_c_senha, cli_c_name, cli_n_bloqueado, cli_d_datasenha FROM cas_cli_clientes;
*/
-- USUARIO AINDA NÃO ESTA NA CAS_MCU_MEXCONTROLEUSUARIO
-- Deve ser disparada quando o usuario errar a senha
-- POSSUI VALIDACAO DOS USUÁRIOS EXISTENTES NO BANCO DE DADOS. 
-- A CADA EXECUCAO EXPURGA TODOS COM EXCEÇÃO DO ROOT.

call p_cas_l_mexcontrolelogin(0, 1);
-- resultado esperado: usuario inserido com sucesso

-- validacao passo 1 da proc
-- (remove os registros do dia anterior
         -- DELETE FROM cas_mcu_mexcontroleusuario WHERE 
            SELECT * FROM cas_mcu_mexcontroleusuario
            WHERE CAST('2013-04-23 14:20:02' AS DATE) <= CAST(DATE_SUB(CURDATE(), INTERVAL 1 day) AS DATE);

-- Validação do passo 2 da proc: 
set @P1 = 0;

SELECT mcu_n_codigousuario
FROM cas_mcu_mexcontroleusuario
WHERE mcu_n_codigousuario = @p1
AND CAST(mcu_d_dataoperacao AS DATE) = CAST(CURDATE() AS DATE);
-- resultado esperado: retorna se o usuario possui registro na data de hoje
-- em cas_mcu_mexcontroleusuario

-- Validacao passo 4
-- Acumula contador de tentativas
SET _int_n = 4;
UPDATE cas_mcu_mexcontroleusuario SET mcu_n_numerotentativa = mcu_n_numerotentativa + 1
WHERE mcu_n_codigousuario = _int_codigo;
-- executado
call p_cas_l_mexcontrolelogin(0, 1);
-- resultado esperado: acumulo bem-sucedido

-- Validacao passo 5
-- Captura número de tentativas
SET @codUsuario = 0;
SELECT mcu_n_numerotentativa
INTO @int_TotLog 
FROM cas_mcu_mexcontroleusuario
WHERE mcu_n_codigousuario = @codUsuario
AND	CAST(mcu_d_dataoperacao as date) = CAST(CURDATE() as date);

SELECT @int_TotLog;
-- resultado esperado: captura bem-sucedida


-- Passo 6
-- Bloqueio para a quarta tentativa
-- UPDATE cas_cli_clientes SET cli_n_bloqueado = 1 WHERE cli_n_codigo = _int_codigo;


-- +++++++++++++++++++++++++++++++++++++++++++
-- TESTE
-- +++++++++++++++++++++++++++++++++++++++++++

-- Inserçao tentativa

call p_cas_l_mexcontrolelogin(0, 1);
-- resultado: OK

-- Bloqueio conta usuario
call p_cas_l_mexcontrolelogin(0, 1); -- 2 Tentativa
call p_cas_l_mexcontrolelogin(0, 1); -- 3 Tentativa
call p_cas_l_mexcontrolelogin(0, 1); -- 4 BLOQUEIA O USUARIO, MAS NÃO GERA EXCEÇÃO!!!!

-- Desbloqueio do usuario e limpeza CAS_MCU_MEXCONTROLEUSUARIO (PROVAVEL UTILIZAÇÃO NO LOGOFF)
call p_cas_l_mexcontrolelogin(0, 2); 
-- resultado: OK

-- Bloqueio direto do usuario:
call p_cas_l_mexcontrolelogin(0, 3); 
-- resultado ok


/*
---------------------------------------------------------------------------
p_cas_l_gerencialoginterminal
---------------------------------------------------------------------------
params:
 _int_codigo,_int_operacao, _vch_maquina

Fluxos Possíveis:
    Se estiver logado, verifica se é o mesmo terminal. Em negativa gera erro.
    Se não estiver logado, registra os parâmetros em cas_mcl_mexcontrolelogin

Operações:
    0: Registra login
    outro valor: Remove login da tabela cas_mcl_mexcontrolelogin
*/














-
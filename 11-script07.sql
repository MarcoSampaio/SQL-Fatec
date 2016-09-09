USE BD7
GO


-- SCRIPT 07
/*Faça um trigger para armazenar em uma tabela chamada Histórico_Precos  que deve armazenar a data, 
preço antigo, preço novo e o usuário que fez a alteração de preço das vagas nos dois períodos. 
Atenção, esse trigger somente deverá ser disparado quando houver alteração no atributo valor da vaga na tabela.*/

CREATE TRIGGER armazenar_historico_preco ON VagaValor
FOR UPDATE
AS
BEGIN
  INSERT INTO HistoricoPreco
  SELECT
		GETDATE() AS dt_Alteracao,
		B.vl_Diurna AS vl_DiurnoPassado,
		A.vl_Diurna AS vl_DiurnoPresente,
		B.vl_Noturna AS vl_NoturnoPassado,
		A.vl_Noturna AS vl_NoturnoPresente,
		A.cd_VagaValor AS cd_VagaValor,
		A.cd_Funcionario AS cd_Funcionario
  FROM INSERTED A INNER JOIN DELETED B ON (A.cd_VagaValor = B.cd_VagaValor)
  WHERE A.vl_Diurna <> B.vl_Diurna
    OR  A.vl_Noturna <> B.vl_Noturna
END

-- select*from HistoricoPreco
-- update VagaValor set vl_Diurna = 70.00, vl_Noturna = 40.00 where cd_VagaValor = 1
-- select*from HistoricoPreco
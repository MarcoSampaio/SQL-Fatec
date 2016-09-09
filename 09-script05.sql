USE BD7
GO


-- SCRIPT 05
/*Fazer um procedimento para gerar uma tabela temporária (Inadimplentes) informando quais são os 
clientes inadimplentes no mês anterior ao corrente, para gerar a cobrança dos pagamentos em atraso. 
A tabela deve conter informações para o envio da cobrança via correio.*/

CREATE PROCEDURE Inadimplentes
AS
BEGIN
DECLARE @InicMesAnterior DATE
DECLARE @FimMesAnterior DATE
SET @InicMesAnterior = CONVERT(DATE,DATEADD(mm,-1,DATEADD(dd,-DAY(GETDATE())+1,GETDATE())))
SET @FimMesAnterior = CONVERT(DATE,DATEADD(dd,-DAY(GETDATE()),GETDATE()))
  (SELECT PA.vl_Parcela AS Parcela,
          PA.dt_Vencimento AS Vencimento,
          CL.nm_Cliente AS Nome,
		  CJ.nm_ClienteJuridico AS Juridico,
          EN.ds_Rua AS Rua,
          EN.ds_Bairro AS Bairro,
          EN.sg_Estado AS Estado,
          EN.cd_Cep AS Cep,
          EN.ds_Cidade AS Cidade
	INTO #inadimplentes
  FROM Contrato C LEFT JOIN Parcela  PA ON (C.cd_Contrato = PA.cd_Contrato)
				  LEFT JOIN Cliente CL ON (C.cd_Cliente = CL.cd_Cliente)
				  LEFT JOIN ClienteJuridico CJ ON (CL.cd_Cliente = CJ.cd_Cliente)
				  LEFT JOIN Endereco EN ON (CL.cd_Cliente = EN.cd_Cliente)
  WHERE dt_Pagamento IS NULL
    AND dt_Vencimento BETWEEN @InicMesAnterior AND @FimMesAnterior)
END
SELECT * FROM #inadimplentes

-- exec Inadimplentes

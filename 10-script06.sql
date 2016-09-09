USE BD7
GO


-- SCRIPT 06
/*Elabore uma procedure para fazer uma cópia dos contratos encerrados e quitados em uma tabela denominada 
contratos_finalizados. Após a cópia, o contrato seus dados serão excluídos.*/

CREATE PROCEDURE copia_contratos_finalizados
AS
BEGIN
	SET IDENTITY_INSERT ContratoFinalizado ON
  INSERT ContratoFinalizado(
			cd_ContratoFinalizado,
			dt_InicioContrato,
			dt_FimContrato,
			qt_Vaga,
			ic_Parcelado,
			vl_Contrato)
  SELECT DISTINCT C.cd_Contrato AS cd_ContratoFinalizado, 
			C.dt_InicioContrato AS dt_InicioContrato,
			C.dt_FimContrato AS dt_FimContrato,
			C.qt_Vaga AS qt_Vaga,
			C.ic_Parcelado AS ic_Parcelado,
			C.vl_Contrato AS vl_Contrato
  FROM Contrato AS C,Parcela AS P 
	WHERE dt_FimContrato < GETDATE()
	AND C.cd_Contrato = P.cd_Contrato
	AND P.cd_Contrato NOT IN (SELECT cd_Contrato FROM Parcela WHERE dt_Pagamento IS NULL)
  DELETE P
  FROM Parcela AS P INNER JOIN ContratoFinalizado AS CF ON (CF.cd_ContratoFinalizado = P.cd_Contrato)
					AND P.cd_Contrato 
					NOT IN (SELECT cd_Contrato FROM Parcela WHERE dt_Pagamento IS NULL)
  DELETE CV
  FROM ContratoVaga AS CV INNER JOIN ContratoFinalizado AS CF ON (CF.cd_ContratoFinalizado = CV.cd_Contrato)
  DELETE C
  FROM ContratoFinalizado AS CF INNER JOIN Contrato AS C ON (CF.cd_ContratoFinalizado = C.cd_Contrato)
END

-- select*from Contrato
-- select*from Parcela
-- select*from ContratoFinalizado
-- exec copia_contratos_finalizados
-- select*from Contrato
-- select*from Parcela
-- select*from ContratoFinalizado
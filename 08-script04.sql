USE BD7
GO


-- SCRIPT 04
 /*O banco de dados dever� informar, atrav�s de uma consulta pr�-definida, qual � o total a receber ou 
 recebido, dependendo do m�s e ano informado pelo usu�rio.*/

DECLARE @data CHAR(06)
SET @data = '201606'
SELECT SUM(vl_Parcela) AS ValorReceber 
	FROM Parcela 
	WHERE CONVERT(CHAR(06), dt_Vencimento, 112) > @data
	OR (CONVERT(CHAR(06), dt_Vencimento, 112) < @data
	AND dt_Pagamento IS NULL)
SELECT SUM(vl_Parcela) AS ValorRecebido 
	FROM Parcela 
	WHERE CONVERT(CHAR(06), dt_Vencimento, 112) < @data
	AND dt_Pagamento IS NOT NULL

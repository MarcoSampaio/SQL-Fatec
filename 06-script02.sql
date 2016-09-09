USE BD7
GO


-- SCRIPT 02
/*No ato da gravação do contrato, o banco deverá gerar automaticamente os registros de mensalidades do 
parcelamento com os clientes regulares ou jurídicos, mesmo em pagamento a vista, deverá gerar um registro, 
acusando o pagamento.*/

CREATE TRIGGER gravacao_contrato ON Contrato
FOR INSERT
AS
BEGIN
  DECLARE @conta        INT,
		  @qt_Parcela   INT,
          @cd_Contrato	INT,
          @getdate      DATETIME,
		  @vl_Contrato	MONEY,
		  @contaparcela	INT
    
  SELECT @qt_Parcela = qt_Parcela, @vl_Contrato = vl_Contrato, @cd_Contrato = cd_Contrato
  FROM INSERTED

  SET @contaparcela = 0
  SET @conta = 1
  DECLARE @valor FLOAT
  SET @valor = @vl_Contrato / @qt_Parcela
  WHILE (@qt_Parcela >= @conta)
  BEGIN
	SET @getdate = (SELECT DATEADD(DAY,@contaparcela,GETDATE()))
    INSERT INTO Parcela (cd_Contrato,vl_Parcela,dt_Vencimento)
        VALUES(@cd_Contrato,@valor,@getdate)
    SET @contaparcela = @contaparcela + 31
    SET @conta = @conta + 1
    END
END

-- select*from Parcela
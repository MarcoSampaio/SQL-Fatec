USE BD7
GO


-- SCRIPT 03
/*Será necessário informar o número da próxima vaga disponível no momento da chegada de um cliente avulso.*/

CREATE PROCEDURE vagas_disponiveis
AS
DECLARE @time DATETIME
SET @time = CONVERT(TIME,GETDATE(),108)
IF(@time > '19:00:00' OR @time < '07:00:00')
BEGIN
    SELECT TOP 1 cd_vaga,ic_Noturna FROM Vaga WHERE ic_Noturna = '0'
END
ELSE
    SELECT TOP 1 cd_vaga,ic_Diurna FROM Vaga WHERE ic_Diurna = '0'

-- exec vagas_disponiveis


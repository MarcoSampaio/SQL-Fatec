USE BD7
GO


-- SCRIPT01
 /*O banco de dados dever� informar quais vagas est�o dispon�veis para serem alugadas por clientes regulares e 
 avulsos antes de firmar um contrato. A consulta dever� informar qual o per�odo que a vaga esta dispon�vel 
 (diurno ou noturno)*/

SELECT V.cd_Vaga, V.ic_Diurna, V.ic_Noturna 
	FROM Vaga AS V INNER JOIN Avulso AS A
	ON V.cd_Vaga = A.cd_vaga or V.ic_Diurna = '0' or ic_Noturna = '0'
	GROUP BY V.cd_Vaga, V.ic_Diurna, V.ic_Noturna
GO
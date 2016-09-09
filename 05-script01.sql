USE BD7
GO


-- SCRIPT01
 /*O banco de dados deverá informar quais vagas estão disponíveis para serem alugadas por clientes regulares e 
 avulsos antes de firmar um contrato. A consulta deverá informar qual o período que a vaga esta disponível 
 (diurno ou noturno)*/

SELECT V.cd_Vaga, V.ic_Diurna, V.ic_Noturna 
	FROM Vaga AS V INNER JOIN Avulso AS A
	ON V.cd_Vaga = A.cd_vaga or V.ic_Diurna = '0' or ic_Noturna = '0'
	GROUP BY V.cd_Vaga, V.ic_Diurna, V.ic_Noturna
GO
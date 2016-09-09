USE BD7
GO

-- CRIACAO DE CHECK CONSTRAINTS
ALTER TABLE ContratoVaga
	ADD CONSTRAINT ck_PeriodoVaga
	CHECK (ic_PeriodoVaga = 'N' OR ic_PeriodoVaga = 'D')
GO

ALTER TABLE Contrato
	ADD CONSTRAINT ck_Parcelado
	CHECK (ic_Parcelado = 0 OR ic_Parcelado = 1)
GO
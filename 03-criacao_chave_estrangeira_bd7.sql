USE BD7
GO


-- CRIACAO DE CHAVE ESTRANGEIRA
ALTER TABLE Veiculo
    ADD FOREIGN KEY (cd_TipoVeiculo)
    REFERENCES TipoVeiculo
GO

ALTER TABLE Veiculo
    ADD FOREIGN KEY (cd_Cliente)
    REFERENCES Cliente
GO

ALTER TABLE Contrato
    ADD FOREIGN KEY (cd_Cliente)
    REFERENCES Cliente
GO

ALTER TABLE Contrato
    ADD FOREIGN KEY (cd_Evento)
    REFERENCES Evento
GO

ALTER TABLE Vaga
    ADD FOREIGN KEY (cd_VagaValor)
    REFERENCES VagaValor
GO

ALTER TABLE Avulso
    ADD FOREIGN KEY (cd_Vaga)
    REFERENCES Vaga
GO

ALTER TABLE Avulso
    ADD FOREIGN KEY (cd_Conveniado)
    REFERENCES Conveniado
GO

ALTER TABLE HistoricoPreco
    ADD FOREIGN KEY (cd_VagaValor)
    REFERENCES VagaValor
GO

ALTER TABLE HistoricoPreco
    ADD FOREIGN KEY (cd_Funcionario)
    REFERENCES Funcionario
GO

ALTER TABLE Parcela
    ADD FOREIGN KEY (cd_Contrato)
    REFERENCES Contrato
GO

ALTER TABLE Telefone
    ADD FOREIGN KEY (cd_Cliente)
    REFERENCES Cliente
GO

ALTER TABLE Endereco
    ADD FOREIGN KEY (cd_Cliente)
    REFERENCES Cliente
GO

ALTER TABLE ClienteJuridico
    ADD FOREIGN KEY (cd_Cliente)
    REFERENCES Cliente
GO

ALTER TABLE ClienteFisico
    ADD FOREIGN KEY (cd_Cliente)
    REFERENCES Cliente
GO

ALTER TABLE ContratoVaga
    ADD FOREIGN KEY (cd_Contrato)
    REFERENCES Contrato
GO

ALTER TABLE ContratoVaga
    ADD FOREIGN KEY (cd_Vaga)
    REFERENCES Vaga
GO

ALTER TABLE VagaValor
    ADD FOREIGN KEY (cd_Funcionario)
    REFERENCES Funcionario
GO
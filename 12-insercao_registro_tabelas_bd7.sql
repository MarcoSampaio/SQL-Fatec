USE BD7
GO


-- INSERCAO DE REGISTRO NAS TABELAS
INSERT INTO Cliente (cd_CNPJ,cd_CPF,nm_Cliente)
	VALUES
		('08.077.938.0001-11',NULL,NULL),
		(NULL,'214.575.848-83','Marco Sampaio'),
		('84.536.729.0001-43',NULL,NULL),
		(NULL,'546.278.401-42','Joao Se'),
		('36.718.726.0001-85',NULL,NULL),
		(NULL,'746.356.290-81','Marcia Silva'),
		('64.537.820.0001-75',NULL,NULL),
		(NULL,'976.859.345-26','Gustavo Martins'),
		('45.693.802.0001-34',NULL,NULL),
		(NULL,'673.892.657-72','Maura Teixeira')
GO

INSERT INTO Endereco (ds_Rua,ds_Bairro,cd_Cep,ds_Cidade,sg_Estado,cd_Cliente)
	VALUES
		('Governador Pedro de Toledo,34','Boqueirao','11045551','Santos','SP',1),
		('Floriano Peixoto,45','Gonzaga','11567835','Santos','SP',2),
		('Rua da Paz,84','Boqueirao','11045555','Santos','SP',3),
		('Epitacio Pessoa,964','Aparecida','11067268','Santos','SP',4),
		('Minas Gerais,23','Gonzaga','11046792','Santos','SP',5),
		('Aureliano Coutinho,57','Embare','11042894','Santos','SP',6),
		('Brigadeiro Galvao,74','Ponta da Praia','11044395','Santos','SP',7),
		('Vahia de Abreu,23','Campo Grande','11084573','Santos','SP',8),
		('Joao Pessoa, 589','Centro','11043694','Santos','SP',9),
		('XV de Novembro,83','Centro','11043695','Santos','SP',10)
GO

INSERT INTO Telefone (cd_Telefone,cd_Cliente)
	VALUES
		('(13)3284-2573',1),
		('(13)3902-8694',2),
		('(13)3750-4987',3),
		('(13)3982-6705',4),
		('(13)3906-4656',5),
		('(13)3641-4269',6),
		('(13)3060-4740',7),
		('(13)3560-4893',8),
		('(13)3894-5730',9),
		('(13)3673-0947',10),
		('(13)3567-6390',1),
		('(13)3711-8947',3),
		('(13)3048-7633',5),
		('(13)3749-8069',7),
		('(13)3850-3584',9)
GO

INSERT INTO ClienteFisico (cd_RG,sg_Sexo,cd_Cliente)
	VALUES
		('27.292.951-7','M',2),
		('56.958.547-2','M',4),
		('78.385.728-4','F',6),
		('34.749,275-6','M',8),
		('87.978.639-9','F',10)
GO

INSERT INTO ClienteJuridico (nm_ClienteJuridico,cd_Cliente)
	VALUES
		('Quality+ Ltda',1),
		('Ahow Brasil Ltda',3),
		('Litoral Job Ltda',5),
		('Itaú SA',7),
		('Lew Lara Ltda',9)
GO

INSERT INTO TipoVeiculo (nm_TipoVeiculo)
	VALUES
		('Carro'),
		('Moto'),
		('Caminhonete')
GO

INSERT INTO Veiculo (cd_Placa,ds_Marca,ds_Cor,aa_Veiculo,nm_Veiculo,cd_Cliente,cd_TipoVeiculo)
	VALUES
		('ABC-1234','Chevrolet','Preto','2015','Agile',1,1),
		('DEF-5678','Fiat','Prata','2014','Uno',7,1),
		('GHI-9012','Volkswagen','Branco','2016','Gol',3,1),
		('JKL-3456','Honda','Vermelho','2015','Civic',2,3),
		('MNO-7890','Citroen','Branco','2016','C3',3,1),
		('PQR-0987','Dafra','Preto','2016','Lead',8,2),
		('STU-6543','Chevrolet','Prata','2015','Onix',1,3),
		('VXY-2112','Honda','Preto','2014','Fit',5,1),
		('WZA-3456','Fiat','Preto','2013','Punto',4,1),
		('BCD-7890','Volkswagen','2013','Fox','',5,1),
		('EFG-9876','Hyundai','Prata','2015','I30',9,1),
		('HIJ-5432','Chevrolet','Branco','2016','Cruze',6,1),
		('KLM-1123','Citroen','Preto','2016','Aircross',7,1),
		('NOP-4567','Yamaha','Vermelho','2015','Factor',10,2),
		('QRS-8909','Volkswagen','Vermelho','2014','Gol',9,1)
GO

INSERT INTO Evento (nm_Evento,pc_Desconto)
	VALUES
		('Show Titãs',10.00),
		('Feira de Noivas',00.00),
		('Musical Rei Leão',15.00),
		('Sem Evento',0.0)
GO

INSERT INTO Funcionario (nm_Funcionario)
	VALUES
		('Luiz Inácio Lula da Silva'),
		('Dilma Rousseff'),
		('José Dirceu')
GO

INSERT INTO VagaValor (vl_Diurna,vl_Noturna,cd_Funcionario)
	VALUES
		(50,30,1),
		(50,null,1),
		(null,30,1)
GO

INSERT INTO Vaga (ic_Diurna,ic_Noturna,cd_VagaValor)
	VALUES
		(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),
		(1,0,2),(1,0,2),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1),
		(1,1,3),(1,1,3),(1,1,3),(1,1,3),(1,1,3),(0,1,3),(0,1,3),(0,1,3),(0,1,3),(0,1,3),
		(0,1,3),(0,1,3),(0,1,3),(0,1,3),(0,1,3),(0,0,1),(0,0,1),(0,0,1),(0,0,1),(0,0,1)
GO

INSERT INTO Conveniado (nm_Conveniado,pc_Desconto)
	VALUES
		('Óticas Martins',50.00),
		('Kallan',50.00),
		('Ao Camiseiro',50.00),
		('Sem Convenio',0.0)
GO

INSERT INTO Avulso (dt_Entrada,dt_Saida,vl_Avulso,cd_Placa,cd_Vaga,cd_Conveniado)
	VALUES
		(02-05-2016,02-05-2016,15,'TEU-4875',31,2),
		(03-05-2016,03-05-2016,20,'YES-9876',32,3),
		(04-05-2016,04-05-2016,13,'UOL-4321',33,4),
		(05-05-2016,05-05-2016,17,'OIA-7859',34,4),
		(01-05-2016,01-05-2016,10,'DKV-1234',35,1)
GO

-- Criacao de registros antigos para teste de script (Contratos Finalizados)
INSERT INTO Contrato (dt_InicioContrato,dt_FimContrato,qt_Vaga,vl_Contrato,ic_Parcelado,qt_Parcela,cd_Cliente,cd_Evento)
	VALUES
		('2016-02-13','2016-05-15',5,1500,1,4,2,4)
GO
UPDATE Parcela SET dt_Vencimento = '2016-02-13', dt_Pagamento = '2016-02-13' WHERE cd_Parcela = 1
UPDATE Parcela SET dt_Vencimento = '2016-03-13', dt_Pagamento = '2016-03-13' WHERE cd_Parcela = 2
UPDATE Parcela SET dt_Vencimento = '2016-04-13', dt_Pagamento = '2016-04-13' WHERE cd_Parcela = 3
UPDATE Parcela SET dt_Vencimento = '2016-05-13', dt_Pagamento = '2016-05-13' WHERE cd_Parcela = 4
GO

-- Criacao de registros antigos para teste de script (A Receber)
INSERT INTO Contrato (dt_InicioContrato,dt_FimContrato,qt_Vaga,vl_Contrato,ic_Parcelado,qt_Parcela,cd_Cliente,cd_Evento)
	VALUES
		('2015-01-01','2015-06-01',1,3600,1,6,3,3)
GO
UPDATE Parcela SET dt_Vencimento = '2015-01-01', dt_Pagamento = '2015-01-01' WHERE cd_Parcela = 5
UPDATE Parcela SET dt_Vencimento = '2015-02-01', dt_Pagamento = '2015-02-01' WHERE cd_Parcela = 6
UPDATE Parcela SET dt_Vencimento = '2015-03-01' WHERE cd_Parcela = 7
UPDATE Parcela SET dt_Vencimento = '2015-04-01' WHERE cd_Parcela = 8
UPDATE Parcela SET dt_Vencimento = '2015-05-01' WHERE cd_Parcela = 9
UPDATE Parcela SET dt_Vencimento = '2015-06-01' WHERE cd_Parcela = 10
GO

-- Criacao de registros antigos para teste de script (Inadimplentes)
INSERT INTO Contrato (dt_InicioContrato,dt_FimContrato,qt_Vaga,vl_Contrato,ic_Parcelado,qt_Parcela,cd_Cliente,cd_Evento)
	VALUES
		('2016-04-01','2016-08-01',4,2500,1,5,4,4)
GO
UPDATE Parcela SET dt_Vencimento = '2016-04-01', dt_Pagamento = '2016-04-01' WHERE cd_Parcela = 11
UPDATE Parcela SET dt_Vencimento = '2016-05-01' WHERE cd_Parcela = 12
UPDATE Parcela SET dt_Vencimento = '2016-06-01' WHERE cd_Parcela = 13
UPDATE Parcela SET dt_Vencimento = '2016-07-01' WHERE cd_Parcela = 14
UPDATE Parcela SET dt_Vencimento = '2016-08-01' WHERE cd_Parcela = 15
GO

-- Novo Contrato para geracao de Parcelas
INSERT INTO Contrato (dt_InicioContrato,dt_FimContrato,qt_Vaga,vl_Contrato,ic_Parcelado,qt_Parcela,cd_Cliente,cd_Evento)
	VALUES
		(GETDATE(),DATEADD(mm,+7,GETDATE()),2,1200,1,7,7,1)
GO

INSERT INTO ContratoVaga (cd_Vaga,cd_Contrato,ic_PeriodoVaga)
	VALUES
		(11,1,'D'),
		(21,2,'N'),
		(22,2,'N'),
		(23,2,'N'),
		(24,2,'N'),
		(25,2,'N'),
		(26,2,'N'),
		(27,2,'N'),
		(28,2,'N'),
		(29,2,'N'),
		(30,2,'N'),
		(12,3,'D'),
		(21,4,'D'),
		(22,4,'D'),
		(23,4,'D'),
		(24,4,'D'),
		(25,4,'D')
GO

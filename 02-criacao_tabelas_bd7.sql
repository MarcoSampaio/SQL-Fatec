USE BD7
GO


-- CRIACAO DE TABELAS
CREATE TABLE Cliente (
    cd_Cliente	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    cd_CNPJ		VARCHAR(20) NULL,
    cd_CPF		VARCHAR(15) NULL,
    nm_Cliente	VARCHAR(40) NULL
)
GO

CREATE TABLE ClienteJuridico (
    nm_ClienteJuridico	VARCHAR(40) NULL,
	cd_Cliente			INT NOT NULL
)
GO

CREATE TABLE ClienteFisico (
    cd_RG		VARCHAR(15) NULL,
	sg_Sexo		CHAR(1) NULL,
	cd_Cliente	INT NOT NULL
)
GO

CREATE TABLE Endereco (
    cd_Endereco	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    ds_Rua		VARCHAR(40) NULL,
    ds_Bairro	VARCHAR(20) NULL,
    cd_Cep		VARCHAR(10) NULL,
    ds_Cidade	VARCHAR(20) NULL,
    sg_Estado	CHAR(2) NULL,
	cd_Cliente	INT NOT NULL
)
GO

CREATE TABLE Veiculo (
    cd_Veiculo		INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    cd_Placa		CHAR(8) NULL,
    ds_Marca		VARCHAR(15) NULL,
    ds_Cor			CHAR(10) NULL,
    aa_Veiculo		CHAR(4) NULL,
    nm_Veiculo		VARCHAR(10) NULL,
	cd_Cliente		INT NOT NULL,
	cd_TipoVeiculo	INT NOT NULL
)
GO

CREATE TABLE TipoVeiculo (
    cd_TipoVeiculo	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    nm_TipoVeiculo	VARCHAR(15) NULL
)
GO

CREATE TABLE Telefone (
    cd_Ordem	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    cd_Telefone	VARCHAR(15) NULL,
	cd_Cliente	INT NOT NULL
)
GO

CREATE TABLE Contrato (
    cd_Contrato			INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    dt_InicioContrato	DATE NULL,
    dt_FimContrato		DATE NULL,
    qt_Vaga				INT NULL,
    vl_Contrato			MONEY NULL,
    ic_Parcelado		CHAR(1) NULL,
	cd_Cliente			INT NOT NULL,
	cd_Evento			INT NOT NULL,
	qt_Parcela			INT NULL
)
GO

CREATE TABLE Evento (
    cd_Evento	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    nm_Evento	VARCHAR(20) NULL,
	pc_Desconto	DECIMAL(5,2) NULL
)
GO

CREATE TABLE Parcela (
    cd_Parcela		INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    dt_Vencimento	DATE NULL,
    dt_Pagamento	DATE NULL,
    vl_Parcela		MONEY NULL,
	cd_Contrato		INT NOT NULL
)
GO

CREATE TABLE Vaga (
    cd_Vaga			INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    ic_Diurna		INT NULL,
	ic_Noturna		INT NULL,
	cd_VagaValor	INT NOT NULL
)
GO

CREATE TABLE Avulso (
    cd_Avulso		INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    dt_Entrada		DATETIME NULL,
    dt_Saida		DATETIME NULL,
    vl_Avulso		MONEY NULL,
	cd_Placa		CHAR(8) NULL,
	cd_Vaga			INT NOT NULL,
	cd_Conveniado	INT NOT NULL
)
GO

CREATE TABLE Conveniado (
    cd_Conveniado	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    nm_Conveniado	VARCHAR(20) NULL,
    pc_Desconto		DECIMAL(10,2) NULL
)
GO

CREATE TABLE VagaValor (
    cd_VagaValor	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    vl_Diurna		MONEY NULL,
    vl_Noturna		MONEY NULL,
	cd_Funcionario	INT NOT NULL
)
GO

CREATE TABLE HistoricoPreco (
    cd_HistoricoPreco	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    dt_Alteracao		DATETIME NULL,
    vl_DiurnoPassado	MONEY NULL,
    vl_DiurnoPresente	MONEY NULL,
	vl_NoturnoPassado	MONEY NULL,
    vl_NoturnoPresente	MONEY NULL,
	cd_VagaValor		INT NOT NULL,
	cd_Funcionario		INT NOT NULL
)
GO

CREATE TABLE Funcionario (
    cd_Funcionario	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    nm_Funcionario	VARCHAR(40) NULL,
)
GO

CREATE TABLE ContratoFinalizado (
    cd_ContratoFinalizado	INT NOT NULL PRIMARY KEY IDENTITY (1,1),
    dt_InicioContrato		DATE NULL,
    dt_FimContrato			DATE NULL,
    qt_Vaga					INT NULL,
	ic_Parcelado			CHAR(1) NULL,
    vl_Contrato				MONEY NULL
)
GO

CREATE TABLE ContratoVaga(
	cd_Contrato		INT NOT NULL,
	cd_Vaga			INT NOT NULL,
	ic_PeriodoVaga	CHAR(1) NULL
)
GO
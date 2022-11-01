CREATE TABLE  Jogo
(
JogoID						VARCHAR(30)			NOT NULL,
PreçoJogo					FLOAT				NOT NULL,
Descrição					VARCHAR (300)		NOT NULL,
NomeJogo					VARCHAR (30)		NOT NULL,
DataDeLançamento			DATE				NOT NULL,
Requisitos					VARCHAR (30)		NOT NULL,
ClassificaçãoIndicativa		INT					NOT NULL,
AnáliseRecente				VARCHAR(300)		NOT NULL,
AnáliseGeral				VARCHAR(300)		NOT NULL,
PRIMARY KEY (JogoID) 
);

CREATE TABLE Empresa
(
EmpresaID VARCHAR (30) NOT NULL,
NomeEmpresa VARCHAR (30) NOT NULL,
NumSeguidores INT,
PRIMARY KEY (EmpresaID)
);

CREATE TABLE ItemJogo
(
ItemID				VARCHAR (30)		NOT NULL,
ValorItem			INT					NOT NULL,
NomeItem			VARCHAR (30)		NOT NULL,
PRIMARY KEY (ItemID)
);

CREATE TABLE Notícia
(
NotíciaID					VARCHAR (30)		NOT NULL,
Assunto						VARCHAR (30)		NOT NULL,
NotíciaAssunto				VARCHAR (30)		NOT NULL,
NumInterações				INT					NOT NULL,
DataPublicação				DATE				NOT NULL
PRIMARY KEY (NotíciaID)
);

CREATE TABLE Avaliação
(
AvaliaçãoConteúdo			VARCHAR(30)			NOT NULL,
DataAvaliação				DATE				NOT NULL,
InteraçõesPositivas			INT,
InteraçõesNegativas			INT
);

CREATE TABLE AQUISIÇÃO
(
AquisiçãoID				VARCHAR(30)			NOT NULL,
PreçoAquisição			FLOAT				NOT NULL,
DataAquisição			DATE				NOT NULL,
Desconto				FLOAT,
PRIMARY KEY (AquisiçãoID)
)

CREATE TABLE Gênero
(
GêneroID		VARCHAR(30)		NOT NULL,
GêneroNome		VARCHAR(30)		NOT NULL,
PRIMARY KEY (GêneroID)

)
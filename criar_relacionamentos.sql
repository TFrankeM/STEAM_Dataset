/*Criar tabelas dos relacionamentos do banco de dados da Steam*/


CREATE TABLE ClassificadoComo
(
	JogoID VARCHAR(30) NOT NULL,
	GêneroID VARCHAR(30) NOT NULL,
	PRIMARY KEY (JogoID, GêneroID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID),
	FOREIGN KEY (GêneroID) REFERENCES Gênero(GêneroID)
);

CREATE TABLE Desenvolve
(
	JogoID VARCHAR(30),
	EmpresaID VARCHAR(30) NOT NULL,
	PRIMARY KEY (JogoID, EmpresaID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID),
	FOREIGN KEY (EmpresaID) REFERENCES Empresa(EmpresaID)
);

CREATE TABLE Distribui
(
	JogoID VARCHAR(30),
	EmpresaID VARCHAR(30) NOT NULL,
	PRIMARY KEY (JogoID, EmpresaID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID),
	FOREIGN KEY (EmpresaID) REFERENCES Empresa(EmpresaID)
);

CREATE TABLE Contém
(
	ItemID VARCHAR(30),
	AquisiçãoID VARCHAR(30),
	PRIMARY KEY (ItemID, AquisiçãoID),
	FOREIGN KEY (ItemID) REFERENCES ItemJogo(ItemID),
	FOREIGN KEY (AquisiçãoID) REFERENCES Aquisição(AquisiçãoID)
);

CREATE TABLE InformaSobre
(
	NotíciaID VARCHAR(30),
	JogoID VARCHAR(30),
	PRIMARY KEY (NotíciaID, JogoID),
	FOREIGN KEY (NotíciaID) REFERENCES Notícia(NotíciaID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID)
);

CREATE TABLE Lê
(
	UsuárioID VARCHAR(30),
	NotíciaID VARCHAR(30),
	PRIMARY KEY (UsuárioID, NotíciaID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (NotíciaID) REFERENCES Notícia(NotíciaID)
);

CREATE TABLE Curte
(
	UsuárioID VARCHAR(30),
	ConteúdoID VARCHAR(30),
	PRIMARY KEY (UsuárioID, ConteúdoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (ConteúdoID) REFERENCES Conteúdo(ConteúdoID)
);

CREATE TABLE Inclui
(
	JogoID VARCHAR(30),
	AquisiçãoID VARCHAR(30),
	PRIMARY KEY (JogoID, AquisiçãoID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID),
	FOREIGN KEY (AquisiçãoID) REFERENCES Aquisição(AquisiçãoID)
);

CREATE TABLE InterageEm
(
	UsuárioID VARCHAR(30) NOT NULL,
	FórumID VARCHAR(30),
	PRIMARY KEY (UsuárioID, FórumID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (FórumID) REFERENCES Fórum(FórumID)
);

CREATE TABLE Joga
(
	JogoID VARCHAR(30),
	UsuárioID VARCHAR(30),
	TempoDeJogo FLOAT NOT NULL,
	Progresso FLOAT NOT NULL,
	PRIMARY KEY (JogoID, UsuárioID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID)
);


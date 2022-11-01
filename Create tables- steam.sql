CREATE TABLE Comentário
(
	FórumID				INT				NOT NULL,
	ComentárioID		INT 			NOT NULL,
	NomeAutor			VARCHAR(30)		NOT NULL,
	DataPublicação		DATE			NOT NULL,
	Comentário			VARCHAR(300)	NOT NULL,
	PRIMARY KEY(Comentário)
	FOREIGN KEY (FórumID) REFERENCES "Fórum"(Fórum)
);

CREATE TABLE Fórum
(
	FórumID				INT				NOT NULL,
	NumMembros 			INT				NOT NULL,
	NomeFórum 			VARCHAR(30)		NOT NULL,
	DataCriação 		DATE			NOT NULL,
	NomeDoCriador 		VARCHAR(30)		NOT NULL
	PRIMARY KEY (FórumID)
);

CREATE TABLE "InterageEm"
(
	UsuárioID			INT				NOT NULL,
	FórumID				INT,
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY	(FórumID) REFERENCES Fórum(FórumID)
);

CREATE TABLE Suporte
(
	UsuárioID 			INT				NOT NULL,
	SuporteID 			INT				NOT NULL,
	NomeSuporte 		VARCHAR(30)		NOT NULL,
	Comentário 			VARCHAR(300,
	PRIMARY KEY (SuporteID)
	FOREIGN KEY (UsuárioID) REFERENCES (Usuário)
);


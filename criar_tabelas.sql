/*Criar tabelas do banco de dados da steam*/

CREATE TABLE Usuário
(
	UsuárioID VARCHAR(30) NOT NULL,
	NomePerfil VARCHAR(30) NOT NULL,
	NomeReal VARCHAR(30) NOT NULL,
	Município VARCHAR(30),
	Estado VARCHAR(30),
	País VARCHAR(30),
	FotoDePerfil VARCHAR(300),
	Resumo VARCHAR(300),
	PRIMARY KEY (UsuárioID)
);

CREATE TABLE Categoria
(
	CategoriaID VARCHAR(30) NOT NULL,
	NomeCategoria VARCHAR(30) NOT NULL,
	PRIMARY KEY (CategoriaID)
);

CREATE TABLE Conteúdo
(
	ConteúdoID VARCHAR(30) NOT NULL,
	ConteúdoTítulo VARCHAR(30) NOT NULL,
	ConteúdoTamanho VARCHAR(30) NOT NULL,
	NumVisualizações VARCHAR(300),
	CategoriaID VARCHAR(30) NOT NULL,
	PRIMARY KEY (ConteúdoID),
	FOREIGN KEY (CategoriaID) REFERENCES Categoria(CstegoriaID)
);

CREATE TABLE Jogo
(
	JogoID VARCHAR(30) NOT NULL,
	PreçoJogo FLOAT NOT NULL,
	Descrição VARCHAR(300) NOT NULL,
	NomeJogo VARCHAR(30) NOT NULL,
	DataDeLançamento DATE	NOT NULL,
	Requisitos VARCHAR(30) NOT NULL,
	ClassificaçãoIndicativa INT NOT NULL,
	PRIMARY KEY (JogoID) 
);

CREATE TABLE Empresa
(
	EmpresaID VARCHAR(30) NOT NULL,
	NomeEmpresa VARCHAR(30) NOT NULL,
	NumSeguidores INT,
	PRIMARY KEY (EmpresaID)
);

CREATE TABLE Notícia
(
	NotíciaID VARCHAR(30) NOT NULL,
	Assunto VARCHAR(30) NOT NULL,
	NotíciaAssunto VARCHAR(30) NOT NULL,
	NumInterações INT NOT NULL,
	DataPublicação DATE NOT NULL,
	CategoriaID VARCHAR(30) NOT NULL,
	PRIMARY KEY (NotíciaID),
	FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID)
);

CREATE TABLE Avaliação
(
	AvaliaçãoID VARCHAR(30) NOT NULL,
	AvaliaçãoConteúdo VARCHAR(30) NOT NULL,
	DataAvaliação DATE NOT NULL,
	InteraçõesPositivas INT,
	InteraçõesNegativas INT,
	UsuárioID VARCHAR(30) NOT NULL,
	PRIMARY KEY (AvaliaçãoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID)
);

CREATE TABLE Aquisição
(
	AquisiçãoID VARCHAR(30) NOT NULL,
	PreçoAquisição FLOAT NOT NULL,
	DataAquisição DATE NOT NULL,
	Desconto FLOAT,
	UsuárioID VARCHAR(30),
	PRIMARY KEY (AquisiçãoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID)
);

CREATE TABLE ItemJogo
(
	ItemID VARCHAR(30) NOT NULL,
	ValorItem FLOAT NOT NULL,
	NomeItem VARCHAR(30) NOT NULL,
	JogoID VARCHAR(30) NOT NULL,
	AquisiçãoID VARCHAR(30) NOT NULL,
	PRIMARY KEY (ItemID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID),
	FOREIGN KEY (AquisiçãoID) REFERENCES Aquisição(AquisiçãoID)
);

CREATE TABLE Gênero
(	GêneroID VARCHAR(30) NOT NULL,
	GêneroNome VARCHAR(30) NOT NULL,
	PRIMARY KEY (GêneroID)
);

CREATE TABLE Fórum
(
	FórumID VARCHAR(30) NOT NULL,
	NumMembros INT NOT NULL,
	NomeFórum VARCHAR(30) NOT NULL,
	DataCriação DATE NOT NULL,
	NomeDoCriador VARCHAR(30) NOT NULL,
	PRIMARY KEY (FórumID)
);

CREATE TABLE Comentário
(
	FórumID	VARCHAR(30) NOT NULL,
	ComentárioID VARCHAR(30) NOT NULL,
	NomeAutor VARCHAR(30) NOT NULL,
	DataPublicação DATE NOT NULL,
	Comentário VARCHAR(300)	NOT NULL,
	PRIMARY KEY(Comentário),
	FOREIGN KEY (FórumID) REFERENCES Fórum(FórumID)
);


CREATE TABLE Suporte
(
	UsuárioID VARCHAR(30) NOT NULL,
	SuporteID VARCHAR(30) NOT NULL,
	NomeSuporte VARCHAR(30) NOT NULL,
	Comentário VARCHAR(300),
	PRIMARY KEY (SuporteID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID)
);

/*Criar tabelas das entidades do banco de dados da Steam*/


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
	TítuloConteúdo VARCHAR(300) NOT NULL,
	TamanhoConteúdo VARCHAR(30) NOT NULL,
	NúmeroVisualizações INT,
	CategoriaID VARCHAR(30) NOT NULL,
	UsuárioID VARCHAR(30) NOT NULL,
	PRIMARY KEY (ConteúdoID),
	FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID)
);

CREATE TABLE Jogo
(
	JogoID VARCHAR(30) NOT NULL,
	NomeJogo VARCHAR(30) NOT NULL,
	PreçoJogo FLOAT NOT NULL,
	DataDeLançamento DATE NOT NULL,
	ClassificaçãoIndicativa INT,
	Descrição VARCHAR(300) NOT NULL,
	PRIMARY KEY (JogoID) 
);

CREATE TABLE Empresa
(
	EmpresaID VARCHAR(30) NOT NULL,
	NomeEmpresa VARCHAR(30) NOT NULL,
	NúmeroSeguidores INT,
	PRIMARY KEY (EmpresaID)
);

CREATE TABLE Notícia
(
	NotíciaID VARCHAR(30) NOT NULL,
	NotíciaTítulo VARCHAR(30) NOT NULL,
	NúmeroInterações INT,
	DataPublicação DATE NOT NULL,
	Assunto VARCHAR(300) NOT NULL,
	PRIMARY KEY (NotíciaID)
);

CREATE TABLE Avaliação
(
	AvaliaçãoID VARCHAR(30) NOT NULL,
	Likes INT,
	Dislikes INT,
	DataAvaliação DATE NOT NULL,
	ConteúdoAvaliação VARCHAR(300) NOT NULL,
	UsuárioID VARCHAR(30) NOT NULL,
	JogoID VARCHAR(30),
	NotíciaID VARCHAR(30),
	PRIMARY KEY (AvaliaçãoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID),
	FOREIGN KEY (NotíciaID) REFERENCES Notícia(NotíciaID)
);

CREATE TABLE Aquisição
(
	AquisiçãoID VARCHAR(30) NOT NULL,
	PreçoAquisição FLOAT,
	DataAquisição DATE NOT NULL,
	Desconto FLOAT,
	UsuárioID VARCHAR(30) NOT NULL,
	PRIMARY KEY (AquisiçãoID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID)
);

CREATE TABLE ItemJogo
(
	ItemID VARCHAR(30) NOT NULL,
	NomeItem VARCHAR(30) NOT NULL,
	ValorItem FLOAT,
	JogoID VARCHAR(30) NOT NULL,
	PRIMARY KEY (ItemID),
	FOREIGN KEY (JogoID) REFERENCES Jogo(JogoID)
);

CREATE TABLE Gênero
(	GêneroID VARCHAR(30) NOT NULL,
	GêneroNome VARCHAR(30) NOT NULL,
	PRIMARY KEY (GêneroID)
);

CREATE TABLE Fórum
(
	FórumID VARCHAR(30) NOT NULL,
	NomeFórum VARCHAR(30) NOT NULL,
	NomeDoCriador VARCHAR(30) NOT NULL,
	DataCriação DATE NOT NULL,
	NúmeroMembros INT,
	PRIMARY KEY (FórumID)
);

CREATE TABLE Comentário
(
	ComentárioID VARCHAR(30) NOT NULL,
	NomeAutor VARCHAR(30) NOT NULL,
	DataPublicação DATE NOT NULL,
	Comentário VARCHAR(300)	NOT NULL,
	FórumID	VARCHAR(30) NOT NULL,
	PRIMARY KEY(ComentárioID),
	FOREIGN KEY (FórumID) REFERENCES Fórum(FórumID)
);

CREATE TABLE Suporte
(
	SuporteID VARCHAR(30) NOT NULL,
	NomeSuporte VARCHAR(30) NOT NULL,
	Comentário VARCHAR(300),
	UsuárioID VARCHAR(30) NOT NULL,
	PRIMARY KEY (SuporteID),
	FOREIGN KEY (UsuárioID) REFERENCES Usuário(UsuárioID)
);

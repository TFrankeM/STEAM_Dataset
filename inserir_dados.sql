/*Inserir dados nas tabelas do banco de dados da steam*/

INSERT INTO Usuário VALUES ('U001', 'Salmoura', 'Jorge Silva', 'Tiradentes', 'Minas Gerais', 'Brasil', 'https://www.google.com/imQ', 'Bacon ipsum dolor amet ');

INSERT INTO Categoria VALUES('CA01', 'Ação');

INSERT INTO Conteúdo VALUES('CO01', 'INcríbelíssimo Spencer', '3MB', '42');

INSERT INTO Jogo VALUES('J0001', 56.90, 'Fazendinha', 'Stardew Valley', '2016', 'Core i5', '12');

INSERT INTO Jogo VALUES('J0002', 87.20, 'Tem o Mickey', 'Final Fantasy VI', '2018', 'Core i7', '14');

INSERT INTO BibliotecaDeJogos VALUES('U001', 'J0001');

INSERT INTO ListaDeDesejos VALUES('U001', 'J0002');

INSERT INTO Empresa VALUES ('E03', 'Blizzard', 200000);

INSERT INTO Aquisição VALUES ('CPP123', 120.5, '2025-11-25', 10);

INSERT INTO ItemJogo VALUES ('IA1234', 0.27, 'Medalha do Conquistador', 'J0001', 'CPP123');

INSERT INTO Notícia VALUES ('N2', 'Warframe', 'Concurso de Inverno', 123, '2020-01-23');

INSERT INTO Gênero VALUES ('G1', 'Terror');

INSERT INTO Fórum VALUES ('TTT2', 15, 'Como comer carne no gta', '1783-12-17', 'PlayerNoob002');

INSERT INTO Comentário VALUES ('TTT2', 'TTT21', 'PlayerNoob200', '2020-03-23', 'gagagavsg');

INSERT INTO Suporte VALUES ('U001', 'S01', 'José Carneiro', 'Meu fall guys está crashando');

INSERT INTO Empresa VALUES ('D1', 'Stonehold', 11412)

INSERT INTO Distribui VALUES ('E03', 'J0002')

INSERT INTO Avaliação VALUES('A111', 7, 0, );

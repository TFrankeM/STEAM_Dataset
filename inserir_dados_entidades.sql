/*Inserir dados nas tabelas de entidades do banco de dados da STEAM*/


INSERT INTO Usuário VALUES ('U001', 'Salmoura', 'Jorge Silva', 'Tiradentes', 'Minas Gerais', 'Brasil', 'https://www.google.com/imQ', 'Aqui encontro a paz no meu dia dia');
INSERT INTO Usuário VALUES ('U002', 'Fire_Arrow', 'Paulo Antunes', 'Parnaiba', 'Piauí', 'Brasil', NULL , 'An old gamer');
INSERT INTO Usuário VALUES ('U003', 'Shiriu', 'Bruno Corvos', NULL, 'Acre', 'Brasil', 'https://www.comboinfinito.com.br/principal/wp-content/uploads/2019/12/Minecraft-1.jpg', 'Em busca de experiências');
INSERT INTO Usuário VALUES ('U004', 'matador_de_noob', 'Raphael Almeida', 'Pato Branco', 'Pará', 'Brasil', 'https://pm1.narvii.com/6915/51258383576fe668967a99b8ffccbab00f64ae4fr1-720-1280v2_hq.jpg', NULL);
INSERT INTO Usuário VALUES ('U005', 'Divine_mage', 'Cassia Tavares', 'Rio de Janeiro', 'Rio de Janeiro', 'Brasil', 'https://i.pinimg.com/originals/8b/a6/17/8ba6171325251049ae0e01d21112bca1.jpg', '5 mundiais de peteca');


INSERT INTO Categoria VALUES ('CA01', 'Arte');
INSERT INTO Categoria VALUES ('CA02', 'Captura de Tela');
INSERT INTO Categoria VALUES ('CA03', 'Vídeo');
INSERT INTO Categoria VALUES ('CA04', 'Item da Oficina');
INSERT INTO Categoria VALUES ('CA05', 'Guia');


INSERT INTO Conteúdo VALUES ('CO01', 'Creeper pig', '111 KB', 95, 'CA01', 'U002');
INSERT INTO Conteúdo VALUES ('CO02', 'Headshot', '96 KB', 436, 'CA02', 'U004');
INSERT INTO Conteúdo VALUES ('CO03', 'Missão 8 - Season 4 - Valorant', '40 MB', 64540, 'CA03', 'U002');
INSERT INTO Conteúdo VALUES ('CO04', 'Among us Traidor', '100 KB', 265, 'CA02', 'U005');
INSERT INTO Conteúdo VALUES ('CO05', 'Fui Tirar LEITE DE CABRA e ela EXPLODIU meu MINECRAFT', '500 MB', 14000500, 'CA03', 'U001');


INSERT INTO Jogo VALUES ('J0001', 'Raise of The Tomb Raider', 29.99, '2015-Nov-10', 18, 'Você controla a Lara Croft');
INSERT INTO Jogo VALUES ('J0002', 'Fifa 2023', 299.00, '2022-Sep-30', 12, 'Jogo de futebol com jogadores de 2022');
INSERT INTO Jogo VALUES ('J0003', 'Stray', 63.79, '2022-Jul-19', 12, 'Voocê controla um gatinho de rua');
INSERT INTO Jogo VALUES ('J0004', 'Fifa 2022', 249.00, '2021-Sep-27', 12, 'Jogo de futebol com jogadores de 2021');
INSERT INTO Jogo VALUES ('J0005', 'Counter Strike', 0, '2003-Sep-12', 14, 'Jogo de tiro com armas realistas');
INSERT INTO Jogo VALUES ('J0006', 'Portal 2', 20.69, '2011-Apr-28', 12, 'É um jogo de portais');
INSERT INTO Jogo VALUES ('J0007', 'PUBG: BattleGrounds', 0, '2017-Mar-23', 14, 'Seja o último a sobreviver');


INSERT INTO Empresa VALUES ('E01', 'Crystal Dynamics', 606295);
INSERT INTO Empresa VALUES ('E02', 'Eidos-Montréal', 25603);
INSERT INTO Empresa VALUES ('E03', 'Blue Twelve Studio', 73699);
INSERT INTO Empresa VALUES ('E04', 'EA Canada & EA Romania', 734535);
INSERT INTO Empresa VALUES ('E05', 'Valve', 558366);
INSERT INTO Empresa VALUES ('E06', 'Krafton', NULL);


INSERT INTO Notícia VALUES ('N1', 'SEASON 2 IS ENDING SOON!', 123, '2020-Jan-23', 'Season 3 is soon coming. It means your time is running out to finish the Battle Pass!');
INSERT INTO Notícia VALUES ('N2', 'Major Rio 2022', 625, '2022-Jan-10', 'O Major de Counter Strike ocorrera no Rio de Janeiro em Novembro. Garanta o seu ingresso');
INSERT INTO Notícia VALUES ('N3', 'Lançamento do FIFA 2023', 328, '2022-Jul-16', 'Está marcado para Outubro o lançamento do mais novo FIFA, que trará um total de zero novidades');
INSERT INTO Notícia VALUES ('N4', 'Atualização de Stray', 1841, '2020-May-01', 'Stray sofrerá uma atualização com vistas a resolver bugs que estão afetando a gameplay');
INSERT INTO Notícia VALUES ('N5', 'PUBG de graça?', 349, '2022-Jan-12', 'É isso mesmo, o PUBG foi relançado e agora é de graça. Milhares de pessoas que já compraram o jogo estão chorando, que tistreza!');


INSERT INTO Avaliação VALUES('AV01',  7, 0, '2022-Feb-23', 'Estou ansioso pelo Major, certeza que a Furia ganha', 'U001', NULL, 'N2');
INSERT INTO Avaliação VALUES('AV02',  45, 4, '2022-Jun-16', 'O FIFA é uma piada, caro pra caramba e sem nenhum novidade', 'U004', 'J0002', NULL);
INSERT INTO Avaliação VALUES('AV03',  5, 2, '2022-Aug-12', 'Adoro gatos, então com certeza vou comprar o jogo', 'U003', 'J0003', NULL);
INSERT INTO Avaliação VALUES('AV04',  100, 31, '2022-Jan-15', 'Comprei o PUBG de Natal, sai no preju', 'U002', NULL, 'N5');
INSERT INTO Avaliação VALUES('AV05',  0, 1, '2019-Apr-13', 'Muito tiro, meu amigo', 'U004', 'J0005', NULL);


INSERT INTO Aquisição VALUES ('AQ001', 174.3, '14-Nov-21', 30, 'U005');
INSERT INTO Aquisição VALUES ('AQ002', 0.27, '2020-Dec-27', NULL, 'U005');
INSERT INTO Aquisição VALUES ('AQ003', 299.00, '2022-Oct-06', NULL, 'U002');
INSERT INTO Aquisição VALUES ('AQ004', 35.09, '2012-Aug-13', NULL, 'U003');
INSERT INTO Aquisição VALUES ('AQ005', 0, '2018-Nov-15', NULL, 'U001');
INSERT INTO Aquisição VALUES ('AQ006', 84.48, '2022-Jul-20', NULL, 'U004');
INSERT INTO Aquisição VALUES ('AQ007', 20.69, '2015-Aug-13', NULL, 'U005');


INSERT INTO ItemJogo VALUES ('IJ0001', 'AWP Phobos', 35.09, 'J0005');
INSERT INTO ItemJogo VALUES ('IJ0002', 'Deserte Eagle Light Rail', 28.63, 'J0005');
INSERT INTO ItemJogo VALUES ('IJ0003', 'Bionic Binie', 0.27, 'J0001');
INSERT INTO ItemJogo VALUES ('IJ0004', 'Ready to Rumble Jacket', 5.00, 'J0006');
INSERT INTO ItemJogo VALUES ('IJ0005', 'Hi-Top Trainers', NULL, 'J0007');


INSERT INTO Gênero VALUES ('G1', 'Action');
INSERT INTO Gênero VALUES ('G2', 'Adventure');
INSERT INTO Gênero VALUES ('G3', 'Soccer');
INSERT INTO Gênero VALUES ('G4', 'Sports');
INSERT INTO Gênero VALUES ('G5', 'Multiplayer');
INSERT INTO Gênero VALUES ('G6', 'FPS');
INSERT INTO Gênero VALUES ('G7', 'Battle Royale');
INSERT INTO Gênero VALUES ('G8', 'Sci-fi');


INSERT INTO Fórum VALUES ('FM001', 'We love GPR', 'GreenPowerRange', '2007-Jan-02', 2);
INSERT INTO Fórum VALUES ('FM002', 'Newbie FIFA BR', 'Pedro Henrique', '2015-Oct-16', 7560);
INSERT INTO Fórum VALUES ('FM003', 'MineRardicore', 'Shadow Com Luz', '2014-Nov-24', 14520);
INSERT INTO Fórum VALUES ('FM004', 'CS da Depressão', 'Fã do Fallen', '2012-Mar-17', 975134);
INSERT INTO Fórum VALUES ('FM005', 'Ajudas e Dicas', '70Correr', '2016-Sep-03', 58);


INSERT INTO Comentário VALUES ('CM001', 'Flame1456', '2007-Oct-02', 'O FIFA tá muito ruim, meu Deus', 'FM002');
INSERT INTO Comentário VALUES ('CM002', '0-XeReTa', '2015-Dec-30', 'O power ranger cinza é 1000x melhor que o verde', 'FM001');
INSERT INTO Comentário VALUES ('CM003', 'Shadow Sem Luz', '2014-Nov-24', 'Nossa, o Fallen é muito bom. Só bala na cabeça', 'FM004');
INSERT INTO Comentário VALUES ('CM004', 'GreenPowerRange', '2013-May-27', 'Como faz pra pegar diamante bem rapidão?', 'FM003');
INSERT INTO Comentário VALUES ('CM005', '70MeDerrotar', '2016-Jul-10', 'Como faz pra adicionar um jogo na lista de desejos?', 'FM005');


INSERT INTO Suporte VALUES ('S001', 'Problema na compra', 'Adquiri o jogo, mas ele não aparece para mim', 'U001');
INSERT INTO Suporte VALUES ('S002', 'Modo Família', 'Como ativar o modo família?', 'U003');
INSERT INTO Suporte VALUES ('S003', 'Problema de trocas', 'Mensagem de erro quando tento trocar itens', 'U002');
INSERT INTO Suporte VALUES ('S004', 'Não consta na biblioteca', NULL, 'U005');
INSERT INTO Suporte VALUES ('S005', 'Devolver produto', 'Quero meu dinheiro de volta', 'U003');


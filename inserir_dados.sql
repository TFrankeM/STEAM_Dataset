/*Inserir dados nas tabelas do banco de dados da steam*/

INSERT INTO Usuário VALUES ('U001', 'Salmoura', 'Jorge Silva', 'Tiradentes', 'Minas Gerais', 'Brasil', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcharcutaria.org%2Fwp-content%2Fuploads%2F2015%2F04%2Fsalmoura-sal-temperos.jpg&imgrefurl=https%3A%2F%2Fcharcutaria.org%2Fsal%2Fsalmoura-por-equilibrio%2F&tbnid=Mi5LXv20vrs7fM&vet=12ahUKEwiasLTky437AhVWH7kGHXPgCecQMygBegUIARDtAQ..i&docid=wxS7edjFGKu5AM&w=540&h=399&q=salmoura&ved=2ahUKEwiasLTky437AhVWH7kGHXPgCecQMygBegUIARDtAQ', 'Bacon ipsum dolor amet porchetta proident ham pork capicola. Picanha ex labore anim. Ut filet mignon sed sausage brisket tongue ipsum est pig officia rump consectetur bacon voluptate. Tri-tip shank boudin et, alcatra reprehenderit kielbasa chuck mollit pancetta aliqua porchetta. Quis sausage dolore nulla cupidatat incididunt picanha.');

INSERT INTO Categoria VALUES('CA01', 'Ação');

INSERT INTO Conteúdo VALUES('CO01', 'INcríbelíssimo Spencer', '3MB', '42');

INSERT INTO Curte VALUES('U001', 'CO01');

INSERT INTO Jogo VALUES('J0001', 56.90, 'Fazendinha', 'Stardew Valley', '2016', 'Core i5', '12');

INSERT INTO Jogo VALUES('J0002', 87.20, 'Tem o Mickey', 'Final Fantasy VI', '2018', 'Core i7', '14');

INSERT INTO BibliotecaDeJogos VALUES('U001', 'J0001');

INSERT INTO ListaDeDesejos VALUES('U001', 'J0002');

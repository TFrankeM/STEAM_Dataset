/* Código que gera inserts aleatórios para a tabela Aquisição */

DECLARE @AquisiçãoID varchar(30)
DECLARE @PreçoAquisição int
DECLARE @DataAquisição date
DECLARE @Desconto int
DECLARE @UsuárioID varchar(30)
/* Declaramos os nomes das nossas colunas na tabela alvo */
declare @cont int
declare @num int = 8
declare @FromDate date = '2012-01-01'
declare @ToDate date = '2022-10-31'
/* Declaramos algumas variáveis que usaremos e os limites da variável data */

set @cont = 0
WHILE ( @cont < 99993 )
/* Loop que é limitado pelo contador e ocorre entre o while e o begin */
BEGIN
SELECT top 1 @UsuárioID = UsuárioID FROM Usuário ORDER BY NEWID() /* Seleciona um id da outra tabela usuário já existente */
SELECT @AquisiçãoID = concat('AQ', cast(@num as varchar(30))); /* Cria um id que escolhi compor com AQ referente à tabela e um número(@num), que começa em 8, pq eu ja tinha sete registros, e cresce de um em um a cada rodada do loop */
SELECT @DataAquisição = dateadd(day, rand(checksum(newid()))*(1+datediff(day, @FromDate, @ToDate)),@FromDate); /* Randomiza uma data dentro dos limites */
select @PreçoAquisição = (abs(checksum(newid())) % 10000) + 0 /* Sorteia um número de zero a 1000 */
insert into Aquisição values(@AquisiçãoID, @PreçoAquisição, @DataAquisição, @Desconto, @UsuárioID); /* Cria a linha da tabela */
SET @cont = @cont + 1;
set @num = @num + 1;
/* Atualiza os valores de certas variáveis */
END

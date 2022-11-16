

DECLARE @AquisiçãoID varchar(30)
DECLARE @PreçoAquisição int
DECLARE @DataAquisição date
DECLARE @Desconto int
DECLARE @UsuárioID varchar(30)
declare @cont int
declare @num int = 8
declare @FromDate date = '2012-01-01'
declare @ToDate date = '2022-10-31'

set @cont = 0
WHILE ( @cont < 93 )
BEGIN
	SELECT top 1 @UsuárioID = UsuárioID FROM Usuário ORDER BY NEWID()
	SELECT @AquisiçãoID = concat('AQ', cast(@num as varchar(30)));
	SELECT @DataAquisição = dateadd(day, rand(checksum(newid()))*(1+datediff(day, @FromDate, @ToDate)),@FromDate);
	select @PreçoAquisição = (abs(checksum(newid())) % 10000) + 0
	insert into Aquisição values(@AquisiçãoID, @PreçoAquisição, @DataAquisição, @Desconto, @UsuárioID);
	SET @cont = @cont + 1;
	set @num = @num + 1;
END

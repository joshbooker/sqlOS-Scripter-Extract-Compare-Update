/****** Object:  UserDefinedFunction [dbo].[SplitString3]    Script Date: 12/22/2017 6:13:02 PM ******/
DROP FUNCTION [dbo].[SplitString3]
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString3]    Script Date: 12/22/2017 6:13:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitString3]
(
    @s NVARCHAR(MAX)
)
RETURNS @t TABLE
(
    [Order] INT,
    [Item] NCHAR(1)
)
AS
BEGIN
    DECLARE @i INT;
    SET @i = 1;
    WHILE @i <= LEN(@s)
    BEGIN
        INSERT @t SELECT @i, SUBSTRING(@s, @i, 1);
        SET @i = @i + 1;
    END
    RETURN;
END
GO

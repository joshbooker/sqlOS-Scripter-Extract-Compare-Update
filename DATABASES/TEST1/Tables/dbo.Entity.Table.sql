/****** Object:  Table [dbo].[Entity]    Script Date: 12/22/2017 6:12:55 PM ******/
DROP TABLE [dbo].[Entity]
GO
/****** Object:  Table [dbo].[Entity]    Script Date: 12/22/2017 6:12:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entity](
	[EntityID] [int] IDENTITY(1,1) NOT NULL,
	[ClassID] [int] NULL,
	[EntityName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL
) ON [PRIMARY]
GO

USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 12/6/2015 10:59:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Person](
	[PersonID] [bigint] IDENTITY(1,1) NOT NULL,
	[Prefix] [varchar](20) NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Suffix] [varchar](5) NULL,
	[NickName] [varchar](50) NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateProv] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [CreateDate_Def_Person]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Person] ADD  CONSTRAINT [LastUpdated_Def_Person]  DEFAULT (getdate()) FOR [LastUpdated]
GO


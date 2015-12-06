USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Registry]    Script Date: 12/6/2015 11:00:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Registry](
	[RegistryID] [bigint] IDENTITY(1,1) NOT NULL,
	[WeddingID] [bigint] NOT NULL,
	[StoreName] [varchar](50) NOT NULL,
	[Address1] [varchar](100) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateProv] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[WebsiteLink] [varchar](100) NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Registry] PRIMARY KEY CLUSTERED 
(
	[RegistryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Registry] ADD  CONSTRAINT [CreateDate_Def_Registry]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Registry] ADD  CONSTRAINT [LastUpdated_Def_Registry]  DEFAULT (getdate()) FOR [LastUpdated]
GO

ALTER TABLE [dbo].[Registry]  WITH CHECK ADD  CONSTRAINT [FK_Registry_Wedding] FOREIGN KEY([WeddingID])
REFERENCES [dbo].[Wedding] ([WeddingID])
GO

ALTER TABLE [dbo].[Registry] CHECK CONSTRAINT [FK_Registry_Wedding]
GO


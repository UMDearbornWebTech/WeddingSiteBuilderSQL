USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Ceremony]    Script Date: 12/6/2015 10:58:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ceremony](
	[WeddingID] [bigint] NOT NULL,
	[CeremonyID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateProv] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[CeremonyDateTime] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Ceremony] PRIMARY KEY CLUSTERED 
(
	[CeremonyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Ceremony] ADD  CONSTRAINT [CreateDate_Def_Ceremony]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Ceremony] ADD  CONSTRAINT [LastUpdated_Def_Ceremony]  DEFAULT (getdate()) FOR [LastUpdated]
GO

ALTER TABLE [dbo].[Ceremony]  WITH CHECK ADD  CONSTRAINT [FK_Ceremony_Wedding] FOREIGN KEY([WeddingID])
REFERENCES [dbo].[Wedding] ([WeddingID])
GO

ALTER TABLE [dbo].[Ceremony] CHECK CONSTRAINT [FK_Ceremony_Wedding]
GO


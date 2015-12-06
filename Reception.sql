USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Reception]    Script Date: 12/6/2015 11:00:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Reception](
	[WeddingID] [bigint] NOT NULL,
	[ReceptionID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateProv] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[ReceptionDateTime] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Reception] PRIMARY KEY CLUSTERED 
(
	[ReceptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Reception] ADD  CONSTRAINT [CreateDate_Def_Reception]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Reception] ADD  CONSTRAINT [LastUpdated_Def_Reception]  DEFAULT (getdate()) FOR [LastUpdated]
GO

ALTER TABLE [dbo].[Reception]  WITH CHECK ADD  CONSTRAINT [FK_Reception_Wedding] FOREIGN KEY([WeddingID])
REFERENCES [dbo].[Wedding] ([WeddingID])
GO

ALTER TABLE [dbo].[Reception] CHECK CONSTRAINT [FK_Reception_Wedding]
GO


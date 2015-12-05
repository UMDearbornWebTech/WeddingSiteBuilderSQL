USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Ceremony]    Script Date: 12/5/2015 8:53:05 AM ******/
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
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateProv] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[Country] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](15) NOT NULL,
	[CeremonyDateTime] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Ceremony] PRIMARY KEY CLUSTERED 
(
	[CeremonyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Ceremony]  WITH CHECK ADD  CONSTRAINT [FK_Ceremony_Wedding] FOREIGN KEY([WeddingID])
REFERENCES [dbo].[Wedding] ([WeddingID])
GO

ALTER TABLE [dbo].[Ceremony] CHECK CONSTRAINT [FK_Ceremony_Wedding]
GO



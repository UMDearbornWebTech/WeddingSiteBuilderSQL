USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Photo]    Script Date: 12/6/2015 10:59:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Photo](
	[WeddingID] [bigint] NULL,
	[PhotoID] [bigint] IDENTITY(1,1) NOT NULL,
	[PhotoData] [varbinary](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Photo] PRIMARY KEY CLUSTERED 
(
	[PhotoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Photo] ADD  CONSTRAINT [CreateDate_Def_Photo]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Photo] ADD  CONSTRAINT [LastUpdated_Def_Photo]  DEFAULT (getdate()) FOR [LastUpdated]
GO

ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Wedding] FOREIGN KEY([WeddingID])
REFERENCES [dbo].[Wedding] ([WeddingID])
GO

ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_Wedding]
GO


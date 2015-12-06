USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Wedding]    Script Date: 12/6/2015 11:01:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Wedding](
	[WeddingID] [bigint] Identity(1,1) NOT NULL,
	[DestinationWedding] [bit] NOT NULL,
	[CoupleStory] [varchar](250) NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Wedding] PRIMARY KEY CLUSTERED 
(
	[WeddingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Wedding] ADD  CONSTRAINT [DestinationWedding_Def_Wedding]  DEFAULT ((0)) FOR [DestinationWedding]
GO

ALTER TABLE [dbo].[Wedding] ADD  CONSTRAINT [CreateDate_Def_Wedding]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Wedding] ADD  CONSTRAINT [LastUpdated_Def_Wedding]  DEFAULT (getdate()) FOR [LastUpdated]
GO


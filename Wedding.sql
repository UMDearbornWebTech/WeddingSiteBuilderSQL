USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Wedding]    Script Date: 12/3/2015 10:10:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Wedding](
	[WeddingID] [bigint] NOT NULL IDENTITY(1,1),
	[DestinationWedding] [bit] NOT NULL,
	[CoupleStory] [varchar](250) NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Wedding] PRIMARY KEY CLUSTERED 
(
	[WeddingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO



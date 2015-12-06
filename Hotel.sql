USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Hotel]    Script Date: 12/6/2015 10:59:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Hotel](
	[WeddingID] [bigint] NOT NULL,
	[HotelID] [bigint] IDENTITY(1,1) NOT NULL,
	[HotelName] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[StateProv] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PhoneNumber] [varchar](15) NULL,
	[RoomBlock] [varchar](20) NULL,
	[TravelTips] [varchar](250) NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [CreateDate_Def_Hotel]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Hotel] ADD  CONSTRAINT [LastUpdated_Def_Hotel]  DEFAULT (getdate()) FOR [LastUpdated]
GO

ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Wedding] FOREIGN KEY([WeddingID])
REFERENCES [dbo].[Wedding] ([WeddingID])
GO

ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Wedding]
GO


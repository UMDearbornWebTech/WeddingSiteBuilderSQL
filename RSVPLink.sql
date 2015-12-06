USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[RSVPLink]    Script Date: 12/6/2015 11:00:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[RSVPLink](
	[RSVPLinkID] [bigint] IDENTITY(1,1) NOT NULL,
	[AttendeeID] [bigint] NOT NULL,
	[RSVPNameBlub] [varchar](50) NOT NULL,
	[GuidToken] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NOT NULL,
	[IsAnswered] [bit] NOT NULL,
 CONSTRAINT [PK_RSVPLink] PRIMARY KEY CLUSTERED 
(
	[RSVPLinkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[RSVPLink] ADD  CONSTRAINT [CreateDate_Def]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[RSVPLink] ADD  CONSTRAINT [LastUpdated_Def]  DEFAULT (getdate()) FOR [LastUpdated]
GO

ALTER TABLE [dbo].[RSVPLink] ADD  CONSTRAINT [IsAnswered_Def_RSVPLink]  DEFAULT ((0)) FOR [IsAnswered]
GO

ALTER TABLE [dbo].[RSVPLink]  WITH CHECK ADD  CONSTRAINT [FK_RSVPLink_Attendee] FOREIGN KEY([AttendeeID])
REFERENCES [dbo].[Attendee] ([AttendeeID])
GO

ALTER TABLE [dbo].[RSVPLink] CHECK CONSTRAINT [FK_RSVPLink_Attendee]
GO


USE [WeddingSiteBuilder]
GO

/****** Object:  Table [dbo].[Attendee]    Script Date: 12/3/2015 10:03:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Attendee](
	[AttendeeID] [bigint] IDENTITY(1,1) NOT NULL,
	[PersonID] [bigint] NOT NULL,
	[WeddingID] [bigint] NOT NULL,
	[WeddingRole] [varchar](50) NOT NULL,
	[Relationship] [varchar](50) NOT NULL,
	[Side] [varchar](5) NOT NULL,
	[Attending] [varchar](1) NULL,
	[numberofRSVPs] [int] NOT NULL,
	[PartyMemberBlub] [varchar](250) NULL,
	[RSVPStatus] [bit] NULL,
	[GuidToken] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdated] [datetime] NULL,
 CONSTRAINT [PK_Attendee] PRIMARY KEY CLUSTERED 
(
	[AttendeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Attendee]  WITH CHECK ADD  CONSTRAINT [FK_Attendee_Person] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO

ALTER TABLE [dbo].[Attendee] CHECK CONSTRAINT [FK_Attendee_Person]
GO

ALTER TABLE [dbo].[Attendee]  WITH CHECK ADD  CONSTRAINT [FK_Attendee_Wedding] FOREIGN KEY([WeddingID])
REFERENCES [dbo].[Wedding] ([WeddingID])
GO

ALTER TABLE [dbo].[Attendee] CHECK CONSTRAINT [FK_Attendee_Wedding]
GO



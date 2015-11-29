USE [WeddingBuilder]
GO

/****** Object:  Table [dbo].[Wedding]    Script Date: 11/29/2015 11:35:48 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Wedding](
	[WeddingID] [bigint] NOT NULL,
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


USE [WeddingBuilder]
GO

/****** Object:  Table [dbo].[Attendee]    Script Date: 11/29/2015 11:36:46 AM ******/
SET ANSI_NULLS ON
GO

USE [WeddingBuilder]
GO

/****** Object:  Table [dbo].[Ceremony]    Script Date: 11/29/2015 11:37:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ceremony](
	[WeddingID] [bigint] NOT NULL,
	[CeremonyID] [bigint] NOT NULL,
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



SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Attendee](
	[AttendeeID] [bigint] NOT NULL,
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



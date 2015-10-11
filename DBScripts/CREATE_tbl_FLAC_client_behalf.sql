USE [dbSaMI]
GO

/****** Object:  Table [dbo].[tbl_FLAC_client_behalf]    Script Date: 10/11/2015 12:56:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_FLAC_client_behalf](
	[FLACClientBehalfID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Relation] [varchar](255) NOT NULL,
	[CaseReceivedDate] [varchar](50) NOT NULL,
	[FromWhereCaseReferred] [varchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_client_behalf] PRIMARY KEY CLUSTERED 
(
	[FLACClientBehalfID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_FLAC_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_client_behalf_Name]  DEFAULT ('') FOR [Name]
GO

ALTER TABLE [dbo].[tbl_FLAC_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_client_behalf_Address]  DEFAULT ('') FOR [Address]
GO

ALTER TABLE [dbo].[tbl_FLAC_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_client_behalf_Phone]  DEFAULT ('') FOR [Phone]
GO

ALTER TABLE [dbo].[tbl_FLAC_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_client_behalf_Relation]  DEFAULT ('') FOR [Relation]
GO

ALTER TABLE [dbo].[tbl_FLAC_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_client_behalf_CaseReceivedDate]  DEFAULT ('') FOR [CaseReceivedDate]
GO

ALTER TABLE [dbo].[tbl_FLAC_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_client_behalf_FromWhereCaseReferred]  DEFAULT ('') FOR [FromWhereCaseReferred]
GO



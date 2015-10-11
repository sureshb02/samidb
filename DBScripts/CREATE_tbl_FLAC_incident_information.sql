USE [dbSaMI]
GO

/****** Object:  Table [dbo].[tbl_FLAC_incident_information]    Script Date: 10/11/2015 12:56:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_FLAC_incident_information](
	[FLACIncidentInformationID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[DateOfIncident] [varchar](50) NOT NULL,
	[PlaceOfIncident] [varchar](255) NOT NULL,
	[ProblemFacedDetails] [text] NOT NULL,
	[SituationCircumstancesBeforeIncident] [text] NOT NULL,
	[IncidentWitness] [varchar](255) NOT NULL,
	[NameAddressJailDeportationCenter] [text] NOT NULL,
	[JDBodyNumber] [varchar](255) NOT NULL,
	[JailedDeportationCenterSince] [varchar](255) NOT NULL,
	[JDSeekingSupportFor] [text] NOT NULL,
	[IncidentDetails] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_incident_information] PRIMARY KEY CLUSTERED 
(
	[FLACIncidentInformationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_DateOfIncident]  DEFAULT ('') FOR [DateOfIncident]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_PlaceOfIncident]  DEFAULT ('') FOR [PlaceOfIncident]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_ProblemFacedDetails]  DEFAULT ('') FOR [ProblemFacedDetails]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_SituationCircumstancesBeforeIncident]  DEFAULT ('') FOR [SituationCircumstancesBeforeIncident]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_IncidentWitness]  DEFAULT ('') FOR [IncidentWitness]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_NameAddressJailDeportationCenter]  DEFAULT ('') FOR [NameAddressJailDeportationCenter]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_JDBodyNumber]  DEFAULT ('') FOR [JDBodyNumber]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_JailedDeportationCenterSince]  DEFAULT ('') FOR [JailedDeportationCenterSince]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_JDSeekingSupportFor]  DEFAULT ('') FOR [JDSeekingSupportFor]
GO

ALTER TABLE [dbo].[tbl_FLAC_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_incident_information_IncidentDetails]  DEFAULT ('') FOR [IncidentDetails]
GO



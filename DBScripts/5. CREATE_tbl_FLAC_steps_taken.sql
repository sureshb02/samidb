USE [dbSaMI]
GO

/****** Object:  Table [dbo].[tbl_FLAC_steps_taken]    Script Date: 10/11/2015 12:56:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_FLAC_steps_taken](
	[FLACStepsTakenID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[WhoReferredCase] [varchar](255) NOT NULL,
	[ContactedOrganization] [varchar](255) NOT NULL,
	[OtherSupportReactionDetail] [text] NOT NULL,
	[ICCSuportDetail] [text] NOT NULL,
	[WithHospital] [text] NOT NULL,
	[WithCompany] [text] NOT NULL,
	[WithDOFE] [text] NOT NULL,
	[WithAgentRecruitmentAgent] [text] NOT NULL,
	[WithICC] [text] NOT NULL,
	[WithEmbassy] [text] NOT NULL,
	[WithFEPB] [text] NOT NULL,
	[WithOthers] [text] NOT NULL,
	[CompensationNepalInsurance] [varchar](50) NOT NULL,
	[CompensationNepalFEPB] [varchar](50) NOT NULL,
	[CompensationNepalRecruitmentAgency] [varchar](50) NOT NULL,
	[CompensationDestEmployer] [varchar](50) NOT NULL,
	[CompensationDestInsuranceCompany] [varchar](50) NOT NULL,
	[CompensationSolved] [tinyint] NOT NULL,
	[FinalResult] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_steps_taken] PRIMARY KEY CLUSTERED 
(
	[FLACStepsTakenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WhoReferredCase]  DEFAULT ('') FOR [WhoReferredCase]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_ContactedOrganization]  DEFAULT ('') FOR [ContactedOrganization]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_OtherSupportReactionDetail]  DEFAULT ('') FOR [OtherSupportReactionDetail]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_ICCSuportDetail]  DEFAULT ('') FOR [ICCSuportDetail]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WithHospital]  DEFAULT ('') FOR [WithHospital]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WithCompany]  DEFAULT ('') FOR [WithCompany]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WithDOFE]  DEFAULT ('') FOR [WithDOFE]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WithAgentRecruitmentAgent]  DEFAULT ('') FOR [WithAgentRecruitmentAgent]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WithICC]  DEFAULT ('') FOR [WithICC]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WithEmbassy]  DEFAULT ('') FOR [WithEmbassy]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WithFEPB]  DEFAULT ('') FOR [WithFEPB]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_WithOthers]  DEFAULT ('') FOR [WithOthers]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_CompensationNepalInsurance]  DEFAULT ('') FOR [CompensationNepalInsurance]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_CompensationNepalFEPB]  DEFAULT ('') FOR [CompensationNepalFEPB]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_CompensationNepalRecruitmentAgency]  DEFAULT ('') FOR [CompensationNepalRecruitmentAgency]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_CompensationDestEmployer]  DEFAULT ('') FOR [CompensationDestEmployer]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_CompensationDestInsuranceCompany]  DEFAULT ('') FOR [CompensationDestInsuranceCompany]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_CompensationSolved]  DEFAULT ((0)) FOR [CompensationSolved]
GO

ALTER TABLE [dbo].[tbl_FLAC_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_steps_taken_FinalResult]  DEFAULT ('') FOR [FinalResult]
GO



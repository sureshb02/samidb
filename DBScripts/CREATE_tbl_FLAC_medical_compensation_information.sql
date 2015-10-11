USE [dbSaMI]
GO

/****** Object:  Table [dbo].[tbl_FLAC_medical_compensation_information]    Script Date: 10/11/2015 12:56:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_FLAC_medical_compensation_information](
	[FLACMedicalCompensationInformationID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[MedicalInstituteNepal] [varchar](255) NOT NULL,
	[MedicalNepalCertificateDate] [varchar](50) NOT NULL,
	[MedicalNepalCheckupReport] [text] NOT NULL,
	[MedicalNepalTestFailedReason] [text] NOT NULL,
	[MedicalTestDest] [varchar](255) NOT NULL,
	[MedicalDestTestFailedReason] [text] NOT NULL,
	[IDCardNo] [varchar](50) NOT NULL,
	[IDCardDateOfIssue] [varchar](50) NOT NULL,
	[IDCardDurationOfValidity] [varchar](50) NOT NULL,
	[VisaNo] [varchar](50) NOT NULL,
	[VisaDateOfIssue] [varchar](50) NOT NULL,
	[VisaDurationOfValidity] [varchar](50) NOT NULL,
	[InsuranceDest] [varchar](50) NOT NULL,
	[InsuranceDestDateOfIssue] [varchar](50) NOT NULL,
	[InsuranceDestDurationOfValidity] [varchar](50) NOT NULL,
	[DueSalaryDestAmount] [varchar](50) NOT NULL,
	[DueSalaryDestReceivedDate] [varchar](50) NOT NULL,
	[DueSalaryDestTimePeriod] [varchar](50) NOT NULL,
	[InsuranceDestAmount] [varchar](50) NOT NULL,
	[InsuranceDestReceivedDate] [varchar](50) NOT NULL,
	[InsuranceDestTimePeriod] [varchar](50) NOT NULL,
	[FEPBSourceAmount] [varchar](50) NOT NULL,
	[FEPBSourceReceivedDate] [varchar](50) NOT NULL,
	[FEPBSourceTimePeriod] [varchar](50) NOT NULL,
	[InsuranceSourceAmount] [varchar](50) NOT NULL,
	[InsuranceSourceReceivedDate] [varchar](50) NOT NULL,
	[InsuranceSourceTimePeriod] [varchar](50) NOT NULL,
	[CompensationExplanation] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_medical_compensation_information] PRIMARY KEY CLUSTERED 
(
	[FLACMedicalCompensationInformationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_MedicalInstituteNepal]  DEFAULT ('') FOR [MedicalInstituteNepal]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_MedicalNepalCertificateDate]  DEFAULT ('') FOR [MedicalNepalCertificateDate]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_MedicalNepalCheckupReport]  DEFAULT ('') FOR [MedicalNepalCheckupReport]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_MedicalNepalTestFailedReason]  DEFAULT ('') FOR [MedicalNepalTestFailedReason]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_MedicalTestDest]  DEFAULT ('') FOR [MedicalTestDest]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_MedicalDestTestFailedReason]  DEFAULT ('') FOR [MedicalDestTestFailedReason]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_IDCardNo]  DEFAULT ('') FOR [IDCardNo]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_IDCardDateOfIssue]  DEFAULT ('') FOR [IDCardDateOfIssue]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_IDCardDurationOfValidity]  DEFAULT ('') FOR [IDCardDurationOfValidity]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_VisaNo]  DEFAULT ('') FOR [VisaNo]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_VisaDateOfIssue]  DEFAULT ('') FOR [VisaDateOfIssue]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_VisaDurationOfValidity]  DEFAULT ('') FOR [VisaDurationOfValidity]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InsuranceDest]  DEFAULT ('') FOR [InsuranceDest]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InsuranceDestDateOfIssue]  DEFAULT ('') FOR [InsuranceDestDateOfIssue]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InsuranceDestDurationOfValidity]  DEFAULT ('') FOR [InsuranceDestDurationOfValidity]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_DueSalaryDestAmount]  DEFAULT ('') FOR [DueSalaryDestAmount]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_DueSalaryDestReceivedDate]  DEFAULT ('') FOR [DueSalaryDestReceivedDate]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_DueSalaryDestTimePeriod]  DEFAULT ('') FOR [DueSalaryDestTimePeriod]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InuranceDestAmount]  DEFAULT ('') FOR [InsuranceDestAmount]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InsuranceDestReceivedDate]  DEFAULT ('') FOR [InsuranceDestReceivedDate]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InsuranceDestTimePeriod]  DEFAULT ('') FOR [InsuranceDestTimePeriod]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_FEPBSourceAmount]  DEFAULT ('') FOR [FEPBSourceAmount]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_FEPBSourceReceivedDate]  DEFAULT ('') FOR [FEPBSourceReceivedDate]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_FEPBSourceTimePeriod]  DEFAULT ('') FOR [FEPBSourceTimePeriod]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InsuranceSourceAmount]  DEFAULT ('') FOR [InsuranceSourceAmount]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InsuranceSourceReceivedDate]  DEFAULT ('') FOR [InsuranceSourceReceivedDate]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_InsuranceSourceTimePeriod]  DEFAULT ('') FOR [InsuranceSourceTimePeriod]
GO

ALTER TABLE [dbo].[tbl_FLAC_medical_compensation_information] ADD  CONSTRAINT [DF_tbl_FLAC_medical_compensation_information_CompensationExplanation]  DEFAULT ('') FOR [CompensationExplanation]
GO



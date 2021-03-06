USE [dbSaMI]
GO
/****** Object:  Table [dbo].[tbl_FLAC_shelter_victim_behalf]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_shelter_victim_behalf](
	[FLACShelterVictimBehalfID] [int] IDENTITY(1,1) NOT NULL,
	[FLACShelterProfileID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[Relation] [varchar](255) NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_shelter_victim_behalf] PRIMARY KEY CLUSTERED 
(
	[FLACShelterVictimBehalfID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_shelter_steps_taken]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_shelter_steps_taken](
	[FLACShelterStepsTakenID] [int] IDENTITY(1,1) NOT NULL,
	[FLACShelterProfileID] [int] NOT NULL,
	[ContactedOrganization] [varchar](50) NOT NULL,
	[ServiceByOtherInstitutionsDetails] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_shelter_steps_taken] PRIMARY KEY CLUSTERED 
(
	[FLACShelterStepsTakenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_shelter_q_related_predeparture]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture](
	[FLACShelterQRelatedPreDepartureID] [int] IDENTITY(1,1) NOT NULL,
	[FLACShelterProfileID] [int] NOT NULL,
	[ReasonForFE] [varchar](255) NOT NULL,
	[PreDepartureCosts] [varchar](50) NOT NULL,
	[RecruitmentProcessIndividual] [varchar](50) NOT NULL,
	[RecruitmentProcessInstitutional] [varchar](255) NOT NULL,
	[RelationNepal] [varchar](255) NOT NULL,
	[AddressRecruitmentAgency] [varchar](255) NOT NULL,
	[AddressAgent] [varchar](255) NOT NULL,
	[SignContractBeforeLeavingNepal] [tinyint] NOT NULL,
	[SignContractOption] [varchar](50) NOT NULL,
	[ContractInNepali] [tinyint] NOT NULL,
	[NoOfDaysBeforeDeparture] [varchar](50) NOT NULL,
	[RouteOfTravel] [varchar](50) NOT NULL,
	[StatusAtDepartureDocumented] [tinyint] NOT NULL,
	[LongWaitingTransitDetails] [varchar](255) NOT NULL,
	[ProblemTransit] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_shelter_q_related_predeparture] PRIMARY KEY CLUSTERED 
(
	[FLACShelterQRelatedPreDepartureID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_shelter_q_related_exp_destination]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination](
	[FLACShelterQRelatedExpDestinationID] [int] IDENTITY(1,1) NOT NULL,
	[FLACShelterProfileID] [int] NOT NULL,
	[SignedContractDest] [varchar](50) NOT NULL,
	[ForcedSignContract] [tinyint] NOT NULL,
	[ForceSignContractDetail] [text] NOT NULL,
	[PersonUnderstoodContract] [tinyint] NOT NULL,
	[PersonReactAnotherContract] [tinyint] NOT NULL,
	[AskedQuestionDetails] [text] NOT NULL,
	[HaveContractCopy] [tinyint] NOT NULL,
	[CopyOfContractDetails] [text] NOT NULL,
	[DaysBeforeDepartureReceivedContract] [varchar](50) NOT NULL,
	[JobDifferentFromPromised] [tinyint] NOT NULL,
	[DifferentSalaryFromTold] [tinyint] NOT NULL,
	[SalaryDifference] [varchar](50) NOT NULL,
	[SalaryPaidRegularly] [tinyint] NOT NULL,
	[SalaryReceived_LastPaidTime] [varchar](50) NOT NULL,
	[SalaryNotPaidDetails] [text] NOT NULL,
	[WorkingHoursPerDay] [varchar](50) NOT NULL,
	[TimeOffOption] [varchar](50) NOT NULL,
	[AllowedToContactFamily] [tinyint] NOT NULL,
	[HaveSeparateRoom] [tinyint] NOT NULL,
	[AllowedRetrunToNepal] [tinyint] NOT NULL,
	[LeaveTheEmployerDetails] [text] NOT NULL,
	[EmployerReact] [text] NOT NULL,
	[PersonDismissalWhen] [varchar](255) NOT NULL,
	[DismissalGivenReason] [text] NOT NULL,
	[DismisallCircumstances] [text] NOT NULL,
	[PhysicalAbuse] [text] NOT NULL,
	[EmotionalAbuse] [varchar](50) NOT NULL,
	[EmotionalAbuseOther] [text] NOT NULL,
	[SexualAbuse] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_shelter_q_related_exp_destination] PRIMARY KEY CLUSTERED 
(
	[FLACShelterQRelatedExpDestinationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_shelter_q_related_destination]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_shelter_q_related_destination](
	[FLACShelterQRelatedDestinationID] [int] IDENTITY(1,1) NOT NULL,
	[FLACShelterProfileID] [int] NOT NULL,
	[DestinationCountryID] [int] NOT NULL,
	[ArrivedInDestinationCountry] [varchar](50) NOT NULL,
	[CountryStayDuration] [varchar](255) NOT NULL,
	[EmployerDetails] [text] NOT NULL,
	[DateOfArrivalNepal] [varchar](50) NOT NULL,
	[StillInTheCountry] [tinyint] NOT NULL,
	[DestinationStatusBeforeReturnDocumented] [tinyint] NOT NULL,
	[StatusHadPassport] [tinyint] NOT NULL,
	[TotalYearsSpent] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_shelter_q_related_destination] PRIMARY KEY CLUSTERED 
(
	[FLACShelterQRelatedDestinationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_shelter_profiles]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_shelter_profiles](
	[FLACShelterProfileID] [int] IDENTITY(1,1) NOT NULL,
	[FamilyName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[DistrictID] [int] NOT NULL,
	[VDCID] [int] NOT NULL,
	[Ward] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](50) NOT NULL,
	[PassportNumber] [varchar](50) NOT NULL,
	[CitizenshipNumber] [varchar](50) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[DateOfBirth] [varchar](50) NOT NULL,
	[EthnicityID] [int] NOT NULL,
	[ValidRegion] [int] NOT NULL,
	[Age] [varchar](10) NOT NULL,
	[LabourApporvalNumber] [varchar](50) NOT NULL,
	[HaveLabourApporval] [tinyint] NOT NULL,
	[EducationStatusID] [int] NOT NULL,
	[MaritalStatusID] [int] NOT NULL,
	[FamilyGenogram] [text] NOT NULL,
	[FamilyEconomyStatus] [varchar](255) NOT NULL,
	[ShelterStayReason] [text] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[GUID] [varchar](50) NULL,
	[SyncStatus] [tinyint] NULL,
	[CaseTemplate] [varchar](50) NOT NULL,
 CONSTRAINT [PK_FLACShelterProfiles] PRIMARY KEY CLUSTERED 
(
	[FLACShelterProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_shelter_pourakhi_services]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services](
	[FLACShelterPourakhiServiceID] [int] IDENTITY(1,1) NOT NULL,
	[FLACShelterProfileID] [int] NOT NULL,
	[CaseReceivedDate] [varchar](50) NOT NULL,
	[WhereCaseReferred] [varchar](255) NOT NULL,
	[DaysStayAtShelter] [varchar](50) NOT NULL,
	[PsychosocialSitutaionOfVictim] [text] NOT NULL,
	[PourakhiServiceDetails] [text] NOT NULL,
	[ProgressStituationDetails] [text] NOT NULL,
	[HealthCheckupBy] [varchar](50) NOT NULL,
	[HealthCheckupDiagnosis] [text] NOT NULL,
	[TreatmentBy] [varchar](50) NOT NULL,
	[MedicationProvidedBy] [varchar](255) NOT NULL,
	[ProgressOnDischarge] [text] NOT NULL,
	[ParalegalProblemAddressed] [text] NOT NULL,
	[OrganizationReferred] [varchar](255) NOT NULL,
	[ParalegalProgressOnDischarge] [text] NOT NULL,
	[CompensationReceived] [tinyint] NOT NULL,
	[CompensationReceivedHowMuch] [varchar](50) NOT NULL,
	[CompensationReceivedBy] [varchar](50) NOT NULL,
	[OtherDetails] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_shelter_pourakhi_services] PRIMARY KEY CLUSTERED 
(
	[FLACShelterPourakhiServiceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_shelter_case_followup]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_shelter_case_followup](
	[FLACShelterCaseFollowupID] [int] IDENTITY(1,1) NOT NULL,
	[FLACShelterProfileID] [int] NOT NULL,
	[SaMIICCInformed] [tinyint] NOT NULL,
	[PsychologicalCaseReferred] [tinyint] NOT NULL,
	[CaseReferredWhom] [varchar](255) NOT NULL,
	[HowManyVisistsOrContacts] [varchar](255) NOT NULL,
	[HealthForWhat] [varchar](255) NOT NULL,
	[HealthReferredToWhom] [varchar](255) NOT NULL,
	[LegalForWhat] [varchar](255) NOT NULL,
	[LegalReferredToWhom] [varchar](255) NOT NULL,
	[ProgressAfterDischarge] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_shelter_case_followup] PRIMARY KEY CLUSTERED 
(
	[FLACShelterCaseFollowupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_recruitment_process]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_recruitment_process](
	[RecruitmentProcessID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[RecruitmentProcessType] [varchar](50) NOT NULL,
	[AgencyDetails] [text] NOT NULL,
	[AgentName] [varchar](255) NOT NULL,
	[AgentContactNumber] [varchar](50) NOT NULL,
	[LaborNumber] [varchar](50) NOT NULL,
	[LaborNumberIssueDate] [varchar](50) NOT NULL,
	[InsuranceInNepal] [tinyint] NOT NULL,
	[InsuranceCompany] [varchar](255) NOT NULL,
	[InsurancePolicyNumber] [varchar](50) NOT NULL,
	[InsuranceIssueDate] [varchar](50) NOT NULL,
	[InsuranceDuration] [varchar](50) NOT NULL,
	[MedicalInstitute] [varchar](255) NOT NULL,
	[MedicalCertificateDate] [varchar](50) NOT NULL,
	[MedicalStatus] [varchar](50) NOT NULL,
	[PreDepartureCostRangeID] [int] NOT NULL,
	[ContractReceivedLocationID] [int] NOT NULL,
	[ReceiptTaken] [tinyint] NOT NULL,
	[ReceiptAmount] [varchar](50) NOT NULL,
	[DepartureDate] [varchar](50) NOT NULL,
	[DepartureRouteID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_recruitment_process] PRIMARY KEY CLUSTERED 
(
	[RecruitmentProcessID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_profiles]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_profiles](
	[FLACProfileID] [int] IDENTITY(1,1) NOT NULL,
	[CaseNumber] [varchar](50) NOT NULL,
	[DestinationCountryID] [int] NOT NULL,
	[CaseType] [varchar](50) NOT NULL,
	[NoMaleGroup] [int] NOT NULL,
	[NoFemaleGroup] [int] NOT NULL,
	[NoOtherGroup] [int] NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[DateOfBirth] [varchar](50) NOT NULL,
	[Age] [varchar](50) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[ContactNumber] [varchar](50) NOT NULL,
	[DistrictID] [int] NOT NULL,
	[VDCID] [int] NOT NULL,
	[Ward] [varchar](50) NOT NULL,
	[PassportNumber] [varchar](50) NOT NULL,
	[PassportIssueDate] [varchar](50) NOT NULL,
	[CitizenshipNumber] [varchar](50) NOT NULL,
	[MaritalStatusID] [int] NOT NULL,
	[ChildrenDetails] [text] NOT NULL,
	[EthnicityID] [int] NOT NULL,
	[FamilyContactInfo] [varchar](255) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[CaseTemplate] [varchar](50) NOT NULL,
	[GUID] [int] NULL,
	[SyncStatus] [int] NULL,
	[ValidRegion] [varchar](50) NULL,
	[NoOfSufferer] [varchar](10) NOT NULL,
	[OccupationBeforeMigration] [varchar](50) NOT NULL,
	[EducationStatusID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_profiles] PRIMARY KEY CLUSTERED 
(
	[FLACProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_employment_information]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_employment_information](
	[EmploymentInformationID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[CompanyName] [varchar](255) NOT NULL,
	[CompanyAddress] [varchar](255) NOT NULL,
	[CompanyPhoneNumber] [varchar](50) NOT NULL,
	[CompanyFaxNumber] [varchar](50) NOT NULL,
	[WorkingEnvironment] [varchar](50) NOT NULL,
	[ContractSignedDestinationCountry] [tinyint] NOT NULL,
	[ContractSignedNepal] [tinyint] NOT NULL,
	[NepalJobPosition] [varchar](50) NOT NULL,
	[NepalBasicWages] [varchar](50) NOT NULL,
	[NepalOvertimeWages] [varchar](50) NOT NULL,
	[NepalBasicWorkingHours] [varchar](50) NOT NULL,
	[NepalRestWorkingHours] [varchar](50) NOT NULL,
	[NepalWorkingDaysPerWeek] [varchar](50) NOT NULL,
	[DestinationJobPosition] [varchar](50) NOT NULL,
	[DestinationBasicWages] [varchar](50) NOT NULL,
	[DestinationOvertimeWages] [varchar](50) NOT NULL,
	[DestinationBasicWorkingHours] [varchar](50) NOT NULL,
	[DestinationRestWorkingHours] [varchar](50) NOT NULL,
	[DestinationWorkingDaysPerWeek] [varchar](50) NOT NULL,
	[PaymentMode] [varchar](50) NOT NULL,
	[PaymentModeOther] [varchar](50) NOT NULL,
	[UnpaidAmount] [varchar](50) NOT NULL,
	[UnpaidMonths] [varchar](50) NOT NULL,
	[ComplainedNonPayment] [tinyint] NOT NULL,
	[NonPaymentComplainReaction] [varchar](255) NOT NULL,
	[ComplainedContractDifference] [tinyint] NOT NULL,
	[DifferenceContractComplainReaction] [varchar](255) NOT NULL,
	[WhenWantedToLeave] [varchar](255) NOT NULL,
	[EmployerReact] [varchar](255) NOT NULL,
	[WhenDismiss] [varchar](50) NOT NULL,
	[DismissalReason] [varchar](255) NOT NULL,
	[DismissalCircumstances] [varchar](255) NOT NULL,
	[NepalMigrationStatus] [tinyint] NOT NULL,
	[DestinationMigrationStatus] [tinyint] NOT NULL,
	[DestinationInsurance] [tinyint] NOT NULL,
	[DestInsuranceCompany] [varchar](255) NOT NULL,
	[DestInsuranceIssuedDate] [varchar](50) NOT NULL,
	[DestInsuranceDuration] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_employment_information] PRIMARY KEY CLUSTERED 
(
	[EmploymentInformationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_death_steps_taken]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_death_steps_taken](
	[FLACDeathStepsTakenID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[ContactedOrganization] [varchar](50) NOT NULL,
	[ComplainFiledAgainstOffender] [tinyint] NOT NULL,
	[StepsTaken] [tinyint] NOT NULL,
	[OtherSupportReactionDetail] [text] NOT NULL,
	[PersonFamilyRequest] [text] NOT NULL,
	[ICCSuportDetail] [text] NOT NULL,
	[WithEmbassy] [text] NOT NULL,
	[WithMoFA] [text] NOT NULL,
	[WithConsularDepartment] [text] NOT NULL,
	[WithEmployer] [text] NOT NULL,
	[WithInsuranceCompanyNepal] [text] NOT NULL,
	[WithInsuranceCompanyDest] [text] NOT NULL,
	[WithFEPB] [text] NOT NULL,
	[WithOthers] [text] NOT NULL,
	[FEPBProvidedTransportationCost] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_death_steps_taken] PRIMARY KEY CLUSTERED 
(
	[FLACDeathStepsTakenID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_death_incident_information]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_death_incident_information](
	[FLACDeathIncidentInformationID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[DateOfIncident] [varchar](50) NOT NULL,
	[PlaceOfIncident] [varchar](255) NOT NULL,
	[ProblemFacedDetails] [text] NOT NULL,
	[IncidentDetails] [text] NOT NULL,
	[WitnessName] [varchar](50) NOT NULL,
	[WitnessPhone] [varchar](50) NOT NULL,
	[WitnessRelation] [varchar](50) NOT NULL,
	[MedicalHistoryBeforeDeath] [tinyint] NOT NULL,
	[PersonLastTimeContact] [varchar](50) NOT NULL,
	[PersonLastTimeSendMoney] [varchar](50) NOT NULL,
	[TotalAmountSent] [varchar](50) NOT NULL,
	[FirstContactAbroad] [tinyint] NOT NULL,
	[PostMortemDone] [tinyint] NOT NULL,
	[PostMortemDoneBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_death_incident_details] PRIMARY KEY CLUSTERED 
(
	[FLACDeathIncidentInformationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_death_compensation]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_death_compensation](
	[FLACDeathCompensationID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[InsuranceNepalReceived] [tinyint] NOT NULL,
	[InsuranceNepalReceivedWhen] [varchar](50) NOT NULL,
	[InsuranceDestReceived] [tinyint] NOT NULL,
	[InsuranceDestReceivedHowWhom] [varchar](255) NOT NULL,
	[InsuranceDestReceivedWhen] [varchar](50) NOT NULL,
	[InsuranceDestStepsTaken] [text] NOT NULL,
	[CompensationReceivedFEPB] [tinyint] NOT NULL,
	[CompensationReceivedFEPBHowMuch] [varchar](50) NOT NULL,
	[ComepansationReceivedFEPBWhen] [varchar](50) NOT NULL,
	[WhoReceivedCompensation] [varchar](50) NOT NULL,
	[CompensationSolved] [tinyint] NOT NULL,
	[FinalResult] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_death_compensation] PRIMARY KEY CLUSTERED 
(
	[FLACDeathCompensationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_FLAC_death_client_behalf]    Script Date: 10/02/2015 13:13:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_FLAC_death_client_behalf](
	[FLACDeathClientBehalfID] [int] IDENTITY(1,1) NOT NULL,
	[FLACProfileID] [int] NOT NULL,
	[NameDest] [varchar](50) NOT NULL,
	[AddressDest] [varchar](255) NOT NULL,
	[PhoneDest] [varchar](50) NOT NULL,
	[RelationDest] [varchar](50) NOT NULL,
	[NameNepal] [varchar](50) NOT NULL,
	[AddressNepal] [varchar](50) NOT NULL,
	[PhoneNepal] [varchar](50) NOT NULL,
	[RelationNepal] [varchar](50) NOT NULL,
	[NameReceiver] [varchar](50) NOT NULL,
	[AddressReceiver] [varchar](50) NOT NULL,
	[PhoneReceiver] [varchar](50) NOT NULL,
	[RelationReceiver] [varchar](50) NOT NULL,
	[VictimStayDuration] [varchar](50) NOT NULL,
	[CaseReceivedDate] [varchar](50) NOT NULL,
	[SeekingSupportFor] [text] NOT NULL,
 CONSTRAINT [PK_tbl_FLAC_death_client_behalf] PRIMARY KEY CLUSTERED 
(
	[FLACDeathClientBehalfID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_NameDest]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_NameDest]  DEFAULT ('') FOR [NameDest]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_AddressDest]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_AddressDest]  DEFAULT ('') FOR [AddressDest]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_PhoneDest]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_PhoneDest]  DEFAULT ('') FOR [PhoneDest]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_RelationDest]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_RelationDest]  DEFAULT ('') FOR [RelationDest]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_NameNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_NameNepal]  DEFAULT ('') FOR [NameNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_AddressNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_AddressNepal]  DEFAULT ('') FOR [AddressNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_PhoneNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_PhoneNepal]  DEFAULT ('') FOR [PhoneNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_RelationNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_RelationNepal]  DEFAULT ('') FOR [RelationNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_NameReceiver]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_NameReceiver]  DEFAULT ('') FOR [NameReceiver]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_AddressReceiver]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_AddressReceiver]  DEFAULT ('') FOR [AddressReceiver]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_PhoneReceiver]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_PhoneReceiver]  DEFAULT ('') FOR [PhoneReceiver]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_RelationReceiver]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_RelationReceiver]  DEFAULT ('') FOR [RelationReceiver]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_VictimStayDuration]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_VictimStayDuration]  DEFAULT ('') FOR [VictimStayDuration]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_CaseReceivedDate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_CaseReceivedDate]  DEFAULT ('') FOR [CaseReceivedDate]
GO
/****** Object:  Default [DF_tbl_FLAC_death_client_behalf_SeekingSupportFor]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_client_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_death_client_behalf_SeekingSupportFor]  DEFAULT ('') FOR [SeekingSupportFor]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_InsuranceNepalReceived]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_InsuranceNepalReceived]  DEFAULT ((0)) FOR [InsuranceNepalReceived]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_InsuranceNepalReceivedWhen]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_InsuranceNepalReceivedWhen]  DEFAULT ('') FOR [InsuranceNepalReceivedWhen]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_InsuranceDestReceived]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_InsuranceDestReceived]  DEFAULT ((0)) FOR [InsuranceDestReceived]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_InsuranceDestReceivedHowWhom]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_InsuranceDestReceivedHowWhom]  DEFAULT ('') FOR [InsuranceDestReceivedHowWhom]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_InsuranceDestReceivedWhen]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_InsuranceDestReceivedWhen]  DEFAULT ('') FOR [InsuranceDestReceivedWhen]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_CompensationReceivedFEPB]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_CompensationReceivedFEPB]  DEFAULT ((0)) FOR [CompensationReceivedFEPB]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_CompensationReceivedFEPBHowMuch]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_CompensationReceivedFEPBHowMuch]  DEFAULT ('') FOR [CompensationReceivedFEPBHowMuch]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_ComepansationReceivedFEPBWhen]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_ComepansationReceivedFEPBWhen]  DEFAULT ('') FOR [ComepansationReceivedFEPBWhen]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_WhoReceivedCompensation]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_WhoReceivedCompensation]  DEFAULT ('') FOR [WhoReceivedCompensation]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_CompensationSolved]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_CompensationSolved]  DEFAULT ((0)) FOR [CompensationSolved]
GO
/****** Object:  Default [DF_tbl_FLAC_death_compensation_FinalResult]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_compensation] ADD  CONSTRAINT [DF_tbl_FLAC_death_compensation_FinalResult]  DEFAULT ('') FOR [FinalResult]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_DateOfIncident]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_DateOfIncident]  DEFAULT ('') FOR [DateOfIncident]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_PlaceOfIncident]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_PlaceOfIncident]  DEFAULT ('') FOR [PlaceOfIncident]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_ProblemFacedDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_ProblemFacedDetails]  DEFAULT ('') FOR [ProblemFacedDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_IncidentDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_IncidentDetails]  DEFAULT ('') FOR [IncidentDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_WitnessName]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_WitnessName]  DEFAULT ('') FOR [WitnessName]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_WitnessPhone]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_WitnessPhone]  DEFAULT ('') FOR [WitnessPhone]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_WitnessRelation]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_WitnessRelation]  DEFAULT ('') FOR [WitnessRelation]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_MedicalHistoryBeforeDeath]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_MedicalHistoryBeforeDeath]  DEFAULT ((0)) FOR [MedicalHistoryBeforeDeath]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_PersonLastTimeContact]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_PersonLastTimeContact]  DEFAULT ('') FOR [PersonLastTimeContact]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_PersonLastTimeSendMoney]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_PersonLastTimeSendMoney]  DEFAULT ('') FOR [PersonLastTimeSendMoney]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_TotalAmountSent]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_TotalAmountSent]  DEFAULT ('') FOR [TotalAmountSent]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_FirstContactAbroad]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_FirstContactAbroad]  DEFAULT ((0)) FOR [FirstContactAbroad]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_PostMortemDone]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_PostMortemDone]  DEFAULT ((0)) FOR [PostMortemDone]
GO
/****** Object:  Default [DF_tbl_FLAC_death_incident_details_PostMortemDoneBy]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_incident_information] ADD  CONSTRAINT [DF_tbl_FLAC_death_incident_details_PostMortemDoneBy]  DEFAULT ('') FOR [PostMortemDoneBy]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_ContactedOrganization]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_ContactedOrganization]  DEFAULT ('') FOR [ContactedOrganization]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_ComplainFiledAgainstOffender]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_ComplainFiledAgainstOffender]  DEFAULT ((0)) FOR [ComplainFiledAgainstOffender]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_StepsTaken]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_StepsTaken]  DEFAULT ((0)) FOR [StepsTaken]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_OtherSupportReactionDetail]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_OtherSupportReactionDetail]  DEFAULT ('') FOR [OtherSupportReactionDetail]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_PersonFamilyRequest]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_PersonFamilyRequest]  DEFAULT ('') FOR [PersonFamilyRequest]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_ICCSuportDetail]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_ICCSuportDetail]  DEFAULT ('') FOR [ICCSuportDetail]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_WithEmbassy]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_WithEmbassy]  DEFAULT ('') FOR [WithEmbassy]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_WithMoFA]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_WithMoFA]  DEFAULT ('') FOR [WithMoFA]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_WithEmployer]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_WithEmployer]  DEFAULT ('') FOR [WithEmployer]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_WithInsuranceCompanyNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_WithInsuranceCompanyNepal]  DEFAULT ('') FOR [WithInsuranceCompanyNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_WithInsuranceCompanyDest]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_WithInsuranceCompanyDest]  DEFAULT ('') FOR [WithInsuranceCompanyDest]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_WithFEPB]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_WithFEPB]  DEFAULT ('') FOR [WithFEPB]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_WithOthers]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_WithOthers]  DEFAULT ('') FOR [WithOthers]
GO
/****** Object:  Default [DF_tbl_FLAC_death_steps_taken_FEPBProvidedTransportationCost]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_death_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_death_steps_taken_FEPBProvidedTransportationCost]  DEFAULT ((0)) FOR [FEPBProvidedTransportationCost]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_CompanyName]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_CompanyName]  DEFAULT ('') FOR [CompanyName]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_CompanyPhoneNumber]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_CompanyPhoneNumber]  DEFAULT ('') FOR [CompanyPhoneNumber]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_CompanyFaxNumber]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_CompanyFaxNumber]  DEFAULT ('') FOR [CompanyFaxNumber]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_WorkingEnvironment]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_WorkingEnvironment]  DEFAULT ('') FOR [WorkingEnvironment]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_ContractSignedDestinationCountry]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_ContractSignedDestinationCountry]  DEFAULT ((0)) FOR [ContractSignedDestinationCountry]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_ContractSignedNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_ContractSignedNepal]  DEFAULT ((0)) FOR [ContractSignedNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_NepalJobPosition]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_NepalJobPosition]  DEFAULT ('') FOR [NepalJobPosition]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_NepalBasicWages]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_NepalBasicWages]  DEFAULT ('') FOR [NepalBasicWages]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_NepalOvertimeWages]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_NepalOvertimeWages]  DEFAULT ('') FOR [NepalOvertimeWages]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_NepalBasicWorkingHours]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_NepalBasicWorkingHours]  DEFAULT ('') FOR [NepalBasicWorkingHours]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_NepalRestWorkingHours]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_NepalRestWorkingHours]  DEFAULT ('') FOR [NepalRestWorkingHours]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_NepalWorkingDaysPerWeek]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_NepalWorkingDaysPerWeek]  DEFAULT ('') FOR [NepalWorkingDaysPerWeek]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestinationJobPosition]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestinationJobPosition]  DEFAULT ('') FOR [DestinationJobPosition]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestinationBasicWages]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestinationBasicWages]  DEFAULT ('') FOR [DestinationBasicWages]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestinationOvertimeWages]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestinationOvertimeWages]  DEFAULT ('') FOR [DestinationOvertimeWages]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestinationBasicWorkingHours]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestinationBasicWorkingHours]  DEFAULT ('') FOR [DestinationBasicWorkingHours]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestinationRestWorkingHours]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestinationRestWorkingHours]  DEFAULT ('') FOR [DestinationRestWorkingHours]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestinationWorkingDaysPerWeek]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestinationWorkingDaysPerWeek]  DEFAULT ('') FOR [DestinationWorkingDaysPerWeek]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_PaymentMode]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_PaymentMode]  DEFAULT ('') FOR [PaymentMode]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_PaymentModeOther]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_PaymentModeOther]  DEFAULT ('') FOR [PaymentModeOther]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_UnpaidAmount]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_UnpaidAmount]  DEFAULT ('') FOR [UnpaidAmount]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_UnpaidMonths]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_UnpaidMonths]  DEFAULT ('') FOR [UnpaidMonths]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_ComplainedNonPayment]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_ComplainedNonPayment]  DEFAULT ((0)) FOR [ComplainedNonPayment]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_NonPaymentComplainReaction]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_NonPaymentComplainReaction]  DEFAULT ('') FOR [NonPaymentComplainReaction]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_ComplainedContractDifference]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_ComplainedContractDifference]  DEFAULT ((0)) FOR [ComplainedContractDifference]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DifferenceContractComplainReaction]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DifferenceContractComplainReaction]  DEFAULT ('') FOR [DifferenceContractComplainReaction]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_WhenWantedToLeave]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_WhenWantedToLeave]  DEFAULT ('') FOR [WhenWantedToLeave]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_EmployerReact]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_EmployerReact]  DEFAULT ('') FOR [EmployerReact]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_WhenDismiss]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_WhenDismiss]  DEFAULT ('') FOR [WhenDismiss]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DismissalReason]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DismissalReason]  DEFAULT ('') FOR [DismissalReason]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DismissalCircumstances]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DismissalCircumstances]  DEFAULT ('') FOR [DismissalCircumstances]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_NepalMigrationStatus]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_NepalMigrationStatus]  DEFAULT ((0)) FOR [NepalMigrationStatus]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestinationMigrationStatus]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestinationMigrationStatus]  DEFAULT ((0)) FOR [DestinationMigrationStatus]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestinationInsurance]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestinationInsurance]  DEFAULT ((0)) FOR [DestinationInsurance]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestInsuranceCompany]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestInsuranceCompany]  DEFAULT ('') FOR [DestInsuranceCompany]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestInsuranceIssuedDate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestInsuranceIssuedDate]  DEFAULT ('') FOR [DestInsuranceIssuedDate]
GO
/****** Object:  Default [DF_tbl_FLAC_employment_information_DestInsuranceDuration]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_employment_information] ADD  CONSTRAINT [DF_tbl_FLAC_employment_information_DestInsuranceDuration]  DEFAULT ('') FOR [DestInsuranceDuration]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_NoMaleGroup]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_NoMaleGroup]  DEFAULT ((0)) FOR [NoMaleGroup]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_NoFemaleGroup]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_NoFemaleGroup]  DEFAULT ((0)) FOR [NoFemaleGroup]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_NoOtherGroup]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_NoOtherGroup]  DEFAULT ((0)) FOR [NoOtherGroup]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_DistrictID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_DistrictID]  DEFAULT ((0)) FOR [DistrictID]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_VDCID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_VDCID]  DEFAULT ((0)) FOR [VDCID]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_ChildrenDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_ChildrenDetails]  DEFAULT ('Not Available') FOR [ChildrenDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_CasteID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_CasteID]  DEFAULT ((0)) FOR [EthnicityID]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_txtFamilyContactInfo]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_txtFamilyContactInfo]  DEFAULT ('Not Available') FOR [FamilyContactInfo]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_CaseTemplate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_CaseTemplate]  DEFAULT ('') FOR [CaseTemplate]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_GUID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_GUID]  DEFAULT ((0)) FOR [GUID]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_SyncStatus]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_SyncStatus]  DEFAULT ((0)) FOR [SyncStatus]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_NoOfSuffere]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_NoOfSuffere]  DEFAULT ('') FOR [NoOfSufferer]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_OccupationBeforeMigration]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_OccupationBeforeMigration]  DEFAULT ('') FOR [OccupationBeforeMigration]
GO
/****** Object:  Default [DF_tbl_FLAC_profiles_EducationStatusID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_profiles_EducationStatusID]  DEFAULT ((0)) FOR [EducationStatusID]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_RecruitmentProcessType]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_RecruitmentProcessType]  DEFAULT ('') FOR [RecruitmentProcessType]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_AgencyDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_AgencyDetails]  DEFAULT ('') FOR [AgencyDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_AgentName]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_AgentName]  DEFAULT ('') FOR [AgentName]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_LaborNumberIssueDate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_LaborNumberIssueDate]  DEFAULT ('') FOR [LaborNumberIssueDate]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_InsuranceInNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_InsuranceInNepal]  DEFAULT ((0)) FOR [InsuranceInNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_InsuranceCompany]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_InsuranceCompany]  DEFAULT ('') FOR [InsuranceCompany]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_InsurancePolicyNumber]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_InsurancePolicyNumber]  DEFAULT ('') FOR [InsurancePolicyNumber]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_InsuranceIssueDate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_InsuranceIssueDate]  DEFAULT ('') FOR [InsuranceIssueDate]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_InsuranceDuration]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_InsuranceDuration]  DEFAULT ('') FOR [InsuranceDuration]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_MedicalInstitute]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_MedicalInstitute]  DEFAULT ('') FOR [MedicalInstitute]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_MedicalCertificateDate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_MedicalCertificateDate]  DEFAULT ('') FOR [MedicalCertificateDate]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_MedicalStatus]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_MedicalStatus]  DEFAULT ('') FOR [MedicalStatus]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_PreDepartureCostRangeID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_PreDepartureCostRangeID]  DEFAULT ((0)) FOR [PreDepartureCostRangeID]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_ContractReceivedLocationID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_ContractReceivedLocationID]  DEFAULT ((0)) FOR [ContractReceivedLocationID]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_ReceiptTaken]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_ReceiptTaken]  DEFAULT ((0)) FOR [ReceiptTaken]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_ReceiptAmount]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_ReceiptAmount]  DEFAULT ((0)) FOR [ReceiptAmount]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_DepartureDate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_DepartureDate]  DEFAULT ('') FOR [DepartureDate]
GO
/****** Object:  Default [DF_tbl_FLAC_recruitment_process_DepartureRouteID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_recruitment_process] ADD  CONSTRAINT [DF_tbl_FLAC_recruitment_process_DepartureRouteID]  DEFAULT ((0)) FOR [DepartureRouteID]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_SaMIICCInformed]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_SaMIICCInformed]  DEFAULT ((0)) FOR [SaMIICCInformed]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_PsychologicalCaseReferred]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_PsychologicalCaseReferred]  DEFAULT ((0)) FOR [PsychologicalCaseReferred]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_CaseReferredWhom]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_CaseReferredWhom]  DEFAULT ('') FOR [CaseReferredWhom]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_HowManyVisistsOrContacts]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_HowManyVisistsOrContacts]  DEFAULT ('') FOR [HowManyVisistsOrContacts]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_HealthForWhat]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_HealthForWhat]  DEFAULT ('') FOR [HealthForWhat]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_HealthReferredToWhom]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_HealthReferredToWhom]  DEFAULT ('') FOR [HealthReferredToWhom]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_LegalForWhat]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_LegalForWhat]  DEFAULT ('') FOR [LegalForWhat]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_LegalReferredToWhom]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_LegalReferredToWhom]  DEFAULT ('') FOR [LegalReferredToWhom]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_case_followup_PorgressAfterDischarge]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_case_followup] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_case_followup_PorgressAfterDischarge]  DEFAULT ('') FOR [ProgressAfterDischarge]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_CaseReceivedDate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_CaseReceivedDate]  DEFAULT ('') FOR [CaseReceivedDate]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_WhereCaseReferred]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_WhereCaseReferred]  DEFAULT ('') FOR [WhereCaseReferred]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_DaysStayAtShelter]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_DaysStayAtShelter]  DEFAULT ('') FOR [DaysStayAtShelter]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_PsychosocialSitutaionOfVictim]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_PsychosocialSitutaionOfVictim]  DEFAULT ('') FOR [PsychosocialSitutaionOfVictim]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_PourakhiServiceDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_PourakhiServiceDetails]  DEFAULT ('') FOR [PourakhiServiceDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_ProgressStituationDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_ProgressStituationDetails]  DEFAULT ('') FOR [ProgressStituationDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_HealthCheckupBy]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_HealthCheckupBy]  DEFAULT ('') FOR [HealthCheckupBy]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_HealthCheckupDiagnosis]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_HealthCheckupDiagnosis]  DEFAULT ('') FOR [HealthCheckupDiagnosis]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_TreatmentBy]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_TreatmentBy]  DEFAULT ('') FOR [TreatmentBy]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_MedicationProvidedBy]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_MedicationProvidedBy]  DEFAULT ('') FOR [MedicationProvidedBy]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_ProgressOnDischarge]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_ProgressOnDischarge]  DEFAULT ('') FOR [ProgressOnDischarge]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_ParalegalProblemAddressed]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_ParalegalProblemAddressed]  DEFAULT ('') FOR [ParalegalProblemAddressed]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_OrganizationReferred]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_OrganizationReferred]  DEFAULT ('') FOR [OrganizationReferred]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_ParalegalProgressOnDischarge]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_ParalegalProgressOnDischarge]  DEFAULT ('') FOR [ParalegalProgressOnDischarge]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_CompensationReceived]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_CompensationReceived]  DEFAULT ((0)) FOR [CompensationReceived]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_CompensationReceivedHowMuch]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_CompensationReceivedHowMuch]  DEFAULT ('') FOR [CompensationReceivedHowMuch]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_CompensationReceivedBy]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_CompensationReceivedBy]  DEFAULT ('') FOR [CompensationReceivedBy]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_pourakhi_services_OtherDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_pourakhi_services] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_pourakhi_services_OtherDetails]  DEFAULT ('') FOR [OtherDetails]
GO
/****** Object:  Default [DF_FLACShelterProfiles_EthnicityID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_FLACShelterProfiles_EthnicityID]  DEFAULT ((0)) FOR [EthnicityID]
GO
/****** Object:  Default [DF_FLACShelterProfiles_ValidRegion]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_FLACShelterProfiles_ValidRegion]  DEFAULT ((0)) FOR [ValidRegion]
GO
/****** Object:  Default [DF_FLACShelterProfiles_LabourApporvalNumber]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_FLACShelterProfiles_LabourApporvalNumber]  DEFAULT ('') FOR [LabourApporvalNumber]
GO
/****** Object:  Default [DF_FLACShelterProfiles_HaveLabourApporval]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_FLACShelterProfiles_HaveLabourApporval]  DEFAULT ((0)) FOR [HaveLabourApporval]
GO
/****** Object:  Default [DF_FLACShelterProfiles_EducationStatusID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_FLACShelterProfiles_EducationStatusID]  DEFAULT ((0)) FOR [EducationStatusID]
GO
/****** Object:  Default [DF_FLACShelterProfiles_MaritalStatusID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_FLACShelterProfiles_MaritalStatusID]  DEFAULT ((0)) FOR [MaritalStatusID]
GO
/****** Object:  Default [DF_FLACShelterProfiles_FamilyGenogram]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_FLACShelterProfiles_FamilyGenogram]  DEFAULT ('') FOR [FamilyGenogram]
GO
/****** Object:  Default [DF_FLACShelterProfiles_FamilyEconomyStatus]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_FLACShelterProfiles_FamilyEconomyStatus]  DEFAULT ('') FOR [FamilyEconomyStatus]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_profiles_ShelterStayReason]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_profiles_ShelterStayReason]  DEFAULT ('') FOR [ShelterStayReason]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_profiles_CaseTemplate]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_profiles] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_profiles_CaseTemplate]  DEFAULT ('') FOR [CaseTemplate]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_DestinationCountryID]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_DestinationCountryID]  DEFAULT ((0)) FOR [DestinationCountryID]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_ArrivedInDestinationCountry]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_ArrivedInDestinationCountry]  DEFAULT ((0)) FOR [ArrivedInDestinationCountry]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_CountryStayDuration]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_CountryStayDuration]  DEFAULT ('') FOR [CountryStayDuration]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_EmployerDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_EmployerDetails]  DEFAULT ('') FOR [EmployerDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_DateOfArrivalNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_DateOfArrivalNepal]  DEFAULT ('') FOR [DateOfArrivalNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_StillInTheCountry]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_StillInTheCountry]  DEFAULT ((0)) FOR [StillInTheCountry]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_DestinationStatusBeforeReturnDocumented]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_DestinationStatusBeforeReturnDocumented]  DEFAULT ((0)) FOR [DestinationStatusBeforeReturnDocumented]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_StatusHadPassport]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_StatusHadPassport]  DEFAULT ((0)) FOR [StatusHadPassport]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_destination_TotalYearsSpent]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_destination_TotalYearsSpent]  DEFAULT ('') FOR [TotalYearsSpent]
GO
/****** Object:  Default [DF_Table_1_ddlNoSignedContractDest]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_Table_1_ddlNoSignedContractDest]  DEFAULT ('') FOR [SignedContractDest]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_ForcedSignContract]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_ForcedSignContract]  DEFAULT ((0)) FOR [ForcedSignContract]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_ForceSignContractDetail]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_ForceSignContractDetail]  DEFAULT ('') FOR [ForceSignContractDetail]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_PersonUnderstoodContract]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_PersonUnderstoodContract]  DEFAULT ((0)) FOR [PersonUnderstoodContract]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_PersonReactAnotherContract]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_PersonReactAnotherContract]  DEFAULT ((0)) FOR [PersonReactAnotherContract]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_AskedQuestionDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_AskedQuestionDetails]  DEFAULT ('') FOR [AskedQuestionDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_HaveContractCopy]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_HaveContractCopy]  DEFAULT ((0)) FOR [HaveContractCopy]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_CopyOfContractDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_CopyOfContractDetails]  DEFAULT ('') FOR [CopyOfContractDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_DaysBeforeDepartureReceivedContract]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_DaysBeforeDepartureReceivedContract]  DEFAULT ('') FOR [DaysBeforeDepartureReceivedContract]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_JobDifferentFromPromised]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_JobDifferentFromPromised]  DEFAULT ((0)) FOR [JobDifferentFromPromised]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_DifferentSalaryFromTold]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_DifferentSalaryFromTold]  DEFAULT ((0)) FOR [DifferentSalaryFromTold]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_SalaryDifference]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_SalaryDifference]  DEFAULT ('') FOR [SalaryDifference]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_SalaryPaidRegularly]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_SalaryPaidRegularly]  DEFAULT ((0)) FOR [SalaryPaidRegularly]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_SalaryReceived_LastPaidTime]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_SalaryReceived_LastPaidTime]  DEFAULT ('') FOR [SalaryReceived_LastPaidTime]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_SalaryNotPaidDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_SalaryNotPaidDetails]  DEFAULT ('') FOR [SalaryNotPaidDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_WorkingHoursPerDay]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_WorkingHoursPerDay]  DEFAULT ('') FOR [WorkingHoursPerDay]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_TimeOffOption]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_TimeOffOption]  DEFAULT ('') FOR [TimeOffOption]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_AllowedToContactFamily]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_AllowedToContactFamily]  DEFAULT ((0)) FOR [AllowedToContactFamily]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_HaveSeparateRoom]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_HaveSeparateRoom]  DEFAULT ((0)) FOR [HaveSeparateRoom]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_AllowedRetrunToNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_AllowedRetrunToNepal]  DEFAULT ((0)) FOR [AllowedRetrunToNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_LeaveTheEmployerDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_LeaveTheEmployerDetails]  DEFAULT ('') FOR [LeaveTheEmployerDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_EmployerReact]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_EmployerReact]  DEFAULT ('') FOR [EmployerReact]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_PersonDismissalWhen]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_PersonDismissalWhen]  DEFAULT ('') FOR [PersonDismissalWhen]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_DismissalGivenReason]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_DismissalGivenReason]  DEFAULT ('') FOR [DismissalGivenReason]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_DismisallCircumstances]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_DismisallCircumstances]  DEFAULT ('') FOR [DismisallCircumstances]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_PhysicalAbuse]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_PhysicalAbuse]  DEFAULT ('') FOR [PhysicalAbuse]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_EmotionalAbuse]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_EmotionalAbuse]  DEFAULT ('') FOR [EmotionalAbuse]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_EmotionalAbuseOther]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_EmotionalAbuseOther]  DEFAULT ('') FOR [EmotionalAbuseOther]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_exp_destination_SexualAbuse]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_exp_destination] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_exp_destination_SexualAbuse]  DEFAULT ('') FOR [SexualAbuse]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_ReasonForFE]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_ReasonForFE]  DEFAULT ('') FOR [ReasonForFE]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_PreDepartureCosts]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_PreDepartureCosts]  DEFAULT ('') FOR [PreDepartureCosts]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_RecruitmentProcessIndividual]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_RecruitmentProcessIndividual]  DEFAULT ('') FOR [RecruitmentProcessIndividual]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_RecruitmentProcessInstitutional]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_RecruitmentProcessInstitutional]  DEFAULT ('') FOR [RecruitmentProcessInstitutional]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_RelationNepal]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_RelationNepal]  DEFAULT ('') FOR [RelationNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_AddressRecruitmentAgency]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_AddressRecruitmentAgency]  DEFAULT ('') FOR [AddressRecruitmentAgency]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_AddressAgent]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_AddressAgent]  DEFAULT ('') FOR [AddressAgent]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_SignContractBeforeLeavingNepalYes]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_SignContractBeforeLeavingNepalYes]  DEFAULT ((0)) FOR [SignContractBeforeLeavingNepal]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_SignContractOption]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_SignContractOption]  DEFAULT ('') FOR [SignContractOption]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_ContractInNepali]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_ContractInNepali]  DEFAULT ((0)) FOR [ContractInNepali]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_NoOfDaysBeforeDeparture]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_NoOfDaysBeforeDeparture]  DEFAULT ('') FOR [NoOfDaysBeforeDeparture]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_RouteOfTravel]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_RouteOfTravel]  DEFAULT ('') FOR [RouteOfTravel]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_StatusAtDepartureDocumented]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_StatusAtDepartureDocumented]  DEFAULT ((0)) FOR [StatusAtDepartureDocumented]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_LongWaitingTransitDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_LongWaitingTransitDetails]  DEFAULT ('') FOR [LongWaitingTransitDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_q_related_predeparture_ProblemTransit]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_q_related_predeparture] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_q_related_predeparture_ProblemTransit]  DEFAULT ((0)) FOR [ProblemTransit]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_steps_taken_ContactedOrganization]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_steps_taken_ContactedOrganization]  DEFAULT ('') FOR [ContactedOrganization]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_steps_taken_ServiceByOtherInstitutionsDetails]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_steps_taken] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_steps_taken_ServiceByOtherInstitutionsDetails]  DEFAULT ('') FOR [ServiceByOtherInstitutionsDetails]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_victim_behalf_Name]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_victim_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_victim_behalf_Name]  DEFAULT ('') FOR [Name]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_victim_behalf_Address]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_victim_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_victim_behalf_Address]  DEFAULT ('') FOR [Address]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_victim_behalf_PhoneNumber]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_victim_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_victim_behalf_PhoneNumber]  DEFAULT ('') FOR [PhoneNumber]
GO
/****** Object:  Default [DF_tbl_FLAC_shelter_victim_behalf_Relation]    Script Date: 10/02/2015 13:13:08 ******/
ALTER TABLE [dbo].[tbl_FLAC_shelter_victim_behalf] ADD  CONSTRAINT [DF_tbl_FLAC_shelter_victim_behalf_Relation]  DEFAULT ('') FOR [Relation]
GO

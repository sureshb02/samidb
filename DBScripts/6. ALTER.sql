ALTER TABLE dbo.tbl_FLAC_steps_taken ADD
	FamilyAskToDoDetails text NOT NULL CONSTRAINT DF_tbl_FLAC_steps_taken_FamilyAskToDoDetails DEFAULT '',
	WithManPowerAgent text NOT NULL CONSTRAINT DF_tbl_FLAC_steps_taken_WithManPowerAgent DEFAULT '',
	WithSupportOrganizationDest text NOT NULL CONSTRAINT DF_tbl_FLAC_steps_taken_WithSupportOrganizationDest DEFAULT ''
GO


ALTER TABLE dbo.tbl_FLAC_steps_taken ADD
	RespectiveInstutionResponse text NOT NULL CONSTRAINT DF_tbl_FLAC_steps_taken_RespectiveInstutionResponse DEFAULT '',
	OrganizationStepsTakenDetails text NOT NULL CONSTRAINT DF_tbl_FLAC_steps_taken_OrganizationStepsTakenDetails DEFAULT '',
	CompensationReceivedHowMuch varchar(50) NOT NULL CONSTRAINT DF_tbl_FLAC_steps_taken_CompensationReceivedHowMuch DEFAULT '',
	CompensationReceivedWhen varchar(50) NOT NULL CONSTRAINT DF_tbl_FLAC_steps_taken_CompensationReceivedWhen DEFAULT ''
GO


ALTER TABLE dbo.tbl_FLAC_steps_taken ADD
	CompensationReceived tinyint NOT NULL CONSTRAINT DF_tbl_FLAC_steps_taken_CompensationReceived DEFAULT 0
GO
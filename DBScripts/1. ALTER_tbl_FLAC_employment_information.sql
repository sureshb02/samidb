ALTER TABLE dbo.tbl_FLAC_employment_information ADD
	HowContractDifferentFromSigned text NOT NULL CONSTRAINT DF_tbl_FLAC_employment_information_HowContractDifferentFromSigned DEFAULT '';
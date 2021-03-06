USE [dbSaMI]
GO
/****** Object:  Table [dbo].[tbl_pre_departure_cost_ranges]    Script Date: 10/02/2015 13:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_pre_departure_cost_ranges](
	[PreDepartureCostRangeID] [int] IDENTITY(1,1) NOT NULL,
	[PreDepartureCostRangeDesc] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdateBy] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_pre_departure_cost_ranges] PRIMARY KEY CLUSTERED 
(
	[PreDepartureCostRangeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_pre_departure_cost_ranges] ON
INSERT [dbo].[tbl_pre_departure_cost_ranges] ([PreDepartureCostRangeID], [PreDepartureCostRangeDesc], [CreatedBy], [CreatedDate], [UpdateBy], [UpdateDate], [Status]) VALUES (1, N'Not Available', 2, CAST(0x0000A50E00000000 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_pre_departure_cost_ranges] ([PreDepartureCostRangeID], [PreDepartureCostRangeDesc], [CreatedBy], [CreatedDate], [UpdateBy], [UpdateDate], [Status]) VALUES (2, N'Less than 70,000', 2, CAST(0x0000A50E00F3746C AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_pre_departure_cost_ranges] ([PreDepartureCostRangeID], [PreDepartureCostRangeDesc], [CreatedBy], [CreatedDate], [UpdateBy], [UpdateDate], [Status]) VALUES (3, N'70,000', 2, CAST(0x0000A50E00F383C1 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_pre_departure_cost_ranges] ([PreDepartureCostRangeID], [PreDepartureCostRangeDesc], [CreatedBy], [CreatedDate], [UpdateBy], [UpdateDate], [Status]) VALUES (4, N'71,000 - 79,000', 2, CAST(0x0000A50E00F39077 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_pre_departure_cost_ranges] ([PreDepartureCostRangeID], [PreDepartureCostRangeDesc], [CreatedBy], [CreatedDate], [UpdateBy], [UpdateDate], [Status]) VALUES (5, N'80,000', 2, CAST(0x0000A50E00F39A62 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_pre_departure_cost_ranges] ([PreDepartureCostRangeID], [PreDepartureCostRangeDesc], [CreatedBy], [CreatedDate], [UpdateBy], [UpdateDate], [Status]) VALUES (6, N'81,000 - 100,000', 2, CAST(0x0000A50E00F3A4E8 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_pre_departure_cost_ranges] ([PreDepartureCostRangeID], [PreDepartureCostRangeDesc], [CreatedBy], [CreatedDate], [UpdateBy], [UpdateDate], [Status]) VALUES (7, N'100,001 - 150,000', 2, CAST(0x0000A50E00F3ADFC AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_pre_departure_cost_ranges] ([PreDepartureCostRangeID], [PreDepartureCostRangeDesc], [CreatedBy], [CreatedDate], [UpdateBy], [UpdateDate], [Status]) VALUES (8, N'Above 150,000', 2, CAST(0x0000A50E00F3B87F AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_pre_departure_cost_ranges] OFF
/****** Object:  Table [dbo].[tbl_departure_routes]    Script Date: 10/02/2015 13:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_departure_routes](
	[DepartureRouteID] [int] IDENTITY(1,1) NOT NULL,
	[DepartureRouteName] [varchar](50) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [tinyint] NULL,
 CONSTRAINT [PK_tbl_departure_route] PRIMARY KEY CLUSTERED 
(
	[DepartureRouteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_departure_routes] ON
INSERT [dbo].[tbl_departure_routes] ([DepartureRouteID], [DepartureRouteName], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status]) VALUES (1, N'Not Available', 2, CAST(0x0000A50E00F63A69 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_departure_routes] ([DepartureRouteID], [DepartureRouteName], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status]) VALUES (2, N'India', 2, CAST(0x0000A50E00F64232 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_departure_routes] ([DepartureRouteID], [DepartureRouteName], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status]) VALUES (3, N'Nepal', 2, CAST(0x0000A50E00F64688 AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_departure_routes] OFF
/****** Object:  Table [dbo].[tbl_contract_received_locations]    Script Date: 10/02/2015 13:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_contract_received_locations](
	[ContractReceivedLocationID] [int] IDENTITY(1,1) NOT NULL,
	[ContractReceivedLocationDesc] [varchar](255) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbl_contract_received_locations] PRIMARY KEY CLUSTERED 
(
	[ContractReceivedLocationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_contract_received_locations] ON
INSERT [dbo].[tbl_contract_received_locations] ([ContractReceivedLocationID], [ContractReceivedLocationDesc], [CreatedBy], [CreateDate], [UpdatedBy], [UpdatedDate], [Status]) VALUES (1, N'Not Available', 2, CAST(0x0000A50E00F5E6AE AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_contract_received_locations] ([ContractReceivedLocationID], [ContractReceivedLocationDesc], [CreatedBy], [CreateDate], [UpdatedBy], [UpdatedDate], [Status]) VALUES (2, N'At the Airport', 2, CAST(0x0000A50E00F5F2DC AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_contract_received_locations] ([ContractReceivedLocationID], [ContractReceivedLocationDesc], [CreatedBy], [CreateDate], [UpdatedBy], [UpdatedDate], [Status]) VALUES (3, N'Upto 2 days before departure', 2, CAST(0x0000A50E00F5FDA3 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_contract_received_locations] ([ContractReceivedLocationID], [ContractReceivedLocationDesc], [CreatedBy], [CreateDate], [UpdatedBy], [UpdatedDate], [Status]) VALUES (4, N'3 days to one week before departure', 2, CAST(0x0000A50E00F60722 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[tbl_contract_received_locations] ([ContractReceivedLocationID], [ContractReceivedLocationDesc], [CreatedBy], [CreateDate], [UpdatedBy], [UpdatedDate], [Status]) VALUES (5, N'More than one week before departure', 2, CAST(0x0000A50E00F611B2 AS DateTime), NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tbl_contract_received_locations] OFF
/****** Object:  Default [DF_tbl_contract_received_locations_CreateDate]    Script Date: 10/02/2015 13:14:34 ******/
ALTER TABLE [dbo].[tbl_contract_received_locations] ADD  CONSTRAINT [DF_tbl_contract_received_locations_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_tbl_contract_received_locations_Status]    Script Date: 10/02/2015 13:14:34 ******/
ALTER TABLE [dbo].[tbl_contract_received_locations] ADD  CONSTRAINT [DF_tbl_contract_received_locations_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_tbl_departure_routes_CreatedDate]    Script Date: 10/02/2015 13:14:34 ******/
ALTER TABLE [dbo].[tbl_departure_routes] ADD  CONSTRAINT [DF_tbl_departure_routes_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_tbl_departure_route_Status]    Script Date: 10/02/2015 13:14:34 ******/
ALTER TABLE [dbo].[tbl_departure_routes] ADD  CONSTRAINT [DF_tbl_departure_route_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Table_2_CreatedAte]    Script Date: 10/02/2015 13:14:34 ******/
ALTER TABLE [dbo].[tbl_pre_departure_cost_ranges] ADD  CONSTRAINT [DF_Table_2_CreatedAte]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_tbl_pre_departure_cost_ranges_Status]    Script Date: 10/02/2015 13:14:34 ******/
ALTER TABLE [dbo].[tbl_pre_departure_cost_ranges] ADD  CONSTRAINT [DF_tbl_pre_departure_cost_ranges_Status]  DEFAULT ((1)) FOR [Status]
GO

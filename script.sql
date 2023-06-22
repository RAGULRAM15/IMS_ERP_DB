USE [QUOTATION]
GO
/****** Object:  Table [dbo].[M_BANK]    Script Date: 6/22/2023 11:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_BANK](
	[BANK_ID] [int] IDENTITY(1,1) NOT NULL,
	[BANK] [varchar](50) NOT NULL,
	[ACCOUNT_NO] [varchar](50) NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CITY]    Script Date: 6/22/2023 11:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CITY](
	[CITY_ID] [int] IDENTITY(1,1) NOT NULL,
	[CITY] [varchar](50) NOT NULL,
	[CITY_CODE] [varchar](50) NULL,
	[DISTRICT_ID] [int] NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_COMPANY]    Script Date: 6/22/2023 11:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_COMPANY](
	[COMPANY_ID] [int] IDENTITY(1,1) NOT NULL,
	[COMPANY_NAME] [varchar](50) NOT NULL,
	[ADDRESS] [varchar](100) NULL,
	[CITY_ID] [int] NULL,
	[DISTRICT_ID] [int] NULL,
	[STATE_ID] [int] NULL,
	[COUNTRY_ID] [int] NULL,
	[PINCODE] [varchar](50) NULL,
	[PHONE] [varchar](50) NULL,
	[MOBILE] [int] NULL,
	[E_MAIL] [varchar](50) NULL,
	[WEBSITE] [varchar](50) NULL,
	[GSTIN] [varchar](50) NULL,
	[GST_STATE_CODE] [varchar](50) NULL,
	[TIN] [varchar](50) NULL,
	[PAN] [varchar](50) NULL,
	[CST] [varchar](50) NULL,
	[CST_DATE] [varchar](50) NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_COUNTRY]    Script Date: 6/22/2023 11:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_COUNTRY](
	[COUNTRY_ID] [int] IDENTITY(1,1) NOT NULL,
	[COUNTRY] [varchar](50) NOT NULL,
	[COUNTRY_CODE] [varchar](50) NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_CUSTOMER]    Script Date: 6/22/2023 11:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_CUSTOMER](
	[CUSTOMER_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CUSTOMER_TITLE] [varchar](25) NULL,
	[CUSTOMER_NAME] [varchar](50) NOT NULL,
	[ADDRESS_1] [varchar](100) NULL,
	[CITY_ID] [int] NULL,
	[DISTRICT_ID] [int] NULL,
	[STATE_ID] [int] NULL,
	[COUNTRY_ID] [int] NULL,
	[POSTAL_CODE] [varchar](10) NULL,
	[PHONE_NO] [varchar](50) NULL,
	[MOBILE_NO] [varchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
	[WEBSITE] [varchar](50) NULL,
	[GST_NO] [varchar](25) NULL,
	[GST_STATE_CODE] [varchar](20) NULL,
	[TIN] [varchar](25) NULL,
	[PAN] [varchar](25) NULL,
	[CST] [varchar](25) NULL,
	[CST_DATE] [varchar](25) NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_DISTRICT]    Script Date: 6/22/2023 11:44:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_DISTRICT](
	[DISTRICT_ID] [int] IDENTITY(1,1) NOT NULL,
	[DISTRICT] [varchar](50) NOT NULL,
	[DISTRICT_CODE] [varchar](50) NULL,
	[STATE_ID] [int] NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ENTRY]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ENTRY](
	[ENTRY_ID] [int] IDENTITY(1,1) NOT NULL,
	[ENTRY_NAME] [varchar](15) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ENTRY_SETUP]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ENTRY_SETUP](
	[ENTRY_SETUP_ID] [int] IDENTITY(1,1) NOT NULL,
	[FY_YEAR_ID] [int] NOT NULL,
	[COMPANY_ID] [int] NOT NULL,
	[ENTRY_ID] [int] NOT NULL,
	[PREFIIX] [varchar](15) NOT NULL,
	[RESET_BY] [varchar](15) NOT NULL,
	[LAST_NO] [int] NOT NULL,
	[SUFFIX] [int] NOT NULL,
	[ACTIVE] [int] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_FY_YEAR]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_FY_YEAR](
	[FY_YEAR_ID] [int] IDENTITY(1,1) NOT NULL,
	[FY_YEAR] [varchar](25) NOT NULL,
	[FROM_DATE] [varchar](25) NOT NULL,
	[TO_DATE] [varchar](25) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ITEM]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_ITEM](
	[ITEM_ID] [int] IDENTITY(1,1) NOT NULL,
	[SIZE_ID] [varchar](50) NOT NULL,
	[ITEM_NAME] [varchar](15) NOT NULL,
	[HSN_CODE] [varchar](10) NOT NULL,
	[CGST] [float] NOT NULL,
	[SGST] [float] NOT NULL,
	[IGST] [float] NOT NULL,
	[SIZE] [varchar](50) NULL,
	[ACTIVE] [int] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PAY]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_PAY](
	[PAY_MODE_ID] [int] IDENTITY(1,1) NOT NULL,
	[PAY_MODE] [varchar](15) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_SIZE]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_SIZE](
	[SIZE_ID] [varchar](50) NOT NULL,
	[SIZE_NAME] [varchar](50) NOT NULL,
	[ACTIVE] [int] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_STATE]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_STATE](
	[STATE_ID] [int] IDENTITY(1,1) NOT NULL,
	[STATE] [varchar](50) NOT NULL,
	[STATE_CODE] [varchar](10) NULL,
	[COUNTRY_ID] [int] NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_TAX]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_TAX](
	[TAX_ID] [int] IDENTITY(1,1) NOT NULL,
	[TAX] [varchar](50) NOT NULL,
	[PERCENTAGE] [float] NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_USER_MANAGEMENT]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_USER_MANAGEMENT](
	[USER_ID] [int] IDENTITY(1,1) NOT NULL,
	[USER] [varchar](15) NOT NULL,
	[USER_NAME] [varchar](15) NULL,
	[PASSWORD] [varchar](15) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_INVOICE]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_INVOICE](
	[INVOICE_ID] [int] IDENTITY(1,1) NOT NULL,
	[INVOICE_NO] [varchar](15) NOT NULL,
	[INVOICE_DATE] [datetime] NOT NULL,
	[DISCOUNT] [numeric](5, 2) NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[SUB_TOTAL] [numeric](12, 2) NOT NULL,
	[COMPANY_ID] [int] NOT NULL,
	[CUSTOMER_ID] [int] NOT NULL,
	[USER_NAME] [varchar](15) NOT NULL,
	[CGST] [numeric](5, 2) NULL,
	[SGST] [numeric](5, 2) NULL,
	[IGST] [numeric](5, 2) NULL,
	[NET_AMOUNT] [numeric](12, 2) NOT NULL,
	[TRANSPORTS] [numeric](5, 2) NULL,
	[LOADING] [numeric](5, 2) NULL,
	[STATUS] [varchar](25) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL,
	[APPROVAL_CHECK] [bit] NULL,
	[SALES_ORDER_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_INVOICE_APPROVAL]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_INVOICE_APPROVAL](
	[APPROVAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[APPROVAL] [bit] NOT NULL,
	[CUSTOMER_ID] [int] NOT NULL,
	[COMPANY_ID] [int] NOT NULL,
	[INVOICE_NO] [varchar](15) NOT NULL,
	[INVOICE_DATE] [datetime] NOT NULL,
	[NET_AMOUNT] [numeric](9, 2) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[DELETED] [bit] NULL,
	[APPROVAL_CHECK] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_INVOICE_ITEM]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_INVOICE_ITEM](
	[INVOICE_ID] [int] IDENTITY(1,1) NOT NULL,
	[INVOICE_NO] [varchar](25) NOT NULL,
	[ROW_ID] [int] NOT NULL,
	[ITEM_ID] [int] NOT NULL,
	[SIZE_ID] [int] NOT NULL,
	[STYLE_NAME] [varchar](50) NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[RATE] [numeric](5, 2) NOT NULL,
	[TOTAL] [numeric](12, 2) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PAID_ITEM]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PAID_ITEM](
	[PAYMENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PAYMENT_NO] [varchar](15) NOT NULL,
	[PAY_MODE] [int] NOT NULL,
	[REF_NO] [varchar](15) NOT NULL,
	[REF_DATE] [varchar](25) NOT NULL,
	[BANK] [int] NULL,
	[AMOUNT] [numeric](12, 2) NOT NULL,
	[RECEIVED_BY] [varchar](25) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PAYMENT_CREDIT_NOTE]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PAYMENT_CREDIT_NOTE](
	[PAYMENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PAYMENT_NO] [varchar](15) NOT NULL,
	[ITEM_ID] [int] NOT NULL,
	[SIZE_ID] [int] NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[RATE] [numeric](5, 2) NOT NULL,
	[TOTAL] [numeric](12, 2) NOT NULL,
	[CGST] [numeric](5, 2) NOT NULL,
	[SGST] [numeric](5, 2) NOT NULL,
	[IGST] [numeric](5, 2) NOT NULL,
	[RECEIVED_BY] [varchar](15) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PAYMENT_ITEM]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PAYMENT_ITEM](
	[PAYMENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PAYMENT_NO] [varchar](15) NOT NULL,
	[INVOICE_NO] [varchar](15) NOT NULL,
	[INVOICE_DATE] [varchar](25) NOT NULL,
	[PAID] [numeric](10, 2) NOT NULL,
	[BALANCE] [numeric](12, 2) NOT NULL,
	[NET_AMOUNT] [numeric](12, 2) NOT NULL,
	[PAYMENT] [numeric](12, 2) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PAYMENT_MAIN]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PAYMENT_MAIN](
	[PAYMENT_ID] [int] IDENTITY(1,1) NOT NULL,
	[PAYMENT_NO] [varchar](15) NOT NULL,
	[PAYMENT_DATE] [datetime] NOT NULL,
	[PAID] [numeric](10, 2) NOT NULL,
	[BALANCE] [numeric](12, 2) NOT NULL,
	[AMOUNT] [numeric](12, 2) NOT NULL,
	[PAYMENT] [numeric](12, 2) NOT NULL,
	[CREDIT_NOTE] [numeric](12, 2) NULL,
	[RECEIVED_BY] [varchar](25) NOT NULL,
	[COMPANY_ID] [int] NULL,
	[CUSTOMER_ID] [int] NOT NULL,
	[STATUS] [varchar](15) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_QUOTATION]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_QUOTATION](
	[QUOTATION_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[QUOTATION_NO] [varchar](15) NOT NULL,
	[QUOTATION_DATE] [datetime] NOT NULL,
	[DISCOUNT] [numeric](5, 2) NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[TOTAL] [numeric](12, 2) NOT NULL,
	[COMPANY_ID] [int] NOT NULL,
	[CUSTOMER_ID] [int] NOT NULL,
	[USER_NAME] [varchar](25) NOT NULL,
	[STATUS] [varchar](25) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL,
 CONSTRAINT [PK_T_QUOTATION] PRIMARY KEY CLUSTERED 
(
	[QUOTATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_QUOTATION_ITEM]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_QUOTATION_ITEM](
	[QUOTATION_ROW_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[QUOTATION_ID] [int] NULL,
	[QUOTATION_NO] [varchar](15) NOT NULL,
	[ROW_ID] [int] NOT NULL,
	[ITEM_ID] [int] NOT NULL,
	[SIZE_ID] [int] NOT NULL,
	[STYLE_NAME] [varchar](50) NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[RATE] [numeric](7, 2) NOT NULL,
	[DISCOUNT] [numeric](5, 2) NOT NULL,
	[TOTAL] [numeric](12, 2) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL,
	[IS_ADD] [int] NULL,
	[IS_UPDATE] [int] NULL,
 CONSTRAINT [PK_T_QUOTATION_ITEM] PRIMARY KEY CLUSTERED 
(
	[QUOTATION_ROW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SALES_ORDER]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SALES_ORDER](
	[SALES_ORDER_ID] [int] IDENTITY(1,1) NOT NULL,
	[SALES_ORDER_NO] [varchar](15) NOT NULL,
	[SALES_ORDER_DATE] [datetime] NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[DISCOUNT] [numeric](5, 2) NOT NULL,
	[SUB_TOTAL] [numeric](12, 2) NOT NULL,
	[BALANCE_QUANTITY] [int] NULL,
	[BALANCE_AMOUNT] [int] NULL,
	[COMPANY_ID] [int] NULL,
	[CUSTOMER_ID] [int] NOT NULL,
	[USER_NAME] [varchar](15) NOT NULL,
	[CGST] [numeric](5, 2) NULL,
	[SGST] [numeric](5, 2) NULL,
	[IGST] [numeric](5, 2) NULL,
	[NET_AMOUNT] [numeric](12, 2) NOT NULL,
	[TRANSPORTS] [numeric](5, 2) NULL,
	[LOADING] [numeric](5, 2) NULL,
	[STATUS] [varchar](15) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL,
	[SALES_ORDER_FILTER] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_SALES_ORDER_ITEM]    Script Date: 6/22/2023 11:44:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SALES_ORDER_ITEM](
	[SALES_ORDER_ID] [int] IDENTITY(1,1) NOT NULL,
	[SALES_ORDER_NO] [varchar](15) NOT NULL,
	[ROW_ID] [int] NOT NULL,
	[ITEM_ID] [int] NOT NULL,
	[SIZE_ID] [int] NOT NULL,
	[STYLE_NAME] [varchar](15) NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[RATE] [numeric](5, 2) NOT NULL,
	[TOTAL] [numeric](12, 2) NOT NULL,
	[BALANCE_QUANTITY] [int] NULL,
	[BALANCE_TOTAL] [numeric](12, 2) NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[M_BANK] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_CITY] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_COMPANY] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_COUNTRY] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_CUSTOMER] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_DISTRICT] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_ENTRY] ADD  CONSTRAINT [DF__M_ENTRY__CREATED__414EAC47]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_ENTRY_SETUP] ADD  CONSTRAINT [DF__M_ENTRY_S__CREAT__19FFD4FC]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_FY_YEAR] ADD  CONSTRAINT [DF__M_FY_YEAR__CREAT__116A8EFB]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_ITEM] ADD  CONSTRAINT [DF__M_ITEM__CREATED___6462DE5A]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_SIZE] ADD  CONSTRAINT [DF__M_SIZE__CREATED___1940BAED]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_STATE] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_USER_MANAGEMENT] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_INVOICE] ADD  CONSTRAINT [DF__T_INVOICE__CREAT__1EC48A19]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_INVOICE_APPROVAL] ADD  CONSTRAINT [DF__T_INVOICE__CREAT__52442E1F]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_INVOICE_ITEM] ADD  CONSTRAINT [DF__T_INVOICE__CREAT__20ACD28B]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_PAID_ITEM] ADD  CONSTRAINT [DF__T_PAID_IT__CREAT__31A25463]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_PAYMENT_CREDIT_NOTE] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_PAYMENT_ITEM] ADD  CONSTRAINT [DF__T_PAYMENT__CREAT__2FBA0BF1]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_PAYMENT_MAIN] ADD  CONSTRAINT [DF__T_PAYMENT__CREAT__2DD1C37F]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_QUOTATION] ADD  CONSTRAINT [DF__T_QUOTATI__CREAT__31D75E8D]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_QUOTATION_ITEM] ADD  CONSTRAINT [DF__T_QUOTATI__CREAT__2FEF161B]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_SALES_ORDER] ADD  CONSTRAINT [DF__T_SALES_O__CREAT__290D0E62]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_SALES_ORDER_ITEM] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO

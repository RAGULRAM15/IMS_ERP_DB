USE [IMS]
GO
/****** Object:  Table [dbo].[M_COMPANY]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_COUNTRY]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_DISTRICT]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_CITY]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_STATE]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  View [dbo].[M_COMPANY_VIEW]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[M_COMPANY_VIEW] AS 
SELECT  COMPANY_ID,COMPANY_NAME,ADDRESS,CITY,DISTRICT,STATE,COUNTRY,PINCODE,PHONE,MOBILE ,E_MAIL ,WEBSITE,GSTIN ,GST_STATE_CODE 	FROM M_COMPANY AS MC
INNER JOIN M_CITY  ON MC.CITY_ID =  M_CITY.CITY_ID
INNER JOIN M_DISTRICT ON MC.DISTRICT_ID = M_DISTRICT.DISTRICT_ID
INNER JOIN M_STATE ON MC.STATE_ID = M_STATE.STATE_ID
INNER JOIN M_COUNTRY ON MC.COUNTRY_ID = M_COUNTRY.COUNTRY_ID

GO
/****** Object:  Table [dbo].[M_CUSTOMER]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  View [dbo].[M_CUSTOMER_VIEW]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[M_CUSTOMER_VIEW] AS 
SELECT  CUSTOMER_ID,CUSTOMER_TITLE,CUSTOMER_NAME,ADDRESS_1,CITY,DISTRICT,STATE,COUNTRY,POSTAL_CODE,PHONE_NO,MOBILE_NO,EMAIL,WEBSITE,GST_NO,	GST_STATE_CODE 	FROM M_CUSTOMER AS MC
INNER JOIN M_CITY  ON MC.CITY_ID =  M_CITY.CITY_ID
INNER JOIN M_DISTRICT ON MC.DISTRICT_ID = M_DISTRICT.DISTRICT_ID
INNER JOIN M_STATE ON MC.STATE_ID = M_STATE.STATE_ID
INNER JOIN M_COUNTRY ON MC.COUNTRY_ID = M_COUNTRY.COUNTRY_ID

GO
/****** Object:  Table [dbo].[T_QUOTATION]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_QUOTATION](
	[QUOTATION_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[QUOTATION_NO] [varchar](15) NOT NULL,
	[QUOTATION_DATE] [date] NOT NULL,
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
/****** Object:  View [dbo].[T_QUOTATION_REPORT]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
            
CREATE VIEW [dbo].[T_QUOTATION_REPORT] AS
SELECT QUOTATION_DATE,QUOTATION_NO,DISCOUNT,TOTAL,CUSTOMER_NAME,QUANTITY,USER_NAME,T_QUOTATION.CUSTOMER_ID FROM T_QUOTATION
INNER JOIN M_CUSTOMER ON M_CUSTOMER.CUSTOMER_ID = T_QUOTATION.CUSTOMER_ID
GO
/****** Object:  Table [dbo].[T_INVOICE]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  View [dbo].[T_INVOICE_REPORT]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_INVOICE_REPORT]
AS
SELECT        dbo.T_INVOICE.INVOICE_NO, dbo.T_INVOICE.INVOICE_DATE, dbo.T_INVOICE.DISCOUNT, dbo.T_INVOICE.QUANTITY, dbo.T_INVOICE.SUB_TOTAL, dbo.M_CUSTOMER.CUSTOMER_NAME, dbo.T_INVOICE.TRANSPORTS, 
                         dbo.T_INVOICE.LOADING, dbo.T_INVOICE.USER_NAME, dbo.T_INVOICE.CGST, dbo.T_INVOICE.SGST, dbo.T_INVOICE.IGST, dbo.T_INVOICE.NET_AMOUNT, dbo.T_INVOICE.CUSTOMER_ID, dbo.T_INVOICE.COMPANY_ID, 
                         dbo.T_INVOICE.APPROVAL_CHECK
FROM            dbo.T_INVOICE INNER JOIN
                         dbo.M_CUSTOMER ON dbo.M_CUSTOMER.CUSTOMER_ID = dbo.T_INVOICE.CUSTOMER_ID
GO
/****** Object:  Table [dbo].[T_INVOICE_ITEM]    Script Date: 7/1/2023 8:44:44 PM ******/
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
	[BALANCE_QUANTITY] [int] NOT NULL,
	[RATE] [numeric](5, 2) NOT NULL,
	[TOTAL] [numeric](12, 2) NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[SALES_ORDER_ITEM_ID] [int] NULL,
	[DELETED_QUANTITY] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_ITEM]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_SIZE]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  View [dbo].[T_INVOICE_ITEM_REPORT]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_INVOICE_ITEM_REPORT] 
AS
SELECT        dbo.T_INVOICE_ITEM.INVOICE_NO, dbo.T_INVOICE_ITEM.ROW_ID, dbo.M_ITEM.ITEM_NAME, dbo.M_SIZE.SIZE_NAME, dbo.T_INVOICE_ITEM.STYLE_NAME, dbo.T_INVOICE_ITEM.BALANCE_QUANTITY, 
                         dbo.T_INVOICE_ITEM.RATE, dbo.T_INVOICE_ITEM.TOTAL, dbo.T_INVOICE_ITEM.ITEM_ID, dbo.T_INVOICE_ITEM.SIZE_ID
FROM            dbo.T_INVOICE_ITEM INNER JOIN
                         dbo.M_ITEM ON dbo.M_ITEM.ITEM_ID = dbo.T_INVOICE_ITEM.ITEM_ID INNER JOIN
                         dbo.M_SIZE ON dbo.M_SIZE.SIZE_ID = dbo.T_INVOICE_ITEM.SIZE_ID


		
GO
/****** Object:  Table [dbo].[T_QUOTATION_ITEM]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  View [dbo].[T_QUOTATOIN_ITEM_REPORT]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[T_QUOTATOIN_ITEM_REPORT] AS
SELECT QUOTATION_ROW_ID,QUOTATION_NO, ROW_ID,M_ITEM.ITEM_NAME,M_SIZE.SIZE_NAME,STYLE_NAME,QUANTITY,RATE,DISCOUNT,TOTAL,QI.ITEM_ID,QI.SIZE_ID FROM T_QUOTATION_ITEM AS QI
 INNER JOIN M_ITEM ON M_ITEM.ITEM_ID = QI.ITEM_ID 
 INNER JOIN  M_SIZE ON M_SIZE.SIZE_ID = QI.SIZE_ID 
GO
/****** Object:  Table [dbo].[F_LOGIN]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_LOGIN](
	[LOGIN_ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_NAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](50) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[F_LOGIN_PASS]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_LOGIN_PASS](
	[LOGIN_ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_NAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](50) NOT NULL,
	[ACTIVE] [int] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[F_YEAR]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[F_YEAR](
	[F_YEAR_ID] [int] IDENTITY(1,1) NOT NULL,
	[YEAR] [varchar](50) NOT NULL,
	[COMPANY] [varchar](50) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_BANK]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_ENTRY]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_ENTRY_SETUP]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_FY_YEAR]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_IMAGE]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_IMAGE](
	[IMAGE_ID] [int] IDENTITY(1,1) NOT NULL,
	[IMAGE] [image] NOT NULL,
	[USER] [varchar](50) NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_PAY]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_TAX]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[M_USER_MANAGEMENT]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[T_INVOICE_APPROVAL]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[T_INVOICE_UNAPPROVAL]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_INVOICE_UNAPPROVAL](
	[UNAPPROVAL_ID] [int] IDENTITY(1,1) NOT NULL,
	[UNAPPROVAL] [bit] NOT NULL,
	[CUSTOMER_ID] [int] NOT NULL,
	[INVOICE_NO] [varchar](15) NOT NULL,
	[INVOICE_DATE] [varchar](25) NOT NULL,
	[NET_AMOUNT] [numeric](9, 2) NOT NULL,
	[ACTIVE] [bit] NOT NULL,
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[DELETED] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_PAID_ITEM]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[T_PAYMENT_CREDIT_NOTE]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[T_PAYMENT_ITEM]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[T_PAYMENT_MAIN]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[T_SALES_ORDER]    Script Date: 7/1/2023 8:44:44 PM ******/
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
/****** Object:  Table [dbo].[T_SALES_ORDER_ITEM]    Script Date: 7/1/2023 8:44:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SALES_ORDER_ITEM](
	[SALES_ORDER_ITEM_ID] [int] IDENTITY(1,1) NOT NULL,
	[SALES_ORDER_NO] [varchar](15) NOT NULL,
	[ROW_ID] [int] NOT NULL,
	[ITEM_ID] [int] NOT NULL,
	[SIZE_ID] [int] NOT NULL,
	[STYLE_NAME] [varchar](15) NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[RATE] [numeric](5, 2) NOT NULL,
	[TOTAL] [numeric](12, 2) NOT NULL,
	[INV_QUANTITY] [int] NULL,
	[QUANTITY_BALANCE]  AS ([QUANTITY]-isnull([INV_QUANTITY],(0))),
	[CREATED_BY] [int] NULL,
	[CREATED_ON] [datetime] NOT NULL,
	[UPDATED_BY] [int] NULL,
	[UPDATED_ON] [datetime] NULL,
	[ACTIVE] [bit] NOT NULL,
	[DELETED] [bit] NULL,
	[CANCEL_QUANTITY] [int] NULL,
	[BALANCE_QUANTITY]  AS (([QUANTITY]-isnull([INV_QUANTITY],(0)))+isnull([CANCEL_QUANTITY],(0))),
	[DELETE_QUANTITY] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[F_LOGIN] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[F_LOGIN_PASS] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
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
ALTER TABLE [dbo].[M_IMAGE] ADD  CONSTRAINT [DF__M_IMAGE__CREATED__30792600]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_ITEM] ADD  CONSTRAINT [DF__M_ITEM__CREATED___6462DE5A]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_SIZE] ADD  CONSTRAINT [DF__M_SIZE__CREATED___1940BAED]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_STATE] ADD  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[M_USER_MANAGEMENT] ADD  CONSTRAINT [DF__M_USER_MA__CREAT__7775B2CE]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_INVOICE] ADD  CONSTRAINT [DF__T_INVOICE__CREAT__1EC48A19]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_INVOICE_APPROVAL] ADD  CONSTRAINT [DF__T_INVOICE__CREAT__52442E1F]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_INVOICE_ITEM] ADD  CONSTRAINT [DF__T_INVOICE__CREAT__20ACD28B]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
ALTER TABLE [dbo].[T_INVOICE_UNAPPROVAL] ADD  CONSTRAINT [DF__T_INVOICE__CREAT__542C7691]  DEFAULT (getdate()) FOR [CREATED_ON]
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
ALTER TABLE [dbo].[T_SALES_ORDER_ITEM] ADD  CONSTRAINT [DF__T_SALES_O__CREAT__2AF556D4]  DEFAULT (getdate()) FOR [CREATED_ON]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "T_INVOICE"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "M_CUSTOMER"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 136
               Right = 456
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'T_INVOICE_REPORT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'T_INVOICE_REPORT'
GO

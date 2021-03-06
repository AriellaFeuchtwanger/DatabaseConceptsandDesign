create database PREMIERE
GO

USE [PREMIERE]
GO
/****** Object:  Table [dbo].[SALESREP]    Script Date: 10/27/2013 11:35:50 ******/

CREATE TABLE [dbo].[SALESREP](
	[REP_NUM] [nchar](10) NOT NULL,
	[REP_LNAME] [nchar](15) NOT NULL,
	[REP_FNAME] [nchar](15) NOT NULL,
	[REP_STREET] [nchar](20) NOT NULL,
	[REP_CITY] [nchar](10) NOT NULL,
	[REP_STATE] [nchar](10) NOT NULL,
	[REP_ZIP] [nchar](10) NOT NULL,
	[COMMISSION] [smallmoney] NOT NULL,
	[RATE] [real] NOT NULL,
 CONSTRAINT [PK_SALESREP] PRIMARY KEY (	[REP_NUM] ASC),
 CONSTRAINT [CK_RATE] CHECK  ([RATE]>=0)
)

GO
INSERT [dbo].[SALESREP] ([REP_NUM], [REP_LNAME], [REP_FNAME], [REP_STREET], [REP_CITY], [REP_STATE], [REP_ZIP], [COMMISSION], [RATE]) VALUES (N'100       ', N'Plonczak       ', N'M              ', N'1602 Ave J          ', N'Brooklyn  ', N'NY        ', N'11230     ', 20000.0000, 0.03)
INSERT [dbo].[SALESREP] ([REP_NUM], [REP_LNAME], [REP_FNAME], [REP_STREET], [REP_CITY], [REP_STATE], [REP_ZIP], [COMMISSION], [RATE]) VALUES (N'20        ', N'Kaiser         ', N'Valerie        ', N'624 Randall         ', N'Grove     ', N'FL        ', N'33321     ', 20542.5000, 0.05)
INSERT [dbo].[SALESREP] ([REP_NUM], [REP_LNAME], [REP_FNAME], [REP_STREET], [REP_CITY], [REP_STATE], [REP_ZIP], [COMMISSION], [RATE]) VALUES (N'35        ', N'Hull           ', N'Richard        ', N'532 Jackson         ', N'Sheldon   ', N'FL        ', N'33553     ', 39216.0000, 0.07)
INSERT [dbo].[SALESREP] ([REP_NUM], [REP_LNAME], [REP_FNAME], [REP_STREET], [REP_CITY], [REP_STATE], [REP_ZIP], [COMMISSION], [RATE]) VALUES (N'65        ', N'Perez          ', N'Juan           ', N'1626 Taylor         ', N'Fillmore  ', N'FL        ', N'33336     ', 23487.0000, 0.05)
INSERT [dbo].[SALESREP] ([REP_NUM], [REP_LNAME], [REP_FNAME], [REP_STREET], [REP_CITY], [REP_STATE], [REP_ZIP], [COMMISSION], [RATE]) VALUES (N'99        ', N'Student        ', N'Touro          ', N'1401 Kings HWY      ', N'Brooklyn  ', N'NY        ', N'11229     ', 20000.0000, 0.02)
/****** Object:  Table [dbo].[PART]    Script Date: 10/27/2013 11:35:50 ******/

GO

CREATE TABLE [dbo].[PART](
	[PART_NUM] [nchar](10) NOT NULL,
	[PART_DESCRIPTION] [nchar](30) NOT NULL,
	[UNITS_ON_HAND] [smallint] NOT NULL,
	[CATEGORY] [nchar](2) NOT NULL,
	[WAREHOUSE] [smallint] NOT NULL,
	[PRICE] [smallmoney] NOT NULL,
 CONSTRAINT [PK_PART_1] PRIMARY KEY (	[PART_NUM] ASC)
	)
GO
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'AT94      ', N'Iron                          ', 44, N'HW', 3, 23.7025)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'BV06      ', N'Home Gym                      ', 45, N'SG', 2, 755.2025)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'CD52      ', N'Microwave Oven                ', 32, N'AP', 1, 156.7500)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'DL71      ', N'Cordless Drill                ', 21, N'HW', 3, 123.4525)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'DR93      ', N'Gas Range                     ', 3, N'AP', 2, 470.2500)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'DW11      ', N'Washer                        ', 10, N'AP', 3, 379.9905)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'FD21      ', N'Stand Mixer                   ', 22, N'HW', 3, 151.9525)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'KL62      ', N'Dryer                         ', 12, N'AP', 1, 332.4525)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'KT03      ', N'Dishwasher                    ', 8, N'AP', 3, 565.2500)
INSERT [dbo].[PART] ([PART_NUM], [PART_DESCRIPTION], [UNITS_ON_HAND], [CATEGORY], [WAREHOUSE], [PRICE]) VALUES (N'KV29      ', N'Treadmill                     ', 7, N'SG', 2, 1320.5000)
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 10/27/2013 11:35:50 ******/

GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EMP_Num] [int] NOT NULL,
	[HIRE_Date] [date] NOT NULL,
 CONSTRAINT [PK_EMP] PRIMARY KEY (	[EMP_Num] ASC)
)
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 10/27/2013 11:35:50 ******/

GO
CREATE TABLE [dbo].[CUSTOMER](
	[CUST_NUM] [nchar](10) NOT NULL,
	[CUST_NAME] [nchar](40) NOT NULL,
	[CUST_STREET] [nchar](30) NOT NULL,
	[CUST_CITY] [nchar](25) NOT NULL,
	[CUST_STATE] [nchar](10) NOT NULL,
	[CUST_ZIP] [nchar](10) NOT NULL,
	[CUST_BALANCE] [smallmoney] NOT NULL,
	[CREDIT_LIMIT] [real] NOT NULL,
	[REP_NUM] [nchar](10) NOT NULL
	CONSTRAINT [FK_CUSTOMER_SALESREP] FOREIGN KEY([REP_NUM])REFERENCES [dbo].[SALESREP] ([REP_NUM]),
	[PHONE] [char](10) NULL,
	[BEGIN_DATE] [smalldatetime] NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY(	[CUST_NUM] ASC),
 CONSTRAINT [CK_creditlimit] CHECK  (([cust_balance]<=[credit_limit]))
 
 
)
GO

INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'148       ', N'AI''s Appliance and Sport                ', N'2837 Greenway                 ', N'Fillmore                 ', N'FL        ', N'33336     ', 6550.0000, 7500, N'20        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'282       ', N'Brookings Direct                        ', N'3827 Devon                    ', N'Grove                    ', N'FL        ', N'33321     ', 431.5000, 10000, N'35        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'356       ', N'Ferguson''s                              ', N'382 Wildwood                  ', N'Northfield               ', N'FL        ', N'33146     ', 5785.0000, 7500, N'65        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'408       ', N'The Everything Shop                     ', N'1828 Raven                    ', N'Crystal                  ', N'FL        ', N'33503     ', 4500.0000, 5000, N'35        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'462       ', N'Bargains Galore                         ', N'3829 Central                  ', N'Grove                    ', N'FL        ', N'33321     ', 3412.0000, 10000, N'65        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'524       ', N'Kline''s                                 ', N'838 Ridgeland                 ', N'Fillmore                 ', N'FL        ', N'33336     ', 12762.0000, 15000, N'20        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'608       ', N'Johnson''s Department Store              ', N'372 Oxford                    ', N'Sheldon                  ', N'FL        ', N'33553     ', 2106.0000, 10000, N'65        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'687       ', N'Lee''s Sport and Appliance               ', N'282 Evergreen                 ', N'Altonville               ', N'FL        ', N'32543     ', 2851.0000, 5000, N'35        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'725       ', N'Deerfield''s Four Seasons                ', N'282 Columbia                  ', N'Sheldon                  ', N'FL        ', N'33553     ', 248.0000, 7500, N'35        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'842       ', N'All Season                              ', N'28 Lakeview                   ', N'Grove                    ', N'FL        ', N'33321     ', 7100.0000, 7500, N'20        ', NULL, NULL)
INSERT [dbo].[CUSTOMER] ([CUST_NUM], [CUST_NAME], [CUST_STREET], [CUST_CITY], [CUST_STATE], [CUST_ZIP], [CUST_BALANCE], [CREDIT_LIMIT], [REP_NUM], [PHONE], [BEGIN_DATE]) VALUES (N'999       ', N'TOURO                                   ', N'1401 KINGS HWY                ', N'BROOKLYN                 ', N'NY        ', N'11229     ', 0.0000, 5000, N'20        ', NULL, CAST(0x9B420000 AS SmallDateTime))
/****** Object:  Table [dbo].[ORDERS]    Script Date: 10/27/2013 11:35:50 ******/

GO
CREATE TABLE [dbo].[ORDERS](
	[ORDER_NUM] [nchar](10) NOT NULL,
	[ORDER_DATE] [smalldatetime] NOT NULL,
	[CUST_NUM] [nchar](10) NOT NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY (	[ORDER_NUM] ASC),
 CONSTRAINT [FK_ORDER_CUSTOMER] FOREIGN KEY([CUST_NUM])REFERENCES [dbo].[CUSTOMER] ([CUST_NUM])
)

GO
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21606     ', CAST(0x99AF0000 AS SmallDateTime), N'148       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21608     ', CAST(0x99CD0000 AS SmallDateTime), N'148       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21610     ', CAST(0x99CD0000 AS SmallDateTime), N'356       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21613     ', CAST(0x99CE0000 AS SmallDateTime), N'408       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21614     ', CAST(0x99CE0000 AS SmallDateTime), N'282       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21617     ', CAST(0x99D00000 AS SmallDateTime), N'608       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21619     ', CAST(0x99D00000 AS SmallDateTime), N'148       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21623     ', CAST(0x99D00000 AS SmallDateTime), N'608       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'21999     ', CAST(0x9D790000 AS SmallDateTime), N'999       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'77777     ', CAST(0xA1400000 AS SmallDateTime), N'148       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'78787     ', CAST(0xA13F0000 AS SmallDateTime), N'148       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'87600     ', CAST(0x9EEF0000 AS SmallDateTime), N'148       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'88888     ', CAST(0xA1300000 AS SmallDateTime), N'148       ')
INSERT [dbo].[ORDERS] ([ORDER_NUM], [ORDER_DATE], [CUST_NUM]) VALUES (N'98765     ', CAST(0x9FB80000 AS SmallDateTime), N'148       ')
/****** Object:  Table [dbo].[ORDER_LINE]    Script Date: 10/27/2013 11:35:50 ******/

GO

CREATE TABLE [dbo].[ORDER_LINE](
	[ORDER_NUM] [nchar](10) NOT NULL,
	[PART_NUM] [nchar](10) NOT NULL
	 CONSTRAINT [FK_ORDER_LINE_PART] FOREIGN KEY([PART_NUM])REFERENCES [dbo].[PART] ([PART_NUM]),
	[QTY_ORDERED] [smallint] NOT NULL,
	[QUOTED_PRICE] [smallmoney] NOT NULL,
	[Subtotal] [smallmoney] NULL,
 CONSTRAINT [PK_ORDER_LINE] PRIMARY KEY (	[ORDER_NUM] ASC,	[PART_NUM] ASC),
 CONSTRAINT [FK_ORDER_LINE_ORDERS] FOREIGN KEY([ORDER_NUM])REFERENCES [dbo].[ORDERS] ([ORDER_NUM])
 
)
GO
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21606     ', N'DR93      ', 3, 495.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21606     ', N'KV29      ', 2, 1290.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21608     ', N'AT94      ', 11, 21.9500, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21610     ', N'DR93      ', 1, 495.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21610     ', N'DW11      ', 1, 399.9900, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21613     ', N'KL62      ', 4, 329.9500, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21614     ', N'KT03      ', 2, 595.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21617     ', N'BV06      ', 2, 794.9500, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21617     ', N'CD52      ', 4, 150.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21619     ', N'AT94      ', 1, 22.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21619     ', N'DR93      ', 1, 495.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21623     ', N'KV29      ', 2, 1290.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21999     ', N'AT94      ', 3, 25.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21999     ', N'DR93      ', 1, 150.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'21999     ', N'DW11      ', 1, 400.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'77777     ', N'AT94      ', 1, 24.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'87600     ', N'AT94      ', 1, 25.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'88888     ', N'AT94      ', 1, 25.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'98765     ', N'DR93      ', 1, 80.0000, NULL)
INSERT [dbo].[ORDER_LINE] ([ORDER_NUM], [PART_NUM], [QTY_ORDERED], [QUOTED_PRICE], [Subtotal]) VALUES (N'98765     ', N'DW11      ', 1, 400.0000, NULL)




GO

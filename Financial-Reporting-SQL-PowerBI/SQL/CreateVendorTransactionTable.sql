USE [PersonalProjects]
GO

/****** Object:  Table [dbo].[VendorTransactions]    Script Date: 8/15/2026 6:02:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VendorTransactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[Buyer Group ID] [varchar](20) NOT NULL,
	[Vendor ID] [varchar](20) NOT NULL,
	[Vendor Name] [varchar](100) NOT NULL,
	[Invoice ID] [varchar](30) NOT NULL,
	[Invoice Date] [date] NOT NULL,
	[Due Date] [date] NOT NULL,
	[Invoice Amount] [decimal](18, 2) NOT NULL,
	[Paid Amount] [decimal](18, 2) NOT NULL,
	[Outstanding Balance]  AS ([Invoice Amount]-[Paid Amount]),
	[Payment Status] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



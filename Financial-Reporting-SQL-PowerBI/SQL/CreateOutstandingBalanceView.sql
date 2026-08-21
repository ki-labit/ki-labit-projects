USE [PersonalProjects]
GO

/****** Object:  View [dbo].[vw_OutstandingBalances]    Script Date: 8/15/2026 6:03:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_OutstandingBalances] AS
SELECT
    [Buyer Group ID],
    [Vendor ID],
    [Vendor Name],
    COUNT(DISTINCT [Invoice ID]) AS InvoiceCount,
    SUM([Invoice Amount]) AS TotalInvoiceAmount,
    SUM([Paid Amount]) AS TotalPaidAmount,
    SUM([Outstanding Balance]) AS OutstandingBalance
FROM VendorTransactions
GROUP BY
    [Buyer Group ID],
    [Vendor ID],
    [Vendor Name];
GO



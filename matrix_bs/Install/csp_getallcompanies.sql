USE [wholesale_ie]
GO
/****** Object:  StoredProcedure [dbo].[csp_getAllCompanies]    Script Date: 2015-06-22 11:02:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<FPE>
-- Create date: <11/11/2013>
-- Description:	<returns all companies in XMl>
-- =============================================
ALTER PROCEDURE [dbo].[csp_getAllCompanies]
		@@lang nvarchar(5),
		@@idcoworker INT	
AS
BEGIN
	-- FLAG_EXTERNALACCESS --
	
		SELECT name,idcompany,registrationno from company where company.[status] = 0
		FOR XML RAW('value'),TYPE, ROOT('companies')	
	
END



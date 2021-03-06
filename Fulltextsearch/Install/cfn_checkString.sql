USE [limebootstrap_aas]
GO
/****** Object:  UserDefinedFunction [dbo].[cfn_checkString]    Script Date: 2015-04-02 10:14:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
ALTER FUNCTION [dbo].[cfn_checkString] 
(
	@searchString  nvarchar(4000)
)
RETURNS bit
AS
BEGIN
	declare @and as nvarchar(10)
	declare @or as nvarchar(10)
	declare @and_char as nvarchar(10)
	declare @return as bit	

	set @and = ' AND '
	set @or = ' OR '
	set @and_char = ' && '	

	if charindex(@and,@searchString) != 0 or charindex(@or,@searchString) != 0 or charindex(@and_char,@searchString) != 0
	begin
		set @return =  1
	end
	else
	begin
		set @return =  0
	end
	return @return
END

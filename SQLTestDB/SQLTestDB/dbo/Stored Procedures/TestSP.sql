-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE TestSP
	-- Add the parameters for the stored procedure here
	@Param1 varchar(100)=NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF(@Param1 IS NOT NULL)
	BEGIN
		SELECT 'Hello, '+@Param1 +'. This is Test Stored Procedure'
	END
	ELSE
		SELECT  'This is Test Stored Procedure'
END

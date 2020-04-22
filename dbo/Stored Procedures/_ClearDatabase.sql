-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[_ClearDatabase]
	AS
BEGIN

	DELETE FROM dbo.Resident
	DELETE FROM dbo.CardiologicalCase
	DELETE FROM dbo.CardiologicalCaseDisease
	DELETE FROM dbo.CardiologicalCaseInvasion
	DELETE FROM dbo.CardiologicalEchoCG
	DELETE FROM dbo.CardiologicalEchoCGVelocity
	DELETE FROM dbo.CardiologicalEchoCGWall

END

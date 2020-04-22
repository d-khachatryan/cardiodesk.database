CREATE VIEW dbo.vwCardiologicalCaseComplian
AS
SELECT     dbo.CardiologicalCaseComplian.CardiologicalCaseComplianId, dbo.CardiologicalCaseComplian.CardiologicalCaseId, dbo.Complian.ComplianName, 
                      dbo.CardiologicalCaseComplian.ComplianId
FROM         dbo.CardiologicalCaseComplian LEFT OUTER JOIN
                      dbo.Complian ON dbo.CardiologicalCaseComplian.ComplianId = dbo.Complian.ComplianId

GO

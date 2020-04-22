CREATE VIEW dbo.vwCardiologicalSurgeryComplication
AS
SELECT     dbo.CardiologicalSurgeryComplication.CardiologicalSurgeryComplicationId, dbo.CardiologicalSurgeryComplication.CardiologicalSurgeryId, dbo.Complication.ComplicationName, 
                      dbo.CardiologicalSurgeryComplication.ComplicationId
FROM         dbo.CardiologicalSurgeryComplication LEFT OUTER JOIN
                      dbo.Complication ON dbo.CardiologicalSurgeryComplication.ComplicationId = dbo.Complication.ComplicationId

GO


CREATE VIEW dbo.vwCardiologicalObjectiveDrug
AS
SELECT     dbo.CardiologicalObjectiveDrug.CardiologicalObjectiveDrugId, dbo.CardiologicalObjectiveDrug.CardiologicalObjectiveId, dbo.CardiologicalObjectiveDrug.DrugId, dbo.Drug.DrugName, 
                      dbo.CardiologicalObjectiveDrug.DrugFrequencyId, dbo.DrugFrequency.DrugFrequencyName, dbo.CardiologicalObjectiveDrug.Duration
FROM         dbo.CardiologicalObjectiveDrug LEFT OUTER JOIN
                      dbo.DrugFrequency ON dbo.CardiologicalObjectiveDrug.DrugFrequencyId = dbo.DrugFrequency.DrugFrequencyId LEFT OUTER JOIN
                      dbo.Drug ON dbo.CardiologicalObjectiveDrug.DrugId = dbo.Drug.DrugId

GO


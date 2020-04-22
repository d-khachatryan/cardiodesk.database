CREATE VIEW dbo.vwCardiologicalPCISegment
AS
SELECT     dbo.CardiologicalPCISegment.CardiologicalPCISegmentId, dbo.CardiologicalPCISegment.CardiologicalPCIId, dbo.CardiologicalPCISegment.StentId, dbo.Stent.StentName, 
                      dbo.CardiologicalPCISegment.SegmentId, dbo.Segment.SegmentName, dbo.CardiologicalPCISegment.LesionTypeId, dbo.LesionType.LesionTypeName, dbo.CardiologicalPCISegment.Restenosis, 
                      dbo.CardiologicalPCISegment.Bifurcation, dbo.CardiologicalPCISegment.TIMIBId, dbo.TIMI.TIMIName AS TimiBName, dbo.CardiologicalPCISegment.TIMIAId, TIMI_1.TIMIName AS TimiAName, 
                      dbo.CardiologicalPCISegment.StenosisPercentage, dbo.CardiologicalPCISegment.StentTypeId, dbo.StentType.StentTypeName, dbo.CardiologicalPCISegment.DirectStent, 
                      dbo.CardiologicalPCISegment.DrugElutionTypeId, dbo.DrugElutionType.DrugElutionTypeName, dbo.CardiologicalPCISegment.StentBallonSize, dbo.CardiologicalPCISegment.Stentlength
FROM         dbo.CardiologicalPCISegment LEFT OUTER JOIN
                      dbo.TIMI AS TIMI_1 ON dbo.CardiologicalPCISegment.TIMIBId = TIMI_1.TIMIId LEFT OUTER JOIN
                      dbo.DrugElutionType ON dbo.CardiologicalPCISegment.DrugElutionTypeId = dbo.DrugElutionType.DrugElutionTypeId LEFT OUTER JOIN
                      dbo.StentType ON dbo.CardiologicalPCISegment.StentTypeId = dbo.StentType.StentTypeId LEFT OUTER JOIN
                      dbo.TIMI ON dbo.CardiologicalPCISegment.TIMIAId = dbo.TIMI.TIMIId LEFT OUTER JOIN
                      dbo.LesionType ON dbo.CardiologicalPCISegment.LesionTypeId = dbo.LesionType.LesionTypeId LEFT OUTER JOIN
                      dbo.Segment ON dbo.CardiologicalPCISegment.SegmentId = dbo.Segment.SegmentId LEFT OUTER JOIN
                      dbo.Stent ON dbo.CardiologicalPCISegment.StentId = dbo.Stent.StentId

GO

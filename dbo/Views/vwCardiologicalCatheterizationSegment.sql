CREATE VIEW dbo.vwCardiologicalCatheterizationSegment
AS
SELECT     dbo.CardiologicalCatheterizationSegment.CardiologicalCatheterizationSegmentId, dbo.CardiologicalCatheterizationSegment.CardiologicalCatheterizationId, dbo.Segment.SegmentName, 
                      dbo.CardiologicalCatheterizationSegment.SegmentId, dbo.CardiologicalCatheterizationSegment.ArterialBypass, dbo.CardiologicalCatheterizationSegment.VenousBypass, 
                      dbo.CardiologicalCatheterizationSegment.StenosisSize
FROM         dbo.CardiologicalCatheterizationSegment LEFT OUTER JOIN
                      dbo.Segment ON dbo.CardiologicalCatheterizationSegment.SegmentId = dbo.Segment.SegmentId

GO

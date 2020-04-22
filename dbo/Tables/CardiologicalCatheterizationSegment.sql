CREATE TABLE [dbo].[CardiologicalCatheterizationSegment] (
    [CardiologicalCatheterizationSegmentId] INT IDENTITY (1, 1) NOT NULL,
    [CardiologicalCatheterizationId]        INT NULL,
    [SegmentId]                             INT NULL,
    [ArterialBypass]                        BIT NULL,
    [VenousBypass]                          BIT NULL,
    [StenosisSize]                          INT NULL,
    CONSTRAINT [PK_CardiologicalCatheterizationSegment] PRIMARY KEY CLUSTERED ([CardiologicalCatheterizationSegmentId] ASC),
    CONSTRAINT [FK_CardiologicalCatheterizationSegment_CardiologicalCatheterization] FOREIGN KEY ([CardiologicalCatheterizationId]) REFERENCES [dbo].[CardiologicalCatheterization] ([CardiologicalCatheterizationId]) ON DELETE CASCADE,
    CONSTRAINT [FK_CardiologicalCatheterizationSegment_Segment] FOREIGN KEY ([SegmentId]) REFERENCES [dbo].[Segment] ([SegmentId])
);


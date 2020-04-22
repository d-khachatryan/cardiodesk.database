CREATE TABLE [dbo].[BloodProduct] (
    [BloodProductId]   INT           IDENTITY (1, 1) NOT NULL,
    [BloodProductName] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([BloodProductId] ASC)
);


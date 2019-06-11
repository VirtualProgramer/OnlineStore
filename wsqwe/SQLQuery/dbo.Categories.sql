CREATE TABLE [dbo].[Categories] (
    [Id]           INT           IDENTITY (1, 1) NOT NULL,
    [CategoryName] NVARCHAR (50) NOT NULL,
    [Description]  NTEXT         NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


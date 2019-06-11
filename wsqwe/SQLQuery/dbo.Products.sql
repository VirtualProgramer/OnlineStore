CREATE TABLE [dbo].[Products] (
    [Id]             INT            IDENTITY (10805, 1) NOT NULL,
    [Name]           NVARCHAR (300) NOT NULL,
    [Price]          INT            NOT NULL,
    [Amount]         INT            NOT NULL,
    [ImageFileName]  NVARCHAR (300) NULL,
    [CategoryID]     INT            NOT NULL,
    [TargetCustomer] INT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Categories] ([Id])
);


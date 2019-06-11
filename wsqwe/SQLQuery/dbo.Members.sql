CREATE TABLE [dbo].[Members] (
    [Id]       INT            IDENTITY (530, 2) NOT NULL,
    [UserName] NVARCHAR (200) NOT NULL,
    [PassWord] NVARCHAR (200) NOT NULL,
    [Email]    NVARCHAR (200) NOT NULL,
    [Phone]    INT            NULL,
    [Gender]   NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


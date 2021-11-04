CREATE TABLE [dbo].[Enterprise] (
    [EnterpriseId] INT IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR(100) NOT NULL,
    [AddressId]    INT   NULL,
    [DateCreated]  DATETIME2 (2) CONSTRAINT [DF_Enterprise_Enterprise_DateCreated] DEFAULT (getdate()) NOT NULL,
    [UserId]       INT   NULL,
    CONSTRAINT [FK_Enterprise_Enterprise_User_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId]),
    CONSTRAINT [PK_Enterprise_Name] PRIMARY KEY CLUSTERED ([EnterpriseId] ASC),
	CONSTRAINT [UQ_Enterprise_Enterprise_Name] UNIQUE([Name])
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents an Enterprise',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Enterprise',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The name of the Enterprise',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Enterprise',
    @level2type = N'COLUMN',
    @level2name = N'Name'


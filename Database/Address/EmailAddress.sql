CREATE TABLE [dbo].[EmailAddress] (
    [EmailAddressId] INT IDENTITY (1, 1) NOT NULL,
	[Value]          VARCHAR(255)  NOT NULL,
    [DateCreated]    DATETIME2 (2) CONSTRAINT [DF_Address_EmailAddress_DateCreated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_EmailAddress] PRIMARY KEY CLUSTERED ([EmailAddressId] ASC),
	CONSTRAINT [UQ_Address_EmailAddress_Value] UNIQUE([Value])
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents an email address',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'EmailAddress',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The value of the email address',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'EmailAddress',
    @level2type = N'COLUMN',
    @level2name = N'Value'

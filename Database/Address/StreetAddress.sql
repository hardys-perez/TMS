CREATE TABLE [dbo].[StreetAddress] (
    [StreetAddressId] INT IDENTITY (1, 1) NOT NULL,
	[Value]           VARCHAR(255)  NOT NULL,
    [DateCreated]     DATETIME2 (2) CONSTRAINT [DF_Address_StreetAddress_DateCreated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_StreetAddress] PRIMARY KEY CLUSTERED ([StreetAddressId] ASC),
	CONSTRAINT [UQ_Address_StreetAddress_Value] UNIQUE([Value])
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents a street address (lookup table for normalization)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'StreetAddress',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The value of the street address',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'StreetAddress',
    @level2type = N'COLUMN',
    @level2name = N'Value'

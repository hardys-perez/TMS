CREATE TABLE [dbo].[ZipCode] (
    [ZipCodeId]      INT IDENTITY (1, 1) NOT NULL,
	[Value]          VARCHAR(30)  NOT NULL,
    [DateCreated]    DATETIME2 (2) CONSTRAINT [DF_Address_ZipCode_DateCreated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_ZipCode] PRIMARY KEY CLUSTERED ([ZipCodeId] ASC),
	CONSTRAINT [UQ_Address_ZipCode_Value] UNIQUE([Value])
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents a ZipCode',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'ZipCode',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The value of the ZipCode',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'ZipCode',
    @level2type = N'COLUMN',
    @level2name = N'Value'

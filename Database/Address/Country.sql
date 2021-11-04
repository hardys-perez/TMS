CREATE TABLE [dbo].[Country] (
    [CountryId]      INT IDENTITY (1, 1) NOT NULL,
	[Value]          VARCHAR(255)  NOT NULL,
    [DateCreated]    DATETIME2 (2) CONSTRAINT [DF_Address_Country_DateCreated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_Country] PRIMARY KEY CLUSTERED ([CountryId] ASC),
	CONSTRAINT [UQ_Address_Country_Value] UNIQUE([Value])
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents a Country',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Country',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The value of the Country',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Country',
    @level2type = N'COLUMN',
    @level2name = N'Value'

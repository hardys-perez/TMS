CREATE TABLE [dbo].[AddressType] (
    [AddressTypeId] SMALLINT IDENTITY (1, 1) NOT NULL,
	[Name]          VARCHAR(50)  NOT NULL,
    [DateCreated]   DATETIME2 (2) CONSTRAINT [DF_Address_AddressType_DateCreated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_AddressType] PRIMARY KEY CLUSTERED ([AddressTypeId] ASC),
	CONSTRAINT [UQ_Address_AddressType_Name] UNIQUE([Name])
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents an address type',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'AddressType',
    @level2type = NULL,
    @level2name = NULL


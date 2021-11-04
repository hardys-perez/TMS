CREATE TABLE [dbo].[Address] (
    [AddressId]               INT IDENTITY (1, 1) NOT NULL,
	[AddressTypeId]           SMALLINT NULL,
	[CompanyId]               INT NULL,
	[StreetAddressId]         INT NULL,
	[LineTwoStreetAddressId]  INT NULL,
	[CityId]                  INT NULL,
	[StateId]                 SMALLINT NULL,
	[ZipCodeId]               INT NULL,
	[CountryId]               INT NULL,
	[PhoneNumberId]           INT NULL,
	[ElevationInFeet]         INT NULL,
    [DateCreated]             DATETIME2 (2) CONSTRAINT [DF_Address_Address_DateCreated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_Address] PRIMARY KEY CLUSTERED ([AddressId] ASC),
	CONSTRAINT [FK_Address_Address_Address_AddressType] FOREIGN KEY ([AddressTypeId]) REFERENCES [dbo].[AddressType] ([AddressTypeId]),
	CONSTRAINT [FK_Address_Address_StreetAddressId_Address_StreetAddress] FOREIGN KEY ([StreetAddressId]) REFERENCES [dbo].[StreetAddress] ([StreetAddressId]),
	CONSTRAINT [FK_Address_Address_LineTwoStreetAddressId_Address_StreetAddress] FOREIGN KEY ([LineTwoStreetAddressId]) REFERENCES [dbo].[StreetAddress] ([StreetAddressId]),
	CONSTRAINT [FK_Address_Address_Address_City] FOREIGN KEY ([CityId]) REFERENCES [dbo].[City] ([CityId]),
	CONSTRAINT [FK_Address_Address_Address_State] FOREIGN KEY ([StateId]) REFERENCES [dbo].[State] ([StateId]),
	CONSTRAINT [FK_Address_Address_Address_ZipCode] FOREIGN KEY ([ZipCodeId]) REFERENCES [dbo].[ZipCode] ([ZipCodeId]),
	CONSTRAINT [FK_Address_Address_Address_Country] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([CountryId]),
	CONSTRAINT [FK_Address_Address_Address_PhoneNumber] FOREIGN KEY ([PhoneNumberId]) REFERENCES [dbo].[PhoneNumber] ([PhoneNumberId])

);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UQ_Address_Address_AllColumns] ON [dbo].[Address]
(
	[AddressTypeId] ASC,
	[StreetAddressId] ASC,
	[LineTwoStreetAddressId] ASC,
	[CityId] ASC,
	[StateId] ASC,
	[ZipCodeId] ASC,
	[CountryId] ASC,
	[PhoneNumberId] ASC,
	[ElevationInFeet] ASC,
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];


GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents an address',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The elevation in feet of the address',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = N'COLUMN',
    @level2name = N'ElevationInFeet'
CREATE TABLE [dbo].[PhoneNumber] (
    [PhoneNumberId]  INT IDENTITY (1, 1) NOT NULL,
	[Value]          VARCHAR(30)  NOT NULL,
    [DateCreated]    DATETIME2 (2) CONSTRAINT [DF_Address_PhoneNumber_DateCreated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_PhoneNumber] PRIMARY KEY CLUSTERED ([PhoneNumberId] ASC),
	CONSTRAINT [UQ_Address_PhoneNumber_Value] UNIQUE([Value])
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents a Phone Number (lookup table for normalization)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PhoneNumber',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The value of the Phone Number',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'PhoneNumber',
    @level2type = N'COLUMN',
    @level2name = N'Value'

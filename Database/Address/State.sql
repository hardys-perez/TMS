CREATE TABLE [dbo].[State] (
    [StateId]       SMALLINT IDENTITY (1, 1) NOT NULL,
	[Name]          VARCHAR(100)  NOT NULL,
	[Abbreviation]  VARCHAR(20)  NOT NULL,
    [DateCreated]   DATETIME2 (2) CONSTRAINT [DF_Address_State_DateCreated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Address_State] PRIMARY KEY CLUSTERED ([StateId] ASC),
	CONSTRAINT [UQ_Address_State_Name] UNIQUE([Name]),
    CONSTRAINT [UQ_Address_State_Abbreviation] UNIQUE([Abbreviation])
);

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Represents a state/province/territory',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'State',
    @level2type = NULL,
    @level2name = NULL

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The full name of the state',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'State',
    @level2type = N'COLUMN',
    @level2name = N'Name'

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'The abbreviation of the state',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'State',
    @level2type = N'COLUMN',
    @level2name = N'Abbreviation'
CREATE TABLE [dbo].[User] (
    [UserId]            INT           IDENTITY (1, 1) NOT NULL,
    [IsActive]          BIT CONSTRAINT [DF_User_User_IsActive] DEFAULT (1) NOT NULL,
    [DateCreated]       DATETIME2 (2) CONSTRAINT [DF_User_User_DateCreated] DEFAULT (getdate()) NOT NULL,
    [DateUpdated]       DATETIME2 (2) CONSTRAINT [DF_User_User_DateUpdated] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_User_User] PRIMARY KEY CLUSTERED ([UserId] ASC),
    [Email] VARCHAR(100) NOT NULL,
    CONSTRAINT [UQ_User_User_Email] UNIQUE([Email]),
);
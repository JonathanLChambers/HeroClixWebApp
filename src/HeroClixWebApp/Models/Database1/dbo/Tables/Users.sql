CREATE TABLE [dbo].[Users] (
    [UserID]    INT           NOT NULL,
    [Usernames] VARCHAR (150) NULL,
    [Passwords] VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([UserID] ASC)
);


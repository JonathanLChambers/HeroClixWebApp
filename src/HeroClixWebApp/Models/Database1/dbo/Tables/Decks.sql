CREATE TABLE [dbo].[Decks] (
    [DeckID]   INT           NOT NULL,
    [UserID]   INT           NULL,
    [Deckname] VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([DeckID] ASC),
    FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([UserID])
);


CREATE TABLE [dbo].[Team] (
    [DeckID]      INT NULL,
    [CharacterID] INT NULL,
    FOREIGN KEY ([CharacterID]) REFERENCES [dbo].[CharacterTable] ([CharacterID]),
    FOREIGN KEY ([DeckID]) REFERENCES [dbo].[Decks] ([DeckID])
);


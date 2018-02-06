CREATE TABLE [dbo].[WheelPositionsStats] (
    [PID]             TINYINT NOT NULL,
    [OrdinalPosition] TINYINT NULL,
    [CharacterID]     INT     NULL,
    [StatID]          TINYINT NULL,
    [Value]           TINYINT NULL,
    PRIMARY KEY CLUSTERED ([PID] ASC),
    FOREIGN KEY ([CharacterID]) REFERENCES [dbo].[CharacterTable] ([CharacterID]),
    FOREIGN KEY ([StatID]) REFERENCES [dbo].[BaseStat] ([StatID])
);


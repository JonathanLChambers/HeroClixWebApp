CREATE TABLE [dbo].[WheelPositionsSkills] (
    [PID]             TINYINT NULL,
    [OrdinalPosition] TINYINT NULL,
    [CharacterID]     INT     NULL,
    [SkillID]         TINYINT NULL,
    FOREIGN KEY ([CharacterID]) REFERENCES [dbo].[CharacterTable] ([CharacterID]),
    FOREIGN KEY ([PID]) REFERENCES [dbo].[WheelPositionsStats] ([PID]),
    FOREIGN KEY ([SkillID]) REFERENCES [dbo].[Skills] ([SkillID])
);


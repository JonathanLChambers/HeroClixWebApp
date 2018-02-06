CREATE TABLE [dbo].[CharacterTable] (
    [CharacterID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (150) NULL,
    [PointValue]  SMALLINT      NULL,
    [Movement]    TINYINT       NULL,
    [Size]        TINYINT       NULL,
    [Indomitable] VARCHAR (150) NULL,
    [Range]       TINYINT       NULL,
    [Targets]     TINYINT       NULL,
    PRIMARY KEY CLUSTERED ([CharacterID] ASC)
);


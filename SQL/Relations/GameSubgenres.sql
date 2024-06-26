
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

IF EXISTS (SELECT 1 FROM SysObjects WHERE Name = 'GameSubgenres')
BEGIN
	RETURN
END
GO

CREATE TABLE dbo.GameSubgenres
(
    GameId int NOT NULL,
    SubgenreId int NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE dbo.GameSubgenres ADD CONSTRAINT PK_GameSubgenres PRIMARY KEY CLUSTERED
(
    GameId ASC,
    SubgenreId ASC
)
WITH (
    PAD_INDEX = OFF,
    STATISTICS_NORECOMPUTE = OFF,
    SORT_IN_TEMPDB = OFF,
    IGNORE_DUP_KEY = OFF,
    ONLINE = OFF,
    ALLOW_ROW_LOCKS = ON,
    ALLOW_PAGE_LOCKS = ON
) ON [PRIMARY]
GO

ALTER TABLE dbo.GameSubgenres ADD CONSTRAINT FK_GameSubgenres_Games FOREIGN KEY (GameId)
REFERENCES dbo.Games(Id)
ON DELETE CASCADE
GO

ALTER TABLE dbo.GameSubgenres ADD CONSTRAINT FK_GameSubgenres_Genres FOREIGN KEY (SubgenreId)
REFERENCES dbo.Genres(Id)
ON DELETE CASCADE
GO
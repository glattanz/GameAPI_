SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE dbo.sp_Genres_Delete
	@Id int
AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM Genres
    WHERE Id = @Id
    
END
USE [demoDB]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [demo].[namedStoredProcedureRetrievePlanetQuery]
    @planetName nvarchar(50) 
AS   

    SET NOCOUNT ON;  
	SELECT TOP 1 PLANET_ID, 
			PLANET_NAME, 
			PLANET_CREATED_DATE, 
			UPDATED_DATETIME, 
			CLASS_TYPE, 
			ADVANCEMENT_LEVEL, 
			PRIMARY_SPECIES, 
			POPULATION, 
			LANGUAGE, 
			CLIMATE, 
			NOTES
	FROM 		demoDB.demo.PLANET
	WHERE 		PLANET_NAME = @planetName 
	ORDER BY 	UPDATED_DATETIME desc
GO
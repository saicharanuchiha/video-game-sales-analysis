-- Use a Common Table Expression (CTE) and a Window Function to find the #1 game per genre.
-- Step 1: Create the CTE (The temporary workbench)
WITH RankedGames AS (
    SELECT 
        Name, 
        Genre, 
        Global_Sales,
        -- This window function ranks games from 1 to X within each genre
        RANK() OVER (PARTITION BY Genre ORDER BY Global_Sales DESC) as Genre_Rank
    FROM video_games
)

-- Step 2: Query from your new temporary table
SELECT 
    *
FROM RankedGames
WHERE Genre_Rank = 1;
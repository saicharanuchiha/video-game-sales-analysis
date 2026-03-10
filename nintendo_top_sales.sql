-- 1. Wipe any previous attempts to keep the database clean
DROP TABLE IF EXISTS video_games;

-- 2. Build the exact structure based on your headers
CREATE TABLE video_games (
    Name VARCHAR(255),
    Platform VARCHAR(50),
    Year_of_Release VARCHAR(50),  -- Kept as text in case of "N/A" values
    Genre VARCHAR(50),
    Publisher VARCHAR(255),
    NA_Sales DECIMAL(10,2),
    EU_Sales DECIMAL(10,2),
    JP_Sales DECIMAL(10,2),
    Other_Sales DECIMAL(10,2),
    Global_Sales DECIMAL(10,2),
    Critic_Score VARCHAR(50),     -- Kept as text to handle blank scores safely
    Critic_Count VARCHAR(50),
    User_Score VARCHAR(50),
    User_Count VARCHAR(50),
    Developer VARCHAR(255),
    Rating VARCHAR(50)
);

-- 3. Enable local file loading (just in case the safety switch is on)
SET GLOBAL local_infile = 1;

-- 4. Fast load the data from your machine
-- IMPORTANT: Change this path to match your actual file location!
LOAD DATA LOCAL INFILE 'C:/Users/Sai Charan/Downloads/Video_Games.csv' 
INTO TABLE video_games 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

desc video_games;

select * from video_games;

-- Write a query to find the Top 10 best-selling games published by Nintendo, based on Global_Sales
SELECT 
    name, Global_Sales, Publisher
FROM
    video_games
WHERE
    Publisher = 'Nintendo'
ORDER BY Global_Sales DESC
LIMIT 10;

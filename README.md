# 🎮 Video Game Sales Analysis (SQL)

## 📌 Objective
To analyze global video game sales data to identify top-performing publishers, historical console dominance, and the #1 best-selling games across all genres.

## 🛠️ Skills & Tools Used
* **Database:** MySQL
* **Concepts:** Common Table Expressions (CTEs), Window Functions (`ROW_NUMBER`), Aggregations (`GROUP BY`, `HAVING`), Data Type Casting.

## 📊 Key Insights
1. **The Racing King:** *Mario Kart Wii* is the undisputed top racing game of all time with 35.52M copies sold.
2. **Quality Control:** Filtered publishers with over 50 releases to find the highest average sales per game, revealing Nintendo's consistent market dominance.
3. **Console Wars:** Grouped historical data to prove the PlayStation 2 moved the highest volume of software overall.

## 📁 Files in this Repository
* `nintendo_top_sales.sql`: Basic filtering and sorting logic.
* `top_games_by_genre.sql`: Advanced query using a CTE and Window Function to rank items within categories without crushing the data.

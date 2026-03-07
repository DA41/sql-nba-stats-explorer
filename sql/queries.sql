-- =========================================
-- NBA Stats Explorer - Analysis Queries
-- =========================================

-- 1. Show all players
SELECT *
FROM player_stats;

-- 2. Top 10 scorers
SELECT player_name, team, ppg
FROM player_stats
ORDER BY ppg DESC
LIMIT 10;

-- 3. Top 10 rebounders
SELECT player_name, team, rpg
FROM player_stats
ORDER BY rpg DESC
LIMIT 10;

-- 4. Top 10 assist leaders
SELECT player_name, team, apg
FROM player_stats
ORDER BY apg DESC
LIMIT 10;

-- 5. Players averaging more than 25 points per game
SELECT player_name, team, ppg
FROM player_stats
WHERE ppg > 25
ORDER BY ppg DESC;

-- 6. Average points per game by position
SELECT position, AVG(ppg) AS avg_ppg
FROM player_stats
GROUP BY position
ORDER BY avg_ppg DESC;

-- 7. Average rebounds per game by position
SELECT position, AVG(rpg) AS avg_rpg
FROM player_stats
GROUP BY position
ORDER BY avg_rpg DESC;

-- 8. Average assists per game by position
SELECT position, AVG(apg) AS avg_apg
FROM player_stats
GROUP BY position
ORDER BY avg_apg DESC;

-- 9. Highest field-goal percentages among players with at least 20 games played
SELECT player_name, team, fg_pct
FROM player_stats
WHERE games_played >= 20
ORDER BY fg_pct DESC
LIMIT 10;

-- 10. Number of players in each position
SELECT position, COUNT(*) AS player_count
FROM player_stats
GROUP BY position
ORDER BY player_count DESC;
GROUP BY team;

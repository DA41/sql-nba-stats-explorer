-- NBA SQL Analysis Queries

-- Show all players in the table
SELECT *
FROM player_stats;

-- Top scorers (highest PPG first)
SELECT player_name, ppg
FROM player_stats
ORDER BY ppg DESC;

-- Players averaging more than 30 PPG
SELECT player_name, ppg
FROM player_stats
WHERE ppg > 30;

-- Average points per game across all players
SELECT AVG(ppg)
FROM player_stats;

-- Total number of players
SELECT COUNT(*)
FROM player_stats;

-- Average points per team
SELECT team, AVG(ppg)
FROM player_stats
GROUP BY team;

-- Number of players per team
SELECT team, COUNT(*)
FROM player_stats
GROUP BY team;
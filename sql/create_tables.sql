--Creates a table to track each player's stats
CREATE TABLE player_stats (
    player_id SERIAL PRIMARY KEY,
    player_name TEXT NOT NULL, --Stores the player's name, "NOT NULL" = can't be empty
    team TEXT NOT NULL, --Stores the player's current team
    position TEXT, --Stores the player's position (e.g., PG, SG, SF, PF, C)
    games_played INTEGER, -- Games played by the player
    ppg NUMERIC(4,1), -- Points per game, 4 total digits, 1 decimal place
    rpg NUMERIC(4,1), -- Rebounds per game, 4 total digits, 1 decimal place
    apg NUMERIC(4,1), -- Assists per game, 4 total digits, 1 decimal place
    fg_pct NUMERIC(4,1) -- Field goal percentage, 4 total digits, 1 decimal place
);
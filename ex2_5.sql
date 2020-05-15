SELECT  actor_name, character_name
FROM Actors LEFT JOIN Characters ON (Actors.actor_id = Characters.actor_id);
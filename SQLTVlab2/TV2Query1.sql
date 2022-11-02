CREATE OR REPLACE VIEW TV2Query1 AS
SELECT actor_num, actor_name, awardid
FROM zactor NATURAL JOIN zwins
ORDER BY zactor.actor_name;
CREATE OR REPLACE VIEW TV2Query5 AS
SELECT zproducer.prod_name, zagent.agent_name, zagent.agent_home
FROM zproducer
RIGHT JOIN zagent ON zproducer.agent_num = zagent.agent_num
ORDER BY zproducer.prod_name;
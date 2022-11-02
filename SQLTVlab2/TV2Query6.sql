CREATE OR REPLACE VIEW TV2Query6 AS
SELECT zreceives.awardid, ztvshow.show_name
FROM zreceives FULL JOIN ztvshow 
ON ztvshow.show_num = zreceives.show_num;
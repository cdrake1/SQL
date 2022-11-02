CREATE OR REPLACE VIEW TV2Query6 AS
SELECT zspinoff.spinoff_num, zreceives.award_name, ztvshow.show_name
FROM zspinoff FULL JOIN ztvshow 
ON zpsinoff.parent_num = ztvshow.show_num
FULL JOIN zreceives
ON ztvshow.show_num = zreceives.show_num;
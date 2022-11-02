CREATE OR REPLACE VIEW TV2Query6 AS
SELECT DISTINCT zaward.award_name, ztvshow.show_name
FROM zaward FULL JOIN zreceives
ON zaward.awardid = zreceives.awardid
FULL JOIN ztvshow
ON ztvshow.show_num = zreceives.show_num
ORDER BY ztvshow.show_name;
CREATE OR REPLACE VIEW FINQUERY10 AS
SELECT FCLUBTEAM.CLUBID, FLEAGUE.LEAGUE_NAME
FROM FCLUBTEAM, FLEAGUE
WHERE FCLUBTEAM.LEAGUEID = FLEAGUE.LEAGUEID
AND FLEAGUE.LEAGUE_NAME = 'Serie A'
ORDER BY FCLUBTEAM.CLUBID;
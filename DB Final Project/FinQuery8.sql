CREATE OR REPLACE VIEW FINQUERY8 AS 
SELECT FMANAGER.MANAGER_NAME, FCLUBTEAM.CLUBID
FROM FMANAGER, FCLUBTEAM
WHERE FCLUBTEAM.LEAGUEID = 2
AND FMANAGER.MANAGERID = FCLUBTEAM.MANAGERID;
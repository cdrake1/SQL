SELECT DEALERS.DNUM
FROM DEALERS D,PROVIDES P,AGENCIES A
WHERE (P.DNUM = D.DNUM)
AND (P.ANUM = 'A10');

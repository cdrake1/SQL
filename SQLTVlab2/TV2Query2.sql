SELECT sponsor_name, sponsor_num, show_num
FROM zsponsor JOIN zsponsorby USING (sponsor_num)
ORDER BY zsponsor.sponsor_name;

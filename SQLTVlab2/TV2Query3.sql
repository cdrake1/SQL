CREATE OR REPLACE VIEW TV2Query3 AS
SELECT show_name, prod_salary
FROM ztvshow JOIN zprodby ON ztvshow.show_num = zprodby.show_num
AND start_year >= 1973;
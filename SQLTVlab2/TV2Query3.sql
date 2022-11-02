SELECT show_name, prod_salary
FROM ztvshow JOIN zprodby ON ztvshow.show_num = zprodby.show_num
AND start_year >= 1973;
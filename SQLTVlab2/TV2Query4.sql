CREATE OR REPLACE VIEW TV2Query4 AS
SELECT zparentcomp.parent_name, zdistributor.distr_name
FROM zparentcomp
LEFT JOIN zdistributor ON zparentcomp.parent_num = zdistributor.parent_num
ORDER BY zparentcomp.parent_name;
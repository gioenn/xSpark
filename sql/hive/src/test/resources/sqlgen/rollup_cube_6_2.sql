-- This file is automatically generated by LogicalPlanToSQLSuite.
SELECT a, b, sum(c) FROM parquet_t2 GROUP BY CUBE(a, b) ORDER BY a, b
--------------------------------------------------------------------------------
SELECT `gen_attr_0` AS `a`, `gen_attr_1` AS `b`, `gen_attr_3` AS `sum(c)` FROM (SELECT `gen_attr_5` AS `gen_attr_0`, `gen_attr_6` AS `gen_attr_1`, sum(`gen_attr_4`) AS `gen_attr_3` FROM (SELECT `a` AS `gen_attr_5`, `b` AS `gen_attr_6`, `c` AS `gen_attr_4`, `d` AS `gen_attr_7` FROM `default`.`parquet_t2`) AS gen_subquery_0 GROUP BY `gen_attr_5`, `gen_attr_6` GROUPING SETS((`gen_attr_5`, `gen_attr_6`), (`gen_attr_5`), (`gen_attr_6`), ()) ORDER BY `gen_attr_0` ASC, `gen_attr_1` ASC) AS gen_subquery_1

- view: long_pdt
  derived_table:
    sql_trigger_if: SELECT 1
    sql: |
      SELECT COUNT(*) count_star
      FROM INFORMATION_SCHEMA.COLLATIONS AS t1,
           INFORMATION_SCHEMA.COLLATIONS AS t2,
           INFORMATION_SCHEMA.COLLATIONS AS t3,
           INFORMATION_SCHEMA.COLLATIONS AS t4
    indexes: count_star
  fields:
  - dimension: count_star

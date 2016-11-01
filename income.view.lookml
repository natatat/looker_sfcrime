- view: income
  derived_table:
    sql: |
      SELECT 
        income.medinc_d AS medinc_d,
        income.medinc_moe AS medinc_moe,
        income.pc_inc_d AS pc_inc_d,
        income.pc_inc_moe AS pc_inc_moe,
        income.TRACT2000 AS tract2000
      FROM income
      GROUP BY 1,2,3,4,5

  fields:
  - dimension: median_income_d
    type: number
    sql: ${TABLE}.medinc_d

  - dimension: median_income_moe
    sql: ${TABLE}.medinc_moe

  - dimension: percent_increase_d
    type: number
    sql: ${TABLE}.pc_inc_d

  - dimension: percent_increase_moe
    sql: ${TABLE}.pc_inc_moe

  - dimension: tract_2000
    type: number
    sql: ${TABLE}.TRACT2000

  - measure: count
    type: count
    drill_fields: []
    


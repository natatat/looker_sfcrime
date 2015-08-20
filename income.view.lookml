- view: income
  fields:

  - dimension: medinc_d
    type: int
    sql: ${TABLE}.medinc_d

  - dimension: medinc_moe
    sql: ${TABLE}.medinc_moe

  - dimension: pc_inc_d
    type: int
    sql: ${TABLE}.pc_inc_d

  - dimension: pc_inc_moe
    sql: ${TABLE}.pc_inc_moe

  - dimension: tract2000
    type: int
    sql: ${TABLE}.TRACT2000

  - measure: count
    type: count
    drill_fields: []


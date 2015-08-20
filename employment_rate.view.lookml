- view: employment_rate
  fields:

  - dimension: employed_moe
    sql: ${TABLE}.employed_moe

  - dimension: employed_percentage
    sql: ${TABLE}.employed_percentage

  - dimension: tract2000
    type: int
    sql: ${TABLE}.TRACT2000

  - measure: count
    type: count
    drill_fields: []


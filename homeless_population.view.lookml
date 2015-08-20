- view: homeless_population
  fields:

  - dimension: pop_count
    type: int
    sql: ${TABLE}.count

  - dimension: district_id
    type: int
    sql: ${TABLE}.district_id

  - dimension: percentage
    sql: ${TABLE}.percentage

  - dimension: pt
    sql: ${TABLE}.pt

  - measure: count
    type: count
    drill_fields: []


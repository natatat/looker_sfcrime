- view: homeless_population

  fields:
  - dimension: pop_count
    type: int
    sql: ${TABLE}.count

  - dimension: district_id
    type: int
    sql: ${TABLE}.district_id

  - dimension: percentage
    type: int
    sql: cast(${TABLE}.percentage as UNSIGNED)
# 
#   - dimension: pt
#     sql: ${TABLE}.pt

  - measure: count
    type: count
    drill_fields: [pop_count, percentage]


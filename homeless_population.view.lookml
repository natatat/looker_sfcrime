- view: homeless_population

  fields:
  - dimension: pop_count
    type: number
    sql: ${TABLE}.count

  - dimension: district_id
    type: number
    sql: ${TABLE}.district_id

  - dimension: percentage
    type: number
    sql: cast(${TABLE}.percentage as UNSIGNED)
# 
#   - dimension: pt
#     sql: ${TABLE}.pt

  - measure: count
    type: count
    drill_fields: [pop_count, percentage]


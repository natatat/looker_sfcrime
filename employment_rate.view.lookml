- view: employment_rate
  derived_table:
    sql: |
      SELECT 
        employment_rate.employed_moe AS employed_moe,
        employment_rate.employed_percentage AS employed_percentage,
        employment_rate.TRACT2000 AS tract2000
      FROM employment_rate
      GROUP BY 1,2,3
    indexes: [tract2000]
    sql_trigger_value: |
      SELECT FLOOR(EXTRACT(hour from current_time) / 3)
      
  fields:
  - dimension: employed_moe
    sql: ${TABLE}.employed_moe

  - dimension: employed_percentage
    sql: ${TABLE}.employed_percentage

  - dimension: tract_2000
    type: number
    sql: ${TABLE}.TRACT2000

  - measure: count
    type: count
    drill_fields: []


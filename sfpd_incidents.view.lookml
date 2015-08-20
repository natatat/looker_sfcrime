- view: sfpd_incidents
  fields:

  - dimension: address
    sql: ${TABLE}.Address

  - dimension: category
    sql: ${TABLE}.Category

  - dimension: date
    sql: ${TABLE}.Date

  - dimension: day_of_week
    sql: ${TABLE}.DayOfWeek

  - dimension: descript
    sql: ${TABLE}.Descript

  - dimension: incidnt_num
    type: number
    sql: ${TABLE}.IncidntNum

  - dimension: location
    sql: ${TABLE}.Location

  - dimension: pd_district
    sql: ${TABLE}.PdDistrict

  - dimension: pd_id
    type: int
    sql: ${TABLE}.PdId

  - dimension: resolution
    sql: ${TABLE}.Resolution

  - dimension: time
    sql: ${TABLE}.Time

  - dimension: x
    sql: ${TABLE}.X

  - dimension: y
    sql: ${TABLE}.Y

  - measure: count
    type: count
    drill_fields: []


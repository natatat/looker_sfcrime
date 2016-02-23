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
  
  - dimension_group: datetime_test
    timeframes: [time, date, week]
    sql: CONCAT(CONCAT(CONCAT(CONCAT(substring(${date},7,4), '-'), CONCAT(CONCAT(substring(${date},1,2),'-'), substring(${date},4,2))), ' '), ${time})
    type: time

  - dimension: x
    sql: ${TABLE}.X

  - dimension: y
    sql: ${TABLE}.Y

  - dimension: location_mapable
    type: location
    sql_latitude: ${y}
    sql_longitude: ${x}

  - measure: count
    type: count
    drill_fields: []


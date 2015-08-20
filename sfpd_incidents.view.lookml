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

#   - dimension: location
#     sql: ${TABLE}.Location
# 
#   - dimension: location
#     type: location
#     sql_latitude: cast(SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.Location,',',1),'(',-1) as decimal)
#     sql_longitude: cast(SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.Location,',',-1),')',1) as decimal)

#   - dimension: location
#     type: location
#     sql_latitude: cast(SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.Location,',',1),'(',-1) as decimal)
#     sql_longitude: cast(SUBSTRING_INDEX(SUBSTRING_INDEX(${TABLE}.Location,',',-1),')',1) as decimal)

  - dimension: pd_district
    sql: ${TABLE}.PdDistrict

  - dimension: pd_id
    type: int
    sql: ${TABLE}.PdId

  - dimension: resolution
    sql: ${TABLE}.Resolution

  - dimension: time
    type: datetime
    sql: ${TABLE}.Time

  - dimension: x
    sql: ${TABLE}.X

  - dimension: y
    sql: ${TABLE}.Y

  - measure: count
    type: count
    drill_fields: [category,count]


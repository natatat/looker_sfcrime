- view: 311_cases
  sql_table_name: |
      `311_cases`
  fields:

  - dimension: address
    sql: ${TABLE}.Address

  - dimension: case_id
    type: int
    sql: ${TABLE}.CaseID

  - dimension: category
    sql: ${TABLE}.Category

  - dimension: closed
    sql: ${TABLE}.Closed

  - dimension: media_url
    sql: ${TABLE}.`Media URL`

  - dimension: neighborhood
    sql: ${TABLE}.Neighborhood

  - dimension: opened
    sql: ${TABLE}.Opened

  - dimension: point
    sql: ${TABLE}.Point

  - dimension: request_details
    sql: ${TABLE}.`Request Details`

  - dimension: request_type
    sql: ${TABLE}.`Request Type`

  - dimension: responsible_agency
    sql: ${TABLE}.`Responsible Agency`

  - dimension: source
    sql: ${TABLE}.Source

  - dimension: status
    sql: ${TABLE}.Status

  - dimension: supervisor_district
    type: int
    sql: ${TABLE}.`Supervisor District`

  - dimension: updated
    sql: ${TABLE}.Updated

  - measure: count
    type: count
    drill_fields: []


- view: job_density
  fields:

  - dimension: area_smi
    sql: ${TABLE}.area_smi

  - dimension: jobs_count
    sql: ${TABLE}.jobs_count

  - dimension: jobs_psmi
    sql: ${TABLE}.jobs_psmi

  - dimension: population_2010
    type: int
    sql: ${TABLE}.population_2010

  - dimension: tract2010
    type: int
    sql: ${TABLE}.TRACT2010

  - measure: count
    type: count
    drill_fields: []


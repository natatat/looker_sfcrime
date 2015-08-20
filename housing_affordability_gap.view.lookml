- view: housing_affordability_gap
  fields:

  - dimension: down_payment
    sql: ${TABLE}.down_payment

  - dimension: income_d
    type: int
    sql: ${TABLE}.income_d

  - dimension: income_gap
    type: int
    sql: ${TABLE}.income_gap

  - dimension: loan_amount
    sql: ${TABLE}.loan_amount

  - dimension: median_sale
    type: int
    sql: ${TABLE}.median_sale

  - dimension: medinc_d
    type: int
    sql: ${TABLE}.medinc_d

  - dimension: medinc_moe
    type: int
    sql: ${TABLE}.medinc_moe

  - dimension: monthly
    type: int
    sql: ${TABLE}.monthly

  - dimension: neighborhood
    sql: ${TABLE}.neighborhood

  - dimension: population_2010
    sql: ${TABLE}.population_2010

  - dimension: sample_size
    type: int
    sql: ${TABLE}.sample_size

  - dimension: shape_area
    sql: ${TABLE}.shape_area

  - dimension: shape_length
    sql: ${TABLE}.shape_length

  - measure: count
    type: count
    drill_fields: []


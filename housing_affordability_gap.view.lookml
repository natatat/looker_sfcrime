- view: housing_affordability_gap
  fields:

  - dimension: down_payment
    type: number
    sql: cast(${TABLE}.down_payment as UNSIGNED)

  - dimension: income_d
    type: number
    sql: ${TABLE}.income_d

  - dimension: income_gap
    type: number
    sql: ${TABLE}.income_gap

  - dimension: loan_amount
    sql: ${TABLE}.loan_amount

  - dimension: median_sale
    type: number
    sql: ${TABLE}.median_sale

  - dimension: medinc_d
    type: number
    sql: ${TABLE}.medinc_d

  - dimension: medinc_moe
    type: number
    sql: ${TABLE}.medinc_moe

  - dimension: monthly
    type: number
    sql: ${TABLE}.monthly

  - dimension: neighborhood
    sql: ${TABLE}.neighborhood

  - dimension: population_2010
    sql: ${TABLE}.population_2010

  - dimension: sample_size
    type: number
    sql: ${TABLE}.sample_size

  - dimension: shape_area
    sql: ${TABLE}.shape_area

  - dimension: shape_length
    sql: ${TABLE}.shape_length

  - measure: count
    type: count
    drill_fields: []


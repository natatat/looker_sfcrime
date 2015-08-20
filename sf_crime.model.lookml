- connection: sf_crime

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: 311_cases
  joins:
    - join: homeless_population
      sql_on: ${311_cases.supervisor_district} = ${homeless_population.district_id}
      relationship: many_to_one
    - join: housing_affordability_gap
      sql_on: ${311_cases.neighborhood} = ${housing_affordability_gap.neighborhood}
      relationship: many_to_one

# - explore: connection_reg_r3

# - explore: employment_rate

# - explore: homeless_population

- explore: housing_affordability_gap
#   joins:
#     - join: job_density
#       sql_on: ${job_density.population_2010} = ${housing_affordability_gap.population_2010}

- explore: income
  joins:
    - join: employment_rate
      sql_on: ${income.tract_2000} = ${employment_rate.tract_2000}
      relationship: many_to_one

# - explore: job_density

- explore: sfpd_incidents


view: medicare_claims_utah {
  sql_table_name: `looker_scratch.medicare_claims_utah`
    ;;

  dimension: avg_spending_per_episode__hospital_ {
    type: number
    sql: ${TABLE}.Avg_Spending_Per_Episode__Hospital_ ;;
  }

  dimension: avg_spending_per_episode__nation_ {
    type: number
    sql: ${TABLE}.Avg_Spending_Per_Episode__Nation_ ;;
  }

  dimension: avg_spending_per_episode__state_ {
    type: number
    sql: ${TABLE}.Avg_Spending_Per_Episode__State_ ;;
  }

  dimension: claim_type {
    type: string
    sql: ${TABLE}.Claim_Type ;;
  }

  dimension: hospital_name {
    type: string
    sql: ${TABLE}.Hospital_Name ;;
  }

  dimension_group: measure_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Measure_End_Date ;;
  }

  dimension_group: measure_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Measure_Start_Date ;;
  }

  dimension: percent_of_spending__hospital_ {
    type: number
    sql: ${TABLE}.Percent_of_Spending__Hospital_ ;;
  }

  dimension: percent_of_spending__nation_ {
    type: number
    sql: ${TABLE}.Percent_of_Spending__Nation_ ;;
  }

  dimension: percent_of_spending__state_ {
    type: number
    sql: ${TABLE}.Percent_of_Spending__State_ ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: provider_number_ {
    type: number
    sql: ${TABLE}.Provider_Number_ ;;
  }

  dimension: string_field_12 {
    type: string
    sql: ${TABLE}.string_field_12 ;;
  }

  measure: hospitals_count {
    type: count
    drill_fields: [hospital_name]
  }

  measure: count_distinct_hospitals {
    type: count_distinct
    drill_fields: [hospital_name]
  }

  measure: claim_count {
    type:  count
    drill_fields: [claim_type]

  }

  # measure: claim_type_count {
  #   type:  count_distinct
  #   drill_fields: [claim_type]
    # # # # Not currently working, so I disabled it.
  # }

}

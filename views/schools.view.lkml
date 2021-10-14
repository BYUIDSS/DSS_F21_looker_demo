view: schools {
  sql_table_name: `looker_scratch.schools`
    ;;

  dimension: school_id {
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: name_full {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.string_field_3 ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.string_field_4 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

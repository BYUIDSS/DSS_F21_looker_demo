view: collegeplaying {
  sql_table_name: `looker_scratch.collegeplaying`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: player_id {
    type: string
    sql: ${TABLE}.playerID ;;
  }

  dimension: school_id {
    type: string
    sql: ${TABLE}.schoolID ;;
  }

  dimension: year_id {
    type: number
    sql: ${TABLE}.yearID ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

view: people {
  sql_table_name: `tribal-environs-324122.looker_scratch.people`
    ;;

  dimension: bats {
    type: string
    sql: ${TABLE}.bats ;;
  }

  dimension: bbref_id {
    type: string
    sql: ${TABLE}.bbrefID ;;
  }

  dimension: birth_city {
    type: string
    sql: ${TABLE}.birthCity ;;
  }

  dimension: birth_country {
    type: string
    sql: ${TABLE}.birthCountry ;;
  }

  dimension_group: birth {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.birth_date ;;
  }

  dimension: birth_day {
    type: number
    sql: ${TABLE}.birthDay ;;
  }

  dimension: birth_state {
    type: string
    sql: ${TABLE}.birthState ;;
  }


  dimension: death_city {
    type: string
    sql: ${TABLE}.deathCity ;;
  }

  dimension: death_country {
    type: string
    sql: ${TABLE}.deathCountry ;;
  }

  dimension_group: death {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.death_date ;;
  }

  dimension: death_day {
    type: number
    sql: ${TABLE}.deathDay ;;
  }

  dimension: death_state {
    type: string
    sql: ${TABLE}.deathState ;;
  }

  dimension_group: debut {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.debut_date ;;
  }

  dimension_group: final_game {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.finalGame ;;
  }

  dimension_group: finalgame {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.finalgame_date ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}.height ;;
  }

  dimension: name_first {
    type: string
    sql: ${TABLE}.nameFirst ;;
  }

  dimension: name_given {
    type: string
    sql: ${TABLE}.nameGiven ;;
  }

  dimension: name_last {
    type: string
    sql: ${TABLE}.nameLast ;;
  }

  dimension: player_id {
    type: string
    sql: ${TABLE}.playerID ;;
  }

  dimension: retro_id {
    type: string
    sql: ${TABLE}.retroID ;;
  }

  dimension: throws {
    type: string
    sql: ${TABLE}.throws ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

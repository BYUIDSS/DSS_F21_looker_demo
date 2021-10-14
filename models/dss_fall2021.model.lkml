connection: "google_first_project"

# include all the views
include: "/views/**/*.view"

datagroup: google_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_test_default_datagroup

explore: collegeplaying {
  join: people {
    type: left_outer
    relationship: many_to_one
    sql_on: ${collegeplaying.player_id} = ${people.player_id} ;;
  }
  join: schools {
    type:  left_outer
    relationship:  many_to_one
    sql_on:  ${collegeplaying.school_id} = ${schools.school_id} ;;
  }
}

explore: people {}

explore: schools {}

explore: superstore_orders {}

explore: medicare_claims_utah {}

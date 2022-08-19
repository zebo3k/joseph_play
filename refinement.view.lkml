include:  "//fivetran_facebook/**/*.view.lkml"

view: +account_history {
  measure: joseph_play_count {
    type: count_distinct
  }
}

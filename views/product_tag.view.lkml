view: product_tag {
  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
    primary_key: yes
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      month,
      year
    ]
    sql: ${TABLE}._fivetran_synced ;;
    hidden: yes
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: product_count {
    type: count
  }
}

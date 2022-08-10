view: customers {
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
    hidden: yes
  }
  dimension: _fivetran_synced {
    type: date_microsecond
    sql: ${TABLE}._fivetran_synced ;;
    hidden: yes
  }
  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}.accepts_marketing ;;
  }
  dimension_group: accepts_marketing_updated_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      month,
      year
    ]
    sql: ${TABLE}.accepts_marketing_updated_at ;;
  }
  dimension: can_delete {
    type: yesno
    sql: ${TABLE}.can_delete ;;
  }
  dimension_group: created_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      month,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }
  dimension: currency {
    type:string
    sql: ${TABLE}.currency ;;
    hidden:  yes
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: lifetime_duration {
    type: string
    sql: ${TABLE}.lifetime_duration ;;
  }
  dimension: marketing_opt_in_level {
    type: string
    sql: ${TABLE}.marketing_opt_in_level ;;
  }
  dimension: metafield {
    type: string
    sql: ${TABLE}.metafield ;;
  }
  dimension: multipass_identifier {
    type: string
    sql: ${TABLE}.multipass_identifier ;;
  }
  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }
  dimension: orders_count {
    type: number
    sql: ${TABLE}.orders_count ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: tax_exempt {
    type: yesno
    sql: ${TABLE}.tax_exempt ;;
  }
  dimension: total_spent {
    type: number
    sql: ${TABLE}.total_spent ;;
    value_format_name: gbp_0
  }
  dimension_group: updated_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      month,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: verified_email {
    type: yesno
    sql: ${TABLE}.verified_email ;;
  }

  measure: count {
    type: count
    drill_fields: [customers_details*]
  }
  measure: count_orders {
    type: count
    sql: ${orders_count} ;;
    drill_fields: [customers_details*]
  }
  measure: average_spend {
    type: average
    sql: ${total_spent} ;;
    drill_fields: [customers_details*]
  }
  measure: total_spend {
    type: sum
    sql: ${total_spent} ;;
    drill_fields: [customers_details*]
  }

  set: customers_details {
    fields: [
      accepts_marketing,
      total_spent,
      state,
      lifetime_duration
    ]
  }
}

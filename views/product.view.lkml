view: product {
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
    primary_key: yes
  }
  dimension:_fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted;;
    hidden: yes
  }
  dimension_group: _fivetran_synced  {
    type: time
    timeframes: [
      raw,
      time,
      date,
      month,
      year
    ]
    sql: ${TABLE}._fivetran_synced;;
    hidden: yes
  }
  dimension: body_html {
    type: string
    sql: ${TABLE}.body_html;;
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
    sql: ${TABLE}.created_at;;
  }
  dimension: handle {
    type: string
    sql: ${TABLE}.handle;;
  }
  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type;;
  }
  dimension: published_at {
    type: date_second
    sql: ${TABLE}.published_at;;
  }
  dimension: published_scope  {
    type: string
    sql: ${TABLE}.published_scope;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status;;
  }
  dimension: template_suffix {
    type: string
    sql: ${TABLE}.template_suffix;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title;;
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
    sql: ${TABLE}.updated_at;;
  }
  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor;;
  }

  measure: count {
    type: count
    drill_fields: [product_details*]
  }
  measure: max_id {
    type: max
    sql: ${id} ;;
    drill_fields: [product_details*]
  }
  set: product_details {
    fields: [
      published_scope,
    ]
  }
}

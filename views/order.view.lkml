view: order {
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
    primary_key: yes
  }

  dimension: app_id {
    type: number
    sql: ${TABLE}.app_id ;;
  }
  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
    hidden:  yes
  }
  dimension: _fivetran_synced {
    type: date_second
    sql: ${TABLE}._fivetran_synced ;;
    hidden: yes
  }

  dimension: billing_address_address_1 {
    type: string
    sql: ${TABLE}.billing_address_address_1 ;;
  }

  dimension: billing_address_address_2  {
    type: string
    sql: ${TABLE}.billing_address_address_2 ;;
  }

  dimension: billing_address_city {
    type: string
    sql: ${TABLE}.billing_address_city ;;

  }

  dimension: billing_address_company {
    type: string
    sql: ${TABLE}.billing_address_company ;;
  }

  dimension: billing_address_country  {
    map_layer_name: countries
    sql: ${TABLE}.billing_address_country ;;
  }

  dimension: billing_address_country_code {
    type: string
    sql: ${TABLE}.billing_address_country_code ;;

  }

  dimension: billing_address_first_name {
    type: string
    sql: ${TABLE}.billing_address_first_name ;;

  }

  dimension: billing_address_id {
    type: string
    sql: ${TABLE}.billing_address_id ;;

  }

  dimension: billing_address_last_name {
    type: string
    sql: ${TABLE}.billing_address_last_name ;;
  }

  dimension: billing_address_location {
    type: location
    sql_latitude: ${TABLE}.billing_address_latitude ;;
    sql_longitude:${TABLE}.billing_address_longitude  ;;
  }

  dimension: billing_address_name {
    type: string
    sql: CONCAT(${billing_address_first_name}," ",${billing_address_last_name});;
  }

  dimension: billing_address_phone {
    type: string
    sql: ${TABLE}.billing_address_phone ;;

  }

  dimension: billing_address_province {
    type: string
    sql: ${TABLE}.billing_address_province ;;
  }

  dimension: billing_address_province_code {
    type: zipcode
    sql: ${TABLE}.billing_address_province_code ;;
  }

  dimension: billing_address_zip {
    map_layer_name:uk_postcode_areas
    sql: ${TABLE}.billing_address_zip ;;
  }

  dimension: browser_ip {
    type: string
    sql: ${TABLE}.browser_ip ;;

  }

  dimension: buyer_accept_marketing {
    type: yesno
    sql: ${TABLE}.buyer_accept_marketing ;;
  }
  dimension:cancel_reason {
    type: string
    sql: ${TABLE}.cancel_reason ;;
  }
  dimension_group: cancelled_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      month,
      year
    ]
    sql: ${TABLE}.cancelled_at ;;
  }
  dimension: cart_token {
    type: string
    sql: ${TABLE}.cart_token ;;
  }
  dimension: checkout_token {
    type: string
    sql: ${TABLE}.checkout_token ;;
  }
  dimension: client_details_user_agent {
    type: string
    sql: ${TABLE}.client_details_user_agent ;;

  }
  dimension_group: created_at {
    type: time
    timeframes: [
      raw,
      date,
      month,
      year
    ]
    sql: ${TABLE}.created_at  ;;
  }
  dimension_group: closed_at {
    type: time
    timeframes: [
      raw,
      date,
      month,
      year
    ]
    sql: ${TABLE}.closed_at ;;
  }
  dimension: confirmed {
    type: yesno
    sql: ${TABLE}.confirmed ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
    value_format_name: gbp_0

  }
  dimension: current_subtotal_price {
    type: number
    sql: ${TABLE}.current_subtotal_price ;;
    value_format_name: gbp_0

  }
  dimension: current_subtotal_price_set {
    type: string
    sql: ${TABLE}.current_subtotal_price_set ;;

  }
  dimension: current_total_discounts {
    type: number
    sql: ${TABLE}.current_total_discounts ;;
    value_format_name: gbp_0
  }
  dimension: current_total_discounts_set {
    type: string
    sql: ${TABLE}.current_total_discounts_set ;;

  }
  dimension:  current_total_duties_set{
    type: string
    sql: ${TABLE}.current_total_duties_set ;;

  }
  dimension: current_total_price {
    type: number
    sql: ${TABLE}.current_total_price ;;
    value_format_name: gbp_0
  }
  dimension: current_total_price_set {
    type: string
    sql: ${TABLE}.current_total_price_set ;;

  }
  dimension: current_total_tax {
    type: number
    sql: ${TABLE}.current_total_tax ;;
    value_format_name: gbp_0
  }
  dimension: current_total_tax_set {
    type: string
    sql: ${TABLE}.current_total_tax_set ;;
  }
  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: customer_locale {
    type:string
    sql: ${TABLE}.customer_locale ;;
  }
  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;

  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;

  }
  dimension: financial_status {
    type: string
    sql: ${TABLE}.financial_status ;;
  }
  dimension:fulfillment_status {
    type: string
    sql: ${TABLE}.fulfillment_status ;;
  }
  dimension: landing_site_base_url {
    type: string
    sql: ${TABLE}.landing_site_base_url ;;

  }
  dimension: landing_site_ref {
    type: string
    sql: ${TABLE}.landing_site_ref ;;

  }
  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;

  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;

  }
  dimension: note {
    type: string
    sql: ${TABLE}.note ;;

  }
  dimension: note_attributes {
    type: string
    sql: ${TABLE}. ;;

  }
  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }
  dimension: order_number {
    type: number
    sql: ${TABLE}.order_number ;;
  }
  dimension: order_status_url {
    type: string
    sql: ${TABLE}.order_status_url ;;

  }
  dimension: original_total_duties_set {
    type: string
    sql: ${TABLE}.original_total_duties_set ;;

  }
  dimension: payment_gateway_names {
    type: string
    sql: ${TABLE}.payment_gateway_names ;;
  }
  dimension: presentment_currency {
    type: string
    sql: ${TABLE}.presentment_currency ;;
  }
  dimension: processed_at {
    type: date_millisecond
    sql: ${TABLE}.processed_at ;;
  }
  dimension: processing_method {
    type: string
    sql: ${TABLE}.processing_method ;;
  }
  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;

  }
  dimension: referring_site {
    type: string
    sql: ${TABLE}.referring_site ;;
  }
  dimension: shipping_address_address_1 {
    type: string
    sql: ${TABLE}.shipping_address_address_1 ;;
  }
  dimension: shipping_address_address_2 {
    type: string
    sql: ${TABLE}.shipping_address_address_2 ;;
  }
  dimension: shipping_address_city {
    type: string
    sql: ${TABLE}.shipping_address_city ;;
  }
  dimension: shipping_address_company {
    type: string
    sql: ${TABLE}.shipping_address_company ;;

  }
  dimension: shipping_address_country {
    map_layer_name: countries
    sql: ${TABLE}.shipping_address_country ;;
  }
  dimension: shipping_address_country_code {
    map_layer_name: uk_postcode_areas
    sql: ${TABLE}.shipping_address_country_code ;;
  }
  dimension: shipping_address_first_name {
    type: string
    sql: ${TABLE}.shipping_address_first_name ;;
  }
  dimension: shipping_address_id {
    type: string
    sql: ${TABLE}.shipping_address_id ;;

  }
  dimension: shipping_address_last_name {
    type: string
    sql: ${TABLE}.shipping_address_last_name ;;
  }
  dimension: shipping_address_location {
    type: location
    sql_latitude: ${TABLE}.shipping_address_latitude ;;
    sql_longitude: ${TABLE}.shipping_address_longitude  ;;
  }

  dimension: shipping_address_name {
    type: string
    sql: ${TABLE}.shipping_address_name ;;
  }
  dimension: shipping_address_phone {
    type: string
    sql: ${TABLE}.shipping_address_phone ;;

  }
  dimension:  shipping_address_province{
    map_layer_name: uk_postcode_areas
    sql: ${TABLE}.shipping_address_province ;;

  }
  dimension: shipping_address_province_code {
    map_layer_name: uk_postcode_areas
    sql: ${TABLE}.shipping_address_province_code ;;

  }
  dimension: shipping_address_zip {
    type: zipcode
    sql: ${TABLE}.shipping_address_zip ;;
  }
  dimension: source_identifier {
    type: string
    sql: ${TABLE}.source_identifier ;;

  }
  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }
  dimension: source_url {
    type: string
    sql: ${TABLE}.source_url ;;

  }
  dimension: subtotal_price {
    type: number
    sql: ${TABLE}.subtotal_price ;;
    value_format_name: gbp_0
  }
  dimension: subtotal_price_set {
    type: string
    sql: ${TABLE}.subtotal_price_set ;;
  }
  dimension: taxes_included {
    type: yesno
    sql: ${TABLE}.taxes_included ;;

  }
  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }
  dimension: total_discounts {
    type: number
    sql: ${TABLE}.total_discounts ;;
    value_format_name: gbp_0
  }
  dimension: total_discounts_set {
    type: number
    sql: ${TABLE}.total_discounts_set ;;

  }
  dimension: total_line_items_price {
    type: number
    sql: ${TABLE}.total_line_items_price ;;
    value_format_name: gbp_0
  }
  dimension: total_line_items_price_set {
    type: string
    sql: ${TABLE}.total_line_items_price_set ;;

  }
  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
    value_format_name: gbp_0
  }
  dimension: total_price_set {
    type: string
    sql: ${TABLE}.total_price_set ;;

  }
  dimension: total_price_usd {
    type: number
    sql: ${TABLE}.total_price_usd ;;
    value_format_name: usd_0
  }
  dimension: total_shipping_price_set {
    type: string
    sql: ${TABLE}.total_shipping_price_set ;;

  }
  dimension: total_tax {
    type: number
    sql: ${TABLE}.total_tax ;;
    value_format_name: gbp_0
  }
  dimension: total_tax_set {
    type: string
    sql: ${TABLE}.total_tax_set ;;

  }
  dimension: total_tip_received {
    type: number
    sql: ${TABLE}.total_tip_received ;;
    value_format_name: gbp_0
  }
  dimension: total_weight {
    type: number
    sql: ${TABLE}.total_weight ;;
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
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [order_details*]
  }
  measure: total_revenue{
    type: sum
    sql: ${total_price} ;;
    value_format_name: gbp_0
    drill_fields: [order_details*]
  }
  measure: average_revenue {
    type: average
    sql: ${total_price} ;;
    value_format_name: gbp_0
    drill_fields: [order_details*]
  }
  set: order_details {
    fields: [
      id,
      financial_status,
      fulfillment_status,
      average_revenue,
      total_revenue
    ]
  }

}

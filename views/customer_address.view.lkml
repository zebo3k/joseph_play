view:customer_address {
  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
    primary_key: yes
  }
  dimension_group: _fivetran_synced {
    type:time
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
  dimension: address_1 {
    type:string
    sql: ${TABLE}.address_1 ;;
  }
  dimension:  address_2{
    type: string
    sql: ${TABLE}.address_2 ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }
  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }
  dimension: country_code {
    map_layer_name: countries
    sql: ${TABLE}.country_code ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: is_default {
    type: yesno
    sql: ${TABLE}.is_default ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: customer_address_location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude  ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: province {
    type: zipcode
    sql: ${TABLE}.province ;;
  }
  dimension: province_code {
    type: zipcode
    sql: ${TABLE}.province_code ;;
  }
  dimension: zip {
    type:zipcode
    sql: ${TABLE}.zip ;;
  }
  measure: count {
    type: count
  }

}

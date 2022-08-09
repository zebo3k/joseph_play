view: ads_insights_hourly_advertiser {
  sql_table_name: `facebook.ads_insights_hourly_advertiser`
    ;;

  dimension_group: _sdc_batched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_extracted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_extracted_at ;;
  }

  dimension_group: _sdc_received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: account_currency {
    type: string
    sql: ${TABLE}.account_currency ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: action_values {
    hidden: yes
    sql: ${TABLE}.action_values ;;
  }

  dimension: actions {
    hidden: yes
    sql: ${TABLE}.actions ;;
  }

  dimension: ad_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}.ad_name ;;
  }

  dimension: adset_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.adset_id ;;
  }

  dimension: adset_name {
    type: string
    sql: ${TABLE}.adset_name ;;
  }

  dimension: buying_type {
    type: string
    sql: ${TABLE}.buying_type ;;
  }

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: clicks {
    type: string
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost_per_inline_link_click {
    type: string
    sql: ${TABLE}.cost_per_inline_link_click ;;
  }

  dimension: cost_per_inline_post_engagement {
    type: string
    sql: ${TABLE}.cost_per_inline_post_engagement ;;
  }

  dimension: cpc {
    type: string
    sql: ${TABLE}.cpc ;;
  }

  dimension: cpm {
    type: string
    sql: ${TABLE}.cpm ;;
  }

  dimension: ctr {
    type: string
    sql: ${TABLE}.ctr ;;
  }

  dimension_group: date_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_start ;;
  }

  dimension_group: date_stop {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_stop ;;
  }

  dimension: hourly_stats_aggregated_by_advertiser_time_zone {
    type: string
    sql: ${TABLE}.hourly_stats_aggregated_by_advertiser_time_zone ;;
  }

  dimension: impressions {
    type: string
    sql: ${TABLE}.impressions ;;
  }

  dimension: inline_link_click_ctr {
    type: string
    sql: ${TABLE}.inline_link_click_ctr ;;
  }

  dimension: inline_link_clicks {
    type: string
    sql: ${TABLE}.inline_link_clicks ;;
  }

  dimension: inline_post_engagement {
    type: string
    sql: ${TABLE}.inline_post_engagement ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: optimization_goal {
    type: string
    sql: ${TABLE}.optimization_goal ;;
  }

  dimension: outbound_clicks {
    hidden: yes
    sql: ${TABLE}.outbound_clicks ;;
  }

  dimension: spend {
    type: string
    sql: ${TABLE}.spend ;;
  }

  dimension: website_ctr {
    hidden: yes
    sql: ${TABLE}.website_ctr ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      adset_name,
      campaign_name,
      account_name,
      ad_name,
      campaigns.name,
      campaigns.id,
      ads.created_time,
      ads.name,
      ads.source_ad_id,
      adsets.created_time,
      adsets.name,
      adsets.id
    ]
  }
}

view: ads_insights_hourly_advertiser__actions {
  dimension: ads_insights_hourly_advertiser__actions {
    type: string
    hidden: yes
    sql: ads_insights_hourly_advertiser__actions ;;
  }

  dimension: value___1d_click {
    type: number
    sql: ${TABLE}.value._1d_click ;;
    group_label: "Value"
    group_item_label: "1d Click"
  }

  dimension: value___1d_view {
    type: number
    sql: ${TABLE}.value._1d_view ;;
    group_label: "Value"
    group_item_label: "1d View"
  }

  dimension: value___28d_click {
    type: number
    sql: ${TABLE}.value._28d_click ;;
    group_label: "Value"
    group_item_label: "28d Click"
  }

  dimension: value___28d_view {
    type: number
    sql: ${TABLE}.value._28d_view ;;
    group_label: "Value"
    group_item_label: "28d View"
  }

  dimension: value___7d_click {
    type: number
    sql: ${TABLE}.value._7d_click ;;
    group_label: "Value"
    group_item_label: "7d Click"
  }

  dimension: value___7d_view {
    type: number
    sql: ${TABLE}.value._7d_view ;;
    group_label: "Value"
    group_item_label: "7d View"
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights_hourly_advertiser__website_ctr {
  dimension: ads_insights_hourly_advertiser__website_ctr {
    type: string
    hidden: yes
    sql: ads_insights_hourly_advertiser__website_ctr ;;
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights_hourly_advertiser__action_values {
  dimension: ads_insights_hourly_advertiser__action_values {
    type: string
    hidden: yes
    sql: ads_insights_hourly_advertiser__action_values ;;
  }

  dimension: value___1d_click {
    type: number
    sql: ${TABLE}.value._1d_click ;;
    group_label: "Value"
    group_item_label: "1d Click"
  }

  dimension: value___1d_view {
    type: number
    sql: ${TABLE}.value._1d_view ;;
    group_label: "Value"
    group_item_label: "1d View"
  }

  dimension: value___7d_click {
    type: number
    sql: ${TABLE}.value._7d_click ;;
    group_label: "Value"
    group_item_label: "7d Click"
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}

view: ads_insights_hourly_advertiser__outbound_clicks {
  dimension: ads_insights_hourly_advertiser__outbound_clicks {
    type: string
    hidden: yes
    sql: ads_insights_hourly_advertiser__outbound_clicks ;;
  }

  dimension: value__action_destination {
    type: string
    sql: ${TABLE}.value.action_destination ;;
    group_label: "Value"
    group_item_label: "Action Destination"
  }

  dimension: value__action_target_id {
    type: string
    sql: ${TABLE}.value.action_target_id ;;
    group_label: "Value"
    group_item_label: "Action Target ID"
  }

  dimension: value__action_type {
    type: string
    sql: ${TABLE}.value.action_type ;;
    group_label: "Value"
    group_item_label: "Action Type"
  }

  dimension: value__value {
    type: number
    sql: ${TABLE}.value.value ;;
    group_label: "Value"
    group_item_label: "Value"
  }
}
view: ads_insights_dma {
  sql_table_name: `facebook.ads_insights_dma`
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
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: cost_per_inline_link_click {
    type: number
    sql: ${TABLE}.cost_per_inline_link_click ;;
  }

  dimension: cost_per_inline_post_engagement {
    type: number
    sql: ${TABLE}.cost_per_inline_post_engagement ;;
  }

  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }

  dimension: ctr {
    type: number
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

  dimension: dma {
    type: string
    sql: ${TABLE}.dma ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.frequency ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: inline_link_clicks {
    type: number
    sql: ${TABLE}.inline_link_clicks ;;
  }

  dimension: inline_post_engagement {
    type: number
    sql: ${TABLE}.inline_post_engagement ;;
  }

  dimension: objective {
    type: string
    sql: ${TABLE}.objective ;;
  }

  dimension: outbound_clicks {
    hidden: yes
    sql: ${TABLE}.outbound_clicks ;;
  }

  dimension: reach {
    type: number
    sql: ${TABLE}.reach ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }

  dimension: unique_actions {
    hidden: yes
    sql: ${TABLE}.unique_actions ;;
  }

  dimension: unique_clicks {
    type: number
    sql: ${TABLE}.unique_clicks ;;
  }

  dimension: unique_outbound_clicks {
    hidden: yes
    sql: ${TABLE}.unique_outbound_clicks ;;
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

view: ads_insights_dma__actions {
  dimension: ads_insights_dma__actions {
    type: string
    hidden: yes
    sql: ads_insights_dma__actions ;;
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

view: ads_insights_dma__website_ctr {
  dimension: ads_insights_dma__website_ctr {
    type: string
    hidden: yes
    sql: ads_insights_dma__website_ctr ;;
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

view: ads_insights_dma__action_values {
  dimension: ads_insights_dma__action_values {
    type: string
    hidden: yes
    sql: ads_insights_dma__action_values ;;
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

view: ads_insights_dma__unique_actions {
  dimension: ads_insights_dma__unique_actions {
    type: string
    hidden: yes
    sql: ads_insights_dma__unique_actions ;;
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

view: ads_insights_dma__outbound_clicks {
  dimension: ads_insights_dma__outbound_clicks {
    type: string
    hidden: yes
    sql: ads_insights_dma__outbound_clicks ;;
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

view: ads_insights_dma__unique_outbound_clicks {
  dimension: ads_insights_dma__unique_outbound_clicks {
    type: string
    hidden: yes
    sql: ads_insights_dma__unique_outbound_clicks ;;
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
view: vendor {
  derived_table: {
    explore_source: order_line {
      column: vendor { field: product.vendor }
      column: total_lifetime_revenue {}
      column: count_items {}
      filters: {
        field: order.created_at_date
        value: "30 days"
      }
    }
    datagroup_trigger: default_data_group

  }
  dimension: vendor {
    description: ""
  }
  dimension: total_lifetime_revenue {
    description: ""
    value_format_name: gbp
    type: number
  }
  dimension: count_items {
    description: ""
    type: number
  }

}

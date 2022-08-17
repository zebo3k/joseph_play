# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: sales_and_orders_over_time {
    derived_table: {
      explore_source: order_line {
        column: total_revenue { field: order.total_revenue }
        column: count { field: order.count }
        column: created_at_month { field: order.created_at_month }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger: default_data_group
    }
    dimension: total_revenue {
      description: ""
      value_format_name: gbp
      type: number
    }
    dimension: count {
      description: ""
      type: number
    }
    dimension: created_at_month {
      description: ""
      type: date_month
    }
  }

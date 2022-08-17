# If necessary, uncomment the line below to include explore_source.

# include: "ecommerce.model.lkml"

  view: new_vs_repeat_customer_count_over_time {
    derived_table: {
      explore_source: order_line {
        column: created_at_month { field: order.created_at_month }
        column: count { field: order.count }
        column: new_vs_repeat { field: customer.new_vs_repeat }
        filters: {
          field: order.created_at_date
          value: "30 days"
        }
      }
      datagroup_trigger: default_data_group
    }
    dimension: created_at_month {
      description: ""
      type: date_month
    }
    dimension: count {
      description: ""
      type: number
    }
    dimension: new_vs_repeat {
      description: ""
    }
  }
